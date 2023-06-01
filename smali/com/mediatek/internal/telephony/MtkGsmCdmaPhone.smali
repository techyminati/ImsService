.class public Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
.super Lcom/android/internal/telephony/GsmCdmaPhone;
.source "MtkGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;,
        Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;,
        Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    }
.end annotation


# static fields
.field public static final ACT_TYPE_GSM:Ljava/lang/String; = "0"

.field public static final ACT_TYPE_LTE:Ljava/lang/String; = "7"

.field public static final ACT_TYPE_NR:Ljava/lang/String; = "11"

.field public static final ACT_TYPE_UTRAN:Ljava/lang/String; = "2"

.field private static final CFB_KEY:Ljava/lang/String; = "CFB"

.field private static final CFNRC_KEY:Ljava/lang/String; = "CFNRC"

.field private static final CFNR_KEY:Ljava/lang/String; = "CFNR"

.field private static final CFU_TIME_SLOT:Ljava/lang/String; = "persist.vendor.radio.cfu.timeslot."

.field private static final DBG:Z = true

.field protected static final EVENT_CIPHER_INDICATION:I = 0x3e8

.field protected static final EVENT_CRSS_IND:I = 0x3eb

.field protected static final EVENT_GET_APC_INFO:I = 0x3e9

.field public static final EVENT_GET_CALL_BARRING_COMPLETE:I = 0x7d6

.field public static final EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE:I = 0x6d

.field public static final EVENT_GET_CALL_WAITING_DONE:I = 0x12d

.field public static final EVENT_GET_CLIR_COMPLETE:I = 0x7d4

.field public static final EVENT_IMS_UT_CSFB:I = 0x7d1

.field public static final EVENT_IMS_UT_DONE:I = 0x7d0

.field protected static final EVENT_MTK_BASE:I = 0x3e8

.field protected static final EVENT_OEM_RAW_URC:I = 0x3ed

.field public static final EVENT_SET_CALL_BARRING_COMPLETE:I = 0x7d5

.field public static final EVENT_SET_CALL_FORWARD_TIME_SLOT_DONE:I = 0x6e

.field public static final EVENT_SET_CALL_WAITING_DONE:I = 0x12e

.field protected static final EVENT_SET_SS_PROPERTY:I = 0x3ec

.field protected static final EVENT_SSN_EX:I = 0x3ea

.field protected static final EVENT_TURN_OFF_WIFI:I = 0x3ee

.field public static final EVENT_UNSOL_RADIO_CAPABILITY_CHANGED:I = 0x6f

.field public static final GSM_INDICATOR:Ljava/lang/String; = "2G"

.field public static final IMS_DEREG_OFF:Ljava/lang/String; = "0"

.field public static final IMS_DEREG_ON:Ljava/lang/String; = "1"

.field public static final IMS_DEREG_PROP:Ljava/lang/String; = "vendor.gsm.radio.ss.imsdereg"

.field public static final LOG_TAG:Ljava/lang/String; = "MtkGsmCdmaPhone"

.field public static final LTE_INDICATOR:Ljava/lang/String; = "4G"

.field public static final MESSAGE_SET_CF:I = 0x1

.field public static final MTK_SVLTE_SUPPORT:Z

.field public static final NR_INDICATOR:Ljava/lang/String; = "5G"

.field public static final NT_MODE_LTE_GSM:I = 0x65

.field public static final NT_MODE_LTE_TDD_ONLY:I = 0x66

.field private static final OPERATION_TIME_OUT_MILLIS:I = 0xbb8

.field private static final PROPERTY_DISABLE_AUTO_RETURN_RPLMN:Ljava/lang/String; = "persist.vendor.radio.disable_auto_return_rplmn"

.field private static final PROPERTY_MODE_BOOL:I = 0x1

.field private static final PROPERTY_MODE_INT:I = 0x0

.field private static final PROPERTY_MODE_STRING:I = 0x2

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final PROPERTY_WFC_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.wfc.enable"

.field private static final PROP_MTK_CDMA_LTE_MODE:Ljava/lang/String; = "ro.vendor.mtk_c2k_lte_mode"

.field private static final PROP_VZW_DEVICE_TYPE:Ljava/lang/String; = "persist.vendor.vzw_device_type"

.field public static final REASON_DATA_ALLOWED:Ljava/lang/String; = "dataAllowed"

.field public static final REASON_FDN_DISABLED:Ljava/lang/String; = "FdnDisabled"

.field public static final REASON_FDN_ENABLED:Ljava/lang/String; = "FdnEnabled"

.field public static final REASON_MD_DATA_RETRY_COUNT_RESET:Ljava/lang/String; = "modemDataCountReset"

.field public static final REASON_PCSCF_ADDRESS_FAILED:Ljava/lang/String; = "pcscfFailed"

.field public static final REASON_RA_FAILED:Ljava/lang/String; = "raFailed"

.field public static final REASON_RESUME_PENDING_DATA:Ljava/lang/String; = "resumePendingData"

.field private static final SS_SERVICE_CLASS_PROP:Ljava/lang/String; = "vendor.gsm.radio.ss.sc"

.field public static final TBCW_NOT_VOLTE_USER:I = 0x2

.field public static final TBCW_UNKNOWN:I = 0x0

.field public static final TBCW_VOLTE_USER:I = 0x1

.field public static final TBCW_WITH_CS:I = 0x3

.field public static final UTRAN_INDICATOR:Ljava/lang/String; = "3G"


# instance fields
.field private enableFakeSS:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCSFallbackMode:I

.field private mCachedCrssn:Landroid/os/AsyncResult;

.field private mCachedSsn:Landroid/os/AsyncResult;

.field mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private mCallbackLatch:Ljava/util/concurrent/CountDownLatch;

.field protected final mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

.field private mEccRadioOnStatus:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIsEccSelectedPhone:Z

.field private final mLock:Ljava/lang/Object;

.field public mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

.field private mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

.field public mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

.field private mNewVoiceTech:I

.field protected final mOemIndRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private mScbmManager:Lcom/mediatek/internal/telephony/scbm/ISCBMManager;

.field private mSelfActInstance:Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

.field private mSsOverCdma:Z

.field private mTbcwMode:I

.field mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

.field private mWifiIsEnabledBeforeE911:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 326
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 334
    const-string v0, "ro.vendor.mtk_c2k_lte_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    move v1, v2

    :cond_19
    sput-boolean v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->MTK_SVLTE_SUPPORT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 476
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 477
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I
    .param p6, "precisePhoneType"    # I
    .param p7, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 430
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNewVoiceTech:I

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mLock:Ljava/lang/Object;

    .line 237
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 293
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 297
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 299
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 303
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mEccRadioOnStatus:Z

    .line 304
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsEccSelectedPhone:Z

    .line 307
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSelfActInstance:Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    .line 309
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mScbmManager:Lcom/mediatek/internal/telephony/scbm/ISCBMManager;

    .line 375
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    .line 378
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 382
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    .line 385
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    .line 399
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->enableFakeSS:Z

    .line 405
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 408
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mOemIndRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 545
    new-instance v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2270
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsOverCdma:Z

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor: sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    move-object v1, p2

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 435
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 438
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 439
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->starThread()V

    .line 443
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "telephonyCustomizationFactory":Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;
    nop

    .line 448
    invoke-static {p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    .line 449
    nop

    .line 450
    invoke-virtual {v0, p5}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeSelfActivationInstance(I)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSelfActInstance:Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    .line 451
    nop

    .line 452
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;->setContext(Landroid/content/Context;)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    move-result-object v1

    .line 453
    invoke-interface {v1, p2}, Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;->setCommandsInterface(Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    move-result-object v1

    .line 454
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;->buildParams()Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    .line 458
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    if-nez v1, :cond_ab

    .line 459
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->makeCpaDcTracker(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 460
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDcTrackerInstance()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 465
    :cond_ab
    invoke-virtual {v0, p1, p5, p2}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeSCBMManager(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/scbm/ISCBMManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mScbmManager:Lcom/mediatek/internal/telephony/scbm/ISCBMManager;

    .line 468
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 470
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsCarrierNrSupported:Z

    .line 471
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 227
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUsimCard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 227
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    return v0
.end method

.method private getCallForwardingOptionCdmaCs(Landroid/os/Message;Ljava/lang/String;)V
    .registers 5
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "additional"    # Ljava/lang/String;

    .line 2478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardingOptionCdmaCs, case:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->makeEmptyCallForward()[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2480
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2481
    return-void
.end method

.method private getCallWaitingCdmaCs(Landroid/os/Message;Ljava/lang/String;)V
    .registers 5
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "additional"    # Ljava/lang/String;

    .line 3456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallWaitingCdmaCs, case:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    .line 3458
    .local v0, "arr":[I
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3459
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3460
    return-void

    :array_24
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private getMainCapabilityPhoneId()I
    .registers 3

    .line 5004
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 5005
    .local v0, "phoneId":I
    if-ltz v0, :cond_14

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_15

    .line 5006
    :cond_14
    const/4 v0, -0x1

    .line 5008
    :cond_15
    return v0
.end method

.method private handleCfuInTimeSlotQueryResult([Lcom/mediatek/internal/telephony/MtkCallForwardInfo;)V
    .registers 8
    .param p1, "infos"    # [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 2925
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2926
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_3a

    .line 2927
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_36

    array-length v3, p1

    if-nez v3, :cond_12

    goto :goto_36

    .line 2932
    :cond_12
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, p1

    .local v4, "s":I
    :goto_14
    if-ge v3, v4, :cond_3a

    .line 2933
    aget-object v5, p1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_33

    .line 2934
    aget-object v5, p1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    if-ne v5, v2, :cond_24

    move v1, v2

    :cond_24
    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2936
    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->saveTimeSlot([J)V

    .line 2937
    goto :goto_3a

    .line 2932
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2930
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_36
    :goto_36
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2942
    :cond_3a
    :goto_3a
    return-void
.end method

.method private handleImsUtCsfb(Landroid/os/Message;)V
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    .line 4167
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    .line 4168
    .local v10, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v10, :cond_13

    .line 4169
    const-string v0, "handleImsUtCsfb: Error MtkSuppSrvRequest null!"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    return-void

    .line 4173
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v0

    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_166

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v0

    if-eqz v0, :cond_24

    goto/16 :goto_166

    .line 4192
    :cond_24
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getRequestCode()I

    move-result v12

    .line 4193
    .local v12, "requestCode":I
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4194
    packed-switch v12, :pswitch_data_18c

    .line 4280
    :pswitch_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsUtCsfb: invalid requestCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15d

    .line 4268
    :pswitch_46
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4269
    .local v2, "dialString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleImsUtCsfb: SUPP_SRV_REQ_MMI_CODE: dialString = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    :try_start_60
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    :try_end_6c
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_60 .. :try_end_6c} :catch_6e

    .line 4276
    goto/16 :goto_15d

    .line 4273
    :catch_6e
    move-exception v0

    .line 4274
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v3, "handleImsUtCsfb: SUPP_SRV_REQ_MMI_CODE: CallStateException!"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    .line 4277
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    goto/16 :goto_15d

    .line 4233
    .end local v2    # "dialString":Ljava/lang/String;
    :pswitch_79
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CW"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallWaitingInternal(Landroid/os/Message;)V

    .line 4235
    goto/16 :goto_15d

    .line 4239
    :pswitch_87
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CW"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4241
    .local v0, "enableState":I
    if-eqz v0, :cond_95

    goto :goto_96

    :cond_95
    move v2, v3

    :goto_96
    move v1, v2

    .line 4242
    .local v1, "enable":Z
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallWaitingInternal(ZLandroid/os/Message;)V

    .line 4243
    goto/16 :goto_15d

    .line 4197
    .end local v0    # "enableState":I
    .end local v1    # "enable":Z
    :pswitch_a0
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CF"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4199
    .local v0, "commandInterfaceCFReason":I
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4200
    .local v1, "serviceClass":I
    nop

    .line 4201
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v2

    .line 4200
    invoke-virtual {v8, v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOptionInternal(IILandroid/os/Message;)V

    .line 4202
    goto/16 :goto_15d

    .line 4206
    .end local v0    # "commandInterfaceCFReason":I
    .end local v1    # "serviceClass":I
    :pswitch_bb
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CF"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4208
    .local v0, "commandInterfaceCFAction":I
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 4209
    .local v13, "commandInterfaceCFReason":I
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4210
    .local v14, "dialingNumber":Ljava/lang/String;
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 4211
    .local v15, "timerSeconds":I
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 4212
    .local v16, "serviceClass":I
    nop

    .line 4214
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v7

    .line 4212
    move-object/from16 v1, p0

    move v2, v0

    move v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingOptionInternal(IILjava/lang/String;IILandroid/os/Message;)V

    .line 4215
    goto/16 :goto_15d

    .line 4247
    .end local v0    # "commandInterfaceCFAction":I
    .end local v13    # "commandInterfaceCFReason":I
    .end local v14    # "dialingNumber":Ljava/lang/String;
    .end local v15    # "timerSeconds":I
    .end local v16    # "serviceClass":I
    :pswitch_f0
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CB"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4249
    .local v0, "facility":Ljava/lang/String;
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4250
    .local v1, "password":Ljava/lang/String;
    iget-object v2, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4251
    .local v2, "serviceClass":I
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallBarringInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 4252
    goto :goto_15d

    .line 4256
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "serviceClass":I
    :pswitch_10f
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CB"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4258
    .restart local v0    # "facility":Ljava/lang/String;
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4259
    .local v7, "enableState":I
    if-eqz v7, :cond_123

    move v3, v2

    .line 4260
    .local v3, "enable":Z
    :cond_123
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4261
    .local v13, "password":Ljava/lang/String;
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 4262
    .local v14, "serviceClass":I
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v5

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v4, v13

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallBarringInternal(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 4264
    goto :goto_15d

    .line 4219
    .end local v0    # "facility":Ljava/lang/String;
    .end local v3    # "enable":Z
    .end local v7    # "enableState":I
    .end local v13    # "password":Ljava/lang/String;
    .end local v14    # "serviceClass":I
    :pswitch_13c
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CLIR"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOutgoingCallerIdDisplayInternal(Landroid/os/Message;)V

    .line 4221
    goto :goto_15d

    .line 4225
    :pswitch_149
    const-string v0, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CLIR"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4226
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4227
    .local v0, "commandInterfaceCLIRMode":I
    nop

    .line 4228
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    .line 4227
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setOutgoingCallerIdDisplayInternal(ILandroid/os/Message;)V

    .line 4229
    nop

    .line 4284
    .end local v0    # "commandInterfaceCLIRMode":I
    :goto_15d
    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->setResultCallback(Landroid/os/Message;)V

    .line 4285
    iget-object v0, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4286
    return-void

    .line 4175
    .end local v12    # "requestCode":I
    :cond_166
    :goto_166
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v0

    .line 4176
    .local v0, "resultCallback":Landroid/os/Message;
    if-eqz v0, :cond_179

    .line 4177
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 4179
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {v0, v11, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4180
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4183
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_179
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-ne v1, v2, :cond_182

    .line 4184
    invoke-virtual {v8, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 4187
    :cond_182
    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->setResultCallback(Landroid/os/Message;)V

    .line 4188
    iget-object v1, v10, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4189
    return-void

    nop

    :pswitch_data_18c
    .packed-switch 0x3
        :pswitch_149
        :pswitch_13c
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_10f
        :pswitch_f0
        :pswitch_bb
        :pswitch_a0
        :pswitch_87
        :pswitch_79
        :pswitch_46
    .end packed-switch
.end method

.method private handleImsUtDone(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 4030
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 4033
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_e

    .line 4034
    const-string v2, "EVENT_IMS_UT_DONE: Error AsyncResult null!"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    return-void

    .line 4038
    :cond_e
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    .line 4040
    .local v2, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    if-nez v2, :cond_1b

    .line 4041
    const-string v3, "EVENT_IMS_UT_DONE: Error SuppSrvRequest null!"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1be

    .line 4043
    :cond_1b
    const/4 v3, 0x0

    .line 4044
    .local v3, "cmdException":Lcom/android/internal/telephony/CommandException;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2b

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_2b

    .line 4045
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v3, v4

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 4048
    :cond_2b
    const/16 v4, 0x7d1

    if-eqz v3, :cond_74

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_74

    .line 4050
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 4051
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 4052
    const-string v4, "UT_XCAP_403_FORBIDDEN."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 4055
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    .line 4056
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_5f

    .line 4057
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4058
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4060
    :cond_5f
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_1be

    .line 4062
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_66
    const-string v5, "Csfallback next_reboot."

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    invoke-virtual {p0, v4, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4064
    .local v1, "msgCSFB":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 4065
    .end local v1    # "msgCSFB":Landroid/os/Message;
    goto/16 :goto_1be

    .line 4066
    :cond_74
    if-eqz v3, :cond_bb

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_bb

    .line 4068
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 4069
    const-string v4, "CommandException.Error.UT_UNKNOWN_HOST."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 4072
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    .line 4073
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_a2

    .line 4074
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4075
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4077
    :cond_a2
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_1be

    .line 4079
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_a9
    const-string v5, "Csfallback once."

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 4081
    invoke-virtual {p0, v4, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4082
    .local v1, "msgCSFB":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 4083
    .end local v1    # "msgCSFB":Landroid/os/Message;
    goto/16 :goto_1be

    .line 4085
    :cond_bb
    if-eqz v3, :cond_ed

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_ed

    .line 4090
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTransferXcap404()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 4091
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getRequestCode()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_db

    .line 4092
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getRequestCode()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_e2

    .line 4093
    :cond_db
    const-string v4, "GSMPhone get UT_XCAP_404_NOT_FOUND."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a9

    .line 4095
    :cond_e2
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_1a9

    .line 4098
    :cond_ed
    if-eqz v3, :cond_114

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_114

    .line 4101
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v4

    if-nez v4, :cond_10d

    .line 4103
    const-string v4, "GSMPhone get UT_XCAP_409_CONFLICT, return GENERIC_FAILURE"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_1a9

    .line 4108
    :cond_10d
    const-string v4, "GSMPhone get UT_XCAP_409_CONFLICT."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a9

    .line 4110
    :cond_114
    if-eqz v3, :cond_13b

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_13b

    .line 4112
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v4

    if-nez v4, :cond_134

    .line 4114
    const-string v4, "GSMPhone get UT_XCAP_412_PRECONDITION_FAILED, return GENERIC_FAILURE"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_1a9

    .line 4119
    :cond_134
    const-string v4, "GSMPhone get UT_XCAP_412_PRECONDITION_FAILED."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a9

    .line 4121
    :cond_13b
    if-eqz v3, :cond_160

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_160

    .line 4123
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v4

    if-nez v4, :cond_15a

    .line 4125
    const-string v4, "GSMPhone get UT_XCAP_415_UNSUPPORTED_MEDIA_TYPE, return GENERIC_FAILURE"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1a9

    .line 4130
    :cond_15a
    const-string v4, "GSMPhone get UT_XCAP_415_UNSUPPORTED_MEDIA_TYPE."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a9

    .line 4132
    :cond_160
    if-eqz v3, :cond_185

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_185

    .line 4134
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v4

    if-nez v4, :cond_17f

    .line 4136
    const-string v4, "GSMPhone get UT_XCAP_500_INTERNAL_SERVER_ERROR, return GENERIC_FAILURE"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1a9

    .line 4141
    :cond_17f
    const-string v4, "GSMPhone get UT_XCAP_500_INTERNAL_SERVER_ERROR."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a9

    .line 4143
    :cond_185
    if-eqz v3, :cond_1a9

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_1a9

    .line 4145
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v4

    if-nez v4, :cond_1a4

    .line 4147
    const-string v4, "GSMPhone get UT_XCAP_503_SERVICE_UNAVAILABLE, return GENERIC_FAILURE"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1a9

    .line 4152
    :cond_1a4
    const-string v4, "GSMPhone get UT_XCAP_503_SERVICE_UNAVAILABLE."

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    :cond_1a9
    :goto_1a9
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    .line 4157
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_1b9

    .line 4158
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4159
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4161
    :cond_1b9
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 4164
    .end local v1    # "onComplete":Landroid/os/Message;
    .end local v3    # "cmdException":Lcom/android/internal/telephony/CommandException;
    :goto_1be
    return-void
.end method

.method private handleUdubIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 5
    .param p1, "dialString"    # Ljava/lang/String;

    .line 2055
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    .line 2056
    const/4 v0, 0x0

    return v0

    .line 2059
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_21

    .line 2060
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_2d

    .line 2061
    :cond_21
    const-string v0, "MtkGsmCdmaPhone"

    const-string v2, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    .line 2066
    :cond_2d
    return v1
.end method

.method private hasC2kOverImsModem()Z
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 241
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasC2kOverImsModem()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b

    .line 242
    return v2

    .line 244
    :cond_1b
    return v1
.end method

.method private initTbcwMode()V
    .registers 5

    .line 3207
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    const-string v1, "MtkGsmCdmaPhone"

    if-eqz v0, :cond_c

    .line 3208
    const-string v0, "initTbcwMode, mTbcwMode is not UNKNOWN, no need to init"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    return-void

    .line 3213
    :cond_c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 3214
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_30

    .line 3219
    :cond_25
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3231
    return-void

    .line 3215
    :cond_30
    :goto_30
    const-string v2, "initTbcwMode, IccCard is not ready. mTbcwMode ramains UNKNOWN"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    return-void
.end method

.method private isAllowXcapIfDataEnabled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 4943
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4944
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const/4 v1, 0x0

    const-string v2, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4945
    const-string v3, "isAllowXcapIfDataEnabled, ssConf is null, return false"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    return v1

    .line 4949
    :cond_13
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNeedCheckDataEnabled(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1b

    .line 4950
    return v4

    .line 4953
    :cond_1b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 4954
    const-string v1, "isAllowXcapIfDataEnabled: true"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4955
    return v4

    .line 4958
    :cond_29
    const-string v3, "isAllowXcapIfDataEnabled: false"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4959
    return v1
.end method

.method private isAllowXcapIfDataRoaming(Ljava/lang/String;)Z
    .registers 7
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 4912
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4913
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const/4 v1, 0x0

    const-string v2, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4914
    const-string v3, "isAllowXcapIfDataRoaming, ssConf is null, return false"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4915
    return v1

    .line 4928
    :cond_13
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_24

    .line 4929
    const-string v1, "isAllowXcapIfDataRoaming: true (not roaming state)"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    return v4

    .line 4933
    :cond_24
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNeedCheckDataRoaming(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 4934
    const-string v1, "isAllowXcapIfDataRoaming: true (ignore roaming state)"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4935
    return v4

    .line 4938
    :cond_30
    const-string v3, "isAllowXcapIfDataRoaming: false (roaming state, block SS)"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    return v1
.end method

.method private isCallbackDone()Z
    .registers 6

    .line 5463
    const/4 v0, 0x0

    .line 5466
    .local v0, "isDone":Z
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallbackLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v1

    .line 5470
    goto :goto_f

    .line 5468
    :catch_d
    move-exception v1

    .line 5469
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    .line 5472
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForCallback: isDone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5473
    return v0
.end method

.method private isCardSupportCdma(I)Z
    .registers 7
    .param p1, "slotId"    # I

    .line 2334
    const/4 v0, 0x0

    .line 2335
    .local v0, "isSupportCdma":Z
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSupportCardType(I)[Ljava/lang/String;

    move-result-object v1

    .line 2336
    .local v1, "type":[Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 2337
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_28

    .line 2338
    aget-object v3, v1, v2

    const-string v4, "RUIM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    aget-object v3, v1, v2

    const-string v4, "CSIM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_27

    .line 2337
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2339
    :cond_27
    :goto_27
    const/4 v0, 0x1

    .line 2345
    .end local v2    # "i":I
    :cond_28
    return v0
.end method

.method private isCdmaWithoutLteCard()Z
    .registers 3

    .line 644
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIccAppFamily(I)I

    move-result v0

    .line 646
    .local v0, "iccFamily":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 647
    const/4 v1, 0x1

    return v1

    .line 649
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private isIccCardMncMccAvailable(I)Z
    .registers 10
    .param p1, "phoneId"    # I

    .line 4585
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 4586
    .local v0, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 4587
    .local v2, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v3, 0x0

    const-string v4, "MtkGsmCdmaPhone"

    if-eqz v2, :cond_2b

    .line 4588
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 4589
    .local v5, "mccMnc":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIccCardMncMccAvailable(): mccMnc is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    if-eqz v5, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v3

    :goto_2a
    return v1

    .line 4592
    .end local v5    # "mccMnc":Ljava/lang/String;
    :cond_2b
    const-string v1, "isIccCardMncMccAvailable(): false"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4593
    return v3
.end method

.method private static isOP12()Z
    .registers 2

    .line 5803
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z
    .registers 3
    .param p1, "id"    # Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    .line 4447
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/MtkOperatorUtils;->isOperator(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    return v0
.end method

.method private isUsimCard()Z
    .registers 11

    .line 4411
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "USIM"

    const-string v2, "MtkGsmCdmaPhone"

    if-eqz v0, :cond_49

    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 4412
    const/4 v0, 0x0

    .line 4413
    .local v0, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 4414
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v3

    .line 4415
    .local v3, "iccCardType":Ljava/lang/String;
    if-eqz v3, :cond_2c

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 4416
    const/4 v0, 0x1

    .line 4418
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsimCard: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    return v0

    .line 4421
    .end local v0    # "r":Z
    .end local v3    # "iccCardType":Ljava/lang/String;
    :cond_49
    const/4 v0, 0x0

    .line 4422
    .local v0, "prop":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4423
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 4424
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v5

    .line 4425
    .local v5, "slotId":I
    const/4 v6, 0x0

    if-ltz v5, :cond_b3

    sget-object v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v8, v7

    if-lt v5, v8, :cond_60

    goto :goto_b3

    .line 4428
    :cond_60
    aget-object v7, v7, v5

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4429
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7a

    .line 4430
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4432
    :cond_7a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isUsimCard PhoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cardType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4433
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4432
    invoke-static {v2, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    if-nez v3, :cond_a1

    .line 4435
    return v6

    .line 4437
    :cond_a1
    array-length v2, v3

    move v7, v6

    :goto_a3
    if-ge v7, v2, :cond_b2

    aget-object v8, v3, v7

    .line 4438
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_af

    .line 4439
    const/4 v1, 0x1

    return v1

    .line 4437
    .end local v8    # "s":Ljava/lang/String;
    :cond_af
    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    .line 4442
    :cond_b2
    return v6

    .line 4426
    :cond_b3
    :goto_b3
    return v6
.end method

.method private isUtError(Lcom/android/internal/telephony/CommandException$Error;)Z
    .registers 3
    .param p1, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 4625
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1f

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1f

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_4:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1f

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1f

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1f

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_1f

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_1d

    goto :goto_1f

    .line 4634
    :cond_1d
    const/4 v0, 0x0

    return v0

    .line 4632
    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    return v0
.end method

.method private isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z
    .registers 3
    .param p1, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 4645
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_17

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_17

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_17

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_17

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_15

    goto :goto_17

    .line 4652
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 4650
    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method private preCheckCpaDcTracker()Z
    .registers 4

    .line 5764
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MtkGsmCdmaPhone"

    if-nez v0, :cond_19

    .line 5765
    const-string v0, "not support CPA mode for this SIM"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5766
    return v1

    .line 5769
    :cond_19
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    if-nez v0, :cond_23

    .line 5770
    const-string v0, "can\'t get CpaDcTracker!"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    return v1

    .line 5773
    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method private setCallForwardOptionCdmaCs(IILjava/lang/String;Landroid/os/Message;Ljava/lang/String;)V
    .registers 13
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "additional"    # Ljava/lang/String;

    .line 2686
    invoke-static {p3}, Lcom/android/internal/telephony/GsmCdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2687
    .local v0, "formatNumber":Ljava/lang/String;
    nop

    .line 2689
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2687
    invoke-static {p1, p2, v0, v1}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode;->getCallForwardingPrefixAndNumberWithMccMnc(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2690
    .local v1, "cfNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallForwardOptionCdmaCs: dial for set call forwarding, case:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 2695
    .local v2, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2696
    .local v3, "extras":Landroid/os/Bundle;
    const-string v4, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2698
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 2699
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2701
    const/16 v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2702
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 2703
    return-void
.end method

.method private setCallWaitingCdmaCs(ZLandroid/os/Message;Ljava/lang/String;)V
    .registers 10
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "additional"    # Ljava/lang/String;

    .line 3732
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getCallWaitingPrefix(Z)Ljava/lang/String;

    move-result-object v0

    .line 3733
    .local v0, "cwPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallWaiting in CDMA : dial for set call waiting prefix= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", case:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 3737
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3738
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3740
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 3741
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3743
    const/16 v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3744
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3745
    return-void
.end method

.method private supportMdAutoSetupIms()Z
    .registers 4

    .line 4610
    const/4 v0, 0x0

    .line 4611
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4612
    const/4 v0, 0x1

    .line 4614
    :cond_10
    return v0
.end method

.method private tryTurnOffWifiForE911(Z)V
    .registers 10
    .param p1, "isEcc"    # Z

    .line 5267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 5268
    return-void

    .line 5270
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOP12()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5271
    return-void

    .line 5274
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 5275
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 5276
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 5277
    const-string v2, "mtk_carrier_turn_off_wifi_before_e911"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 5279
    .local v1, "turnOffWifiForEcc":Z
    const-string v2, "persist.vendor.mtk.wfc.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2f

    goto :goto_30

    :cond_2f
    move v4, v3

    :goto_30
    move v2, v4

    .line 5280
    .local v2, "isWfcEnabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryTurnOffWifiForEcc() carrierConfig: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isECC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isWfcEnable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkGsmCdmaPhone"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5282
    if-eqz p1, :cond_8c

    if-eqz v1, :cond_8c

    if-eqz v2, :cond_5e

    goto :goto_8c

    .line 5285
    :cond_5e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 5286
    .local v4, "wifiMngr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    .line 5287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryTurnOffWifiForEcc() wifiEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5288
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    if-eqz v5, :cond_8b

    .line 5289
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 5291
    :cond_8b
    return-void

    .line 5283
    .end local v4    # "wifiMngr":Landroid/net/wifi/WifiManager;
    :cond_8c
    :goto_8c
    return-void
.end method

.method private tryTurnOnWifiForE911Finished()V
    .registers 6

    .line 5294
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 5295
    return-void

    .line 5298
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOP12()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5299
    return-void

    .line 5302
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 5303
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 5304
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 5305
    const-string v2, "mtk_carrier_turn_off_wifi_before_e911"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 5307
    .local v1, "turnOffWifiForEcc":Z
    if-nez v1, :cond_27

    .line 5308
    return-void

    .line 5311
    :cond_27
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 5312
    .local v2, "wifiMngr":Landroid/net/wifi/WifiManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryTurnOnWifiForEcbmFinished() wifiEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    if-eqz v3, :cond_51

    .line 5314
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 5316
    :cond_51
    return-void
.end method


# virtual methods
.method public CPAChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 21
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "authType"    # I
    .param p6, "dns1"    # Ljava/lang/String;
    .param p7, "dns2"    # Ljava/lang/String;
    .param p8, "proxyHost"    # Ljava/lang/String;
    .param p9, "proxyPort"    # Ljava/lang/String;

    .line 5716
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->preCheckCpaDcTracker()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5717
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->CpaChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 5720
    :cond_1c
    move-object v0, p0

    const/4 v1, 0x3

    return v1
.end method

.method public abortFemtoCellList(Landroid/os/Message;)V
    .registers 4
    .param p1, "response"    # Landroid/os/Message;

    .line 790
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "abortFemtoCellList()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->abortFemtoCellList(Landroid/os/Message;)V

    .line 792
    return-void
.end method

.method public applyCFSharePreference(ILjava/lang/String;)Z
    .registers 12
    .param p1, "cfReason"    # I
    .param p2, "setNumber"    # Ljava/lang/String;

    .line 4717
    const/4 v0, 0x0

    .line 4718
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "MtkGsmCdmaPhone"

    packed-switch p1, :pswitch_data_f6

    .line 4729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No need to store cfreason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    return v1

    .line 4726
    :pswitch_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CFNRC_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4727
    goto :goto_64

    .line 4723
    :pswitch_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CFNR_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4724
    goto :goto_64

    .line 4720
    :pswitch_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CFB_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4721
    nop

    .line 4733
    :goto_64
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4734
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v3, :cond_74

    .line 4735
    const-string v4, "No iccRecords"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4736
    return v1

    .line 4739
    :cond_74
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v4

    .line 4741
    .local v4, "currentImsi":Ljava/lang/String;
    if-eqz v4, :cond_ef

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_81

    goto :goto_ef

    .line 4746
    :cond_81
    if-eqz p2, :cond_e9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8a

    goto :goto_e9

    .line 4751
    :cond_8a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 4752
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 4754
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4756
    .local v7, "content":Ljava/lang/String;
    if-eqz v7, :cond_e3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b3

    goto :goto_e3

    .line 4761
    :cond_b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    invoke-interface {v6, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4765
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4767
    const/4 v1, 0x1

    return v1

    .line 4757
    :cond_e3
    :goto_e3
    const-string v8, "imsi or content are empty or null."

    invoke-static {v2, v8}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    return v1

    .line 4747
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "content":Ljava/lang/String;
    :cond_e9
    :goto_e9
    const-string v5, "setNumber is empty"

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4748
    return v1

    .line 4742
    :cond_ef
    :goto_ef
    const-string v5, "currentImsi is empty"

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    return v1

    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_34
        :pswitch_1c
    .end packed-switch
.end method

.method public declared-synchronized cancelAvailableNetworks(Landroid/os/Message;)V
    .registers 4
    .param p1, "response"    # Landroid/os/Message;

    monitor-enter p0

    .line 769
    :try_start_1
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "cancelAvailableNetworks"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->cancelAvailableNetworks(Landroid/os/Message;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 771
    monitor-exit p0

    return-void

    .line 768
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .end local p1    # "response":Landroid/os/Message;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public changeCallBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 3977
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3978
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsCall()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3980
    if-eqz p4, :cond_22

    .line 3981
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3983
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x0

    invoke-static {p4, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3984
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 3985
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    goto :goto_22

    .line 3987
    :cond_1d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3994
    :cond_22
    :goto_22
    return-void

    .line 3990
    :cond_23
    const-string v0, "method changeBarringPassword is NOT supported in CDMA!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3991
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p4, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3992
    return-void
.end method

.method public checkUiccApplicationForCB()Lcom/android/internal/telephony/CommandException;
    .registers 3

    .line 3960
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_31

    .line 3961
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "checkUiccApplicationForCB: mUiccApplication.get() == null"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isRadioAvailable()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isRadioOn()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_24

    .line 3967
    :cond_1c
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 3964
    :cond_24
    :goto_24
    const-string v1, "checkUiccApplicationForCB: radio not available"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 3970
    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method public cleanCallForwardingIndicatorFromSharedPref()V
    .registers 2

    .line 5165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingIndicatorInSharedPref(Z)V

    .line 5166
    return-void
.end method

.method public clearCFSharePreference(I)V
    .registers 8
    .param p1, "cfReason"    # I

    .line 4681
    const/4 v0, 0x0

    .line 4682
    .local v0, "key":Ljava/lang/String;
    const-string v1, "MtkGsmCdmaPhone"

    packed-switch p1, :pswitch_data_b6

    .line 4693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No need to store cfreason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4694
    return-void

    .line 4690
    :pswitch_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CFNRC_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4691
    goto :goto_63

    .line 4687
    :pswitch_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CFNR_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4688
    goto :goto_63

    .line 4684
    :pswitch_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CFB_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4685
    nop

    .line 4697
    :goto_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read to clear the key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4699
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4700
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 4701
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4702
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-nez v4, :cond_a1

    .line 4703
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to commit the removal of CF preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 4705
    :cond_a1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Commit the removal of CF preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    :goto_b5
    return-void

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_33
        :pswitch_1b
    .end packed-switch
.end method

.method protected correctPhoneTypeForCdma(ZI)Z
    .registers 6
    .param p1, "matchCdma"    # Z
    .param p2, "newVoiceRadioTech"    # I

    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, "phoneTypeChanged":Z
    if-eqz p1, :cond_14

    .line 606
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 608
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    .line 609
    .local v1, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-eqz v1, :cond_13

    .line 610
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->setVoiceRadioTech(I)V

    .line 612
    :cond_13
    const/4 v0, 0x1

    .line 616
    .end local v1    # "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    :cond_14
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 617
    :cond_20
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 618
    :cond_2c
    const/4 v0, 0x0

    .line 620
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "correctPhoneTypeForCdma: change:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " newVoiceRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mActivePhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Ljava/util/function/Consumer;)Lcom/android/internal/telephony/Connection;
    .registers 28
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/telephony/Phone;",
            ">;)",
            "Lcom/android/internal/telephony/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 966
    .local p3, "chosenPhoneConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/telephony/Phone;>;"
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-nez v3, :cond_1b

    move-object/from16 v3, p2

    iget-object v4, v3, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    if-nez v4, :cond_13

    goto :goto_1d

    .line 967
    :cond_13
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "Sending UUS information NOT supported in CDMA!"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 966
    :cond_1b
    move-object/from16 v3, p2

    .line 969
    :goto_1d
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 971
    .local v4, "possibleEmergencyNumber":Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 972
    .local v5, "isDialedNumberSwapped":Z
    if-eqz v5, :cond_48

    .line 973
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialString replaced for possible emergency number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 975
    move-object v0, v4

    move-object v7, v0

    .end local p1    # "dialString":Ljava/lang/String;
    .local v0, "dialString":Ljava/lang/String;
    goto :goto_49

    .line 972
    .end local v0    # "dialString":Ljava/lang/String;
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_48
    move-object v7, v0

    .line 977
    .end local p1    # "dialString":Ljava/lang/String;
    .local v7, "dialString":Ljava/lang/String;
    :goto_49
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    const-class v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 978
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8, v7}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    .line 980
    .local v9, "isEmergency":Z
    invoke-static {v9}, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->setIsEmergencyNumber(Z)V

    .line 983
    const-string v0, "MtkGsmCdmaPhone"

    if-eqz v9, :cond_83

    .line 984
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOP12()Z

    move-result v10

    if-eqz v10, :cond_80

    .line 985
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 986
    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 987
    .local v10, "wifiMngr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v11

    iput-boolean v11, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    .line 988
    if-nez v11, :cond_7f

    .line 989
    const-string v11, "Turn on wifi radio for Vzw E911 CCP test"

    invoke-static {v0, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 992
    .end local v10    # "wifiMngr":Landroid/net/wifi/WifiManager;
    :cond_7f
    goto :goto_83

    .line 993
    :cond_80
    invoke-direct {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->tryTurnOffWifiForE911(Z)V

    .line 999
    :cond_83
    :goto_83
    if-eqz v7, :cond_9f

    const-string v11, "*272"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9d

    .line 1000
    const-string v11, "*31#*272"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9d

    .line 1001
    const-string v11, "#31#*272"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9f

    :cond_9d
    move v11, v6

    goto :goto_a0

    :cond_9f
    const/4 v11, 0x0

    .line 1004
    .local v11, "isWpsCall":Z
    :goto_a0
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v12

    .line 1005
    invoke-virtual {v12, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIsEmergency(Z)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 1006
    invoke-virtual {v12, v11}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIsWpsCall(Z)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v12

    .line 1007
    .local v12, "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    invoke-virtual {v12}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v13

    move-object v3, v13

    .end local p2    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .local v3, "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    iput-object v13, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 1009
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1012
    .local v13, "imsPhone":Lcom/android/internal/telephony/Phone;
    const/4 v14, 0x1

    .line 1013
    .local v14, "allowWpsOverIms":Z
    if-eqz v11, :cond_d2

    .line 1014
    iget-object v15, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 1015
    const-string v6, "carrier_config"

    invoke-virtual {v15, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CarrierConfigManager;

    .line 1018
    .local v6, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v15

    .line 1019
    const-string v10, "support_wps_over_ims_bool"

    invoke-virtual {v15, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 1023
    .end local v6    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_d2
    if-eqz v9, :cond_dc

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->useImsForEmergency()Z

    move-result v6

    if-eqz v6, :cond_dc

    const/4 v6, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v6, 0x0

    .line 1025
    .local v6, "useImsForEmergency":Z
    :goto_dd
    nop

    .line 1026
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1025
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1027
    .local v10, "dialPart":Ljava/lang/String;
    const-string v15, "*"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v16, v4

    .end local v4    # "possibleEmergencyNumber":Ljava/lang/String;
    .local v16, "possibleEmergencyNumber":Ljava/lang/String;
    const-string v4, "#"

    if-nez v15, :cond_f8

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_100

    .line 1028
    :cond_f8
    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    const/4 v4, 0x1

    goto :goto_101

    :cond_100
    const/4 v4, 0x0

    .line 1029
    .local v4, "isMmiCode":Z
    :goto_101
    invoke-static {v10, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSuppServiceCodes(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v15

    .line 1030
    .local v15, "isSuppServiceCode":Z
    if-eqz v4, :cond_10c

    if-nez v15, :cond_10c

    const/16 v17, 0x1

    goto :goto_10e

    :cond_10c
    const/16 v17, 0x0

    :goto_10e
    move/from16 p2, v17

    .line 1031
    .local p2, "isPotentialUssdCode":Z
    if-eqz v13, :cond_11b

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v17

    if-eqz v17, :cond_11b

    const/16 v17, 0x1

    goto :goto_11d

    :cond_11b
    const/16 v17, 0x0

    :goto_11d
    move/from16 v18, v17

    .line 1032
    .local v18, "useImsForUt":Z
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->useImsForCall(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Z

    move-result v17

    if-eqz v17, :cond_12c

    if-eqz v11, :cond_129

    if-eqz v14, :cond_12c

    :cond_129
    const/16 v17, 0x1

    goto :goto_12e

    :cond_12c
    const/16 v17, 0x0

    .line 1035
    .local v17, "useImsForCall":Z
    :goto_12e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->shouldProcessSelfActivation()Z

    move-result v19

    if-nez v19, :cond_140

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->useImsForPCOChanged()Z

    move-result v19

    if-eqz v19, :cond_13b

    goto :goto_140

    :cond_13b
    move-object/from16 v19, v8

    move/from16 v8, v17

    goto :goto_14b

    .line 1036
    :cond_140
    :goto_140
    move-object/from16 v19, v8

    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    .local v19, "tm":Landroid/telephony/TelephonyManager;
    const-string v8, "always use ImsPhone for self activation"

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1037
    const/16 v17, 0x1

    move/from16 v8, v17

    .line 1042
    .end local v17    # "useImsForCall":Z
    .local v8, "useImsForCall":Z
    :goto_14b
    move-object/from16 v17, v10

    .end local v10    # "dialPart":Ljava/lang/String;
    .local v17, "dialPart":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v12

    .end local v12    # "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .local v20, "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    const-string v12, "useImsForCall="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isEmergency="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", useImsForEmergency="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", useImsForUt="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v18

    .end local v18    # "useImsForUt":Z
    .local v12, "useImsForUt":Z
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v18, v5

    .end local v5    # "isDialedNumberSwapped":Z
    .local v18, "isDialedNumberSwapped":Z
    const-string v5, ", isUt="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isSuppServiceCode="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isPotentialUssdCode="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    .end local p2    # "isPotentialUssdCode":Z
    .local v5, "isPotentialUssdCode":Z
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 p2, v15

    .end local v15    # "isSuppServiceCode":Z
    .local p2, "isSuppServiceCode":Z
    const-string v15, ", isWpsCall="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", allowWpsOverIms="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", imsPhone="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", imsPhone.isVoiceOverCellularImsEnabled()="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    const-string v15, "N/A"

    if-eqz v13, :cond_1c4

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v23, v21

    move-object/from16 v21, v15

    move-object/from16 v15, v23

    goto :goto_1c6

    :cond_1c4
    move-object/from16 v21, v15

    :goto_1c6
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", imsPhone.isVowifiEnabled()="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    if-eqz v13, :cond_1d9

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_1db

    :cond_1d9
    move-object/from16 v15, v21

    :goto_1db
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", imsPhone.isVideoEnabled()="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    if-eqz v13, :cond_1ee

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_1f0

    :cond_1ee
    move-object/from16 v15, v21

    :goto_1f0
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", imsPhone.getServiceState().getState()="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    if-eqz v13, :cond_207

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_209

    :cond_207
    move-object/from16 v15, v21

    :goto_209
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1042
    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1064
    const/4 v10, 0x2

    if-nez v9, :cond_232

    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v15

    move/from16 v21, v9

    .end local v9    # "isEmergency":Z
    .local v21, "isEmergency":Z
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    move-object/from16 v22, v3

    .end local v3    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .local v22, "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    const-string v3, "wfc_ims_mode"

    invoke-static {v15, v3, v10, v9}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v3

    .line 1069
    .local v3, "setting":I
    if-nez v3, :cond_236

    .line 1070
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    iget v15, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v9, v15, v10}, Lcom/android/internal/telephony/Phone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/Phone;ILandroid/content/Context;)V

    goto :goto_236

    .line 1064
    .end local v21    # "isEmergency":Z
    .end local v22    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .local v3, "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .restart local v9    # "isEmergency":Z
    :cond_232
    move-object/from16 v22, v3

    move/from16 v21, v9

    .line 1074
    .end local v3    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .end local v9    # "isEmergency":Z
    .restart local v21    # "isEmergency":Z
    .restart local v22    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    :cond_236
    :goto_236
    if-eqz v13, :cond_254

    if-nez v14, :cond_254

    if-nez v8, :cond_254

    if-eqz v11, :cond_254

    .line 1075
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v3, :cond_254

    .line 1076
    const-string v3, "WPS call placed over CS; disconnecting all IMS calls.."

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 1078
    .local v3, "tracker":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangupAllConnections()V

    .line 1081
    .end local v3    # "tracker":Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    :cond_254
    if-eqz v8, :cond_25a

    if-eqz v4, :cond_260

    if-nez v5, :cond_260

    :cond_25a
    if-eqz v4, :cond_25e

    if-nez v12, :cond_260

    :cond_25e
    if-eqz v6, :cond_2ec

    .line 1086
    :cond_260
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInCSCall()Z

    move-result v3

    if-eqz v3, :cond_26f

    .line 1087
    const-string v3, "has CS Call. Don\'t try IMS PS Call!"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v22

    goto/16 :goto_2ee

    .line 1091
    :cond_26f
    :try_start_26f
    const-string v0, "Trying IMS PS call"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1092
    invoke-interface {v2, v13}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_277
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_26f .. :try_end_277} :catch_280

    .line 1093
    move-object/from16 v3, v22

    .end local v22    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .local v3, "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    :try_start_279
    invoke-virtual {v13, v7, v3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0
    :try_end_27d
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_279 .. :try_end_27d} :catch_27e

    return-object v0

    .line 1094
    :catch_27e
    move-exception v0

    goto :goto_283

    .end local v3    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .restart local v22    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    :catch_280
    move-exception v0

    move-object/from16 v3, v22

    .line 1095
    .end local v22    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    .restart local v3    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    :goto_283
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IMS PS call exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "useImsForCall ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", imsPhone ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1098
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->tryTurnOnWifiForE911Finished()V

    .line 1102
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "cs_fallback"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2ce

    if-eqz v21, :cond_2b9

    goto :goto_2ce

    .line 1106
    :cond_2b9
    new-instance v9, Lcom/android/internal/telephony/CallStateException;

    .line 1107
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getError()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v10, v15}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    .line 1108
    .local v9, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1109
    throw v9

    .line 1103
    .end local v9    # "ce":Lcom/android/internal/telephony/CallStateException;
    :cond_2ce
    :goto_2ce
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IMS call failed with Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Falling back to CS."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logi(Ljava/lang/String;)V

    goto :goto_2ee

    .line 1081
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v3    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .restart local v22    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    :cond_2ec
    move-object/from16 v3, v22

    .line 1119
    .end local v22    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .restart local v3    # "dialArgs":Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    :goto_2ee
    const-string v0, "vendor.gsm.gcf.testmode"

    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v9, 0x2

    if-eq v10, v9, :cond_322

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaLessDevice()Z

    move-result v9

    if-nez v9, :cond_322

    .line 1121
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v9, :cond_322

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_322

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1122
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v9

    if-eqz v9, :cond_322

    if-eqz v21, :cond_31a

    goto :goto_322

    .line 1124
    :cond_31a
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v9, "cannot dial in current state"

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1129
    :cond_322
    :goto_322
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v9, :cond_34b

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_34b

    iget v9, v3, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1130
    invoke-static {v9}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v9

    if-nez v9, :cond_34b

    if-nez v21, :cond_34b

    if-eqz v4, :cond_33f

    if-nez v12, :cond_34b

    :cond_33f
    if-eqz v5, :cond_342

    goto :goto_34b

    .line 1135
    :cond_342
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v9, "cannot dial voice call in airplane mode"

    const/4 v10, 0x2

    invoke-direct {v0, v10, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1143
    :cond_34b
    :goto_34b
    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v9, 0x2

    if-eq v0, v9, :cond_396

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaLessDevice()Z

    move-result v0

    if-nez v0, :cond_396

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_396

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1146
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_396

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1147
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    if-nez v0, :cond_380

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1149
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 1148
    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-nez v0, :cond_396

    :cond_380
    iget v0, v3, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1150
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-nez v0, :cond_396

    if-nez v21, :cond_396

    if-eqz v5, :cond_38d

    goto :goto_396

    .line 1154
    :cond_38d
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v9, "cannot dial voice call in out of service"

    const/4 v10, 0x1

    invoke-direct {v0, v10, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1159
    :cond_396
    :goto_396
    const-string v0, "Trying (non-IMS) CS call"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1160
    if-eqz v18, :cond_3a7

    if-eqz v21, :cond_3a7

    .line 1163
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsTestingEmergencyCallbackMode:Z

    .line 1164
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->testingEmergencyCall()V

    .line 1167
    :cond_3a7
    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1168
    invoke-virtual {v1, v7, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .registers 12
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .param p3, "wrappedCallback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 830
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "newDialString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 834
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 835
    return-object v2

    .line 839
    :cond_12
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 840
    .local v1, "networkPortion":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 841
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 840
    invoke-static {v1, p0, v3, p3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    move-result-object v3

    .line 842
    .local v3, "mmi":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialInternal: dialing w/ mmi \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 844
    if-nez v3, :cond_44

    .line 845
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v2, v0, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2

    .line 846
    :cond_44
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 847
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v4, v3, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getCLIRMode()I

    move-result v5

    iget-object v6, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v7, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2

    .line 850
    :cond_5b
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialInternal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mmi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkGsmCdmaPhone"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->dumpPendingMmi()V

    .line 855
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v2, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 856
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->processCode()V

    .line 857
    return-object v2

    .line 860
    .end local v1    # "networkPortion":Ljava/lang/String;
    .end local v3    # "mmi":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :cond_93
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public disableAllCallForwardingOptions()V
    .registers 7

    .line 2911
    nop

    .line 2912
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2911
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode;->getDisableAllCallForwardingOptionsPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2913
    .local v0, "cfNumber":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableAllCallForwardingOptions: prefixWithNumber= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 2916
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2917
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2919
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 2920
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2921
    return-void
.end method

.method public doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 15
    .param p1, "sessionId"    # I
    .param p2, "mode"    # I
    .param p3, "tag"    # I
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 870
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 871
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/MtkRIL;->doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 873
    :cond_11
    return-void
.end method

.method public dumpPendingMmi()V
    .registers 6

    .line 4289
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4290
    .local v0, "size":I
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_10

    .line 4291
    const-string v2, "dumpPendingMmi: none"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    return-void

    .line 4294
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_30

    .line 4295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpPendingMmi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 4297
    .end local v2    # "i":I
    :cond_30
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .registers 3

    .line 5242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitEmergencyCallbackMode: mImsPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isPhoneTypeGsm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5243
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5242
    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5246
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->tryTurnOnWifiForE911Finished()V

    .line 5248
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInImsEcm()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 5249
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    goto :goto_4c

    .line 5251
    :cond_39
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 5252
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5254
    :cond_46
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 5256
    :goto_4c
    return-void
.end method

.method public getApcInfo()Lcom/mediatek/internal/telephony/PseudoCellInfo;
    .registers 7

    .line 1926
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    .line 1927
    new-instance v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;)V

    .line 1929
    .local v0, "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1930
    :try_start_f
    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    .line 1931
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x3e9

    invoke-virtual {p0, v4, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->getApcInfo(Landroid/os/Message;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_5c

    .line 1933
    :try_start_1c
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_23} :catch_24
    .catchall {:try_start_1c .. :try_end_23} :catchall_5c

    .line 1936
    goto :goto_28

    .line 1934
    :catch_24
    move-exception v3

    .line 1935
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_25
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1937
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_5c

    .line 1938
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 1939
    :try_start_2c
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    if-eqz v2, :cond_50

    .line 1940
    const-string v1, "MtkGsmCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApcInfo return: list.size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/PseudoCellInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    monitor-exit v3

    return-object v1

    .line 1943
    :cond_50
    const-string v2, "MtkGsmCdmaPhone"

    const-string v4, "getApcInfo return null"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    monitor-exit v3

    .line 1946
    .end local v0    # "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    goto :goto_66

    .line 1945
    .restart local v0    # "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    :catchall_59
    move-exception v1

    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_2c .. :try_end_5b} :catchall_59

    throw v1

    .line 1937
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1

    .line 1947
    .end local v0    # "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    :cond_5f
    const-string v0, "MtkGsmCdmaPhone"

    const-string v2, "getApcInfo: not possible in CDMA"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :goto_66
    return-object v1
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 4
    .param p1, "response"    # Landroid/os/Message;

    .line 756
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 760
    :cond_d
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "getAvailableNetworks: not possible in CDMA"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 757
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getAvailableNetworksWithAct(Landroid/os/Message;)V

    .line 762
    :goto_1a
    return-void
.end method

.method public getCFCallbackMessage()Landroid/os/Message;
    .registers 2

    .line 5128
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public getCFPreviousDialNumber(I)Ljava/lang/String;
    .registers 15
    .param p1, "cfReason"    # I

    .line 4777
    const/4 v0, 0x0

    .line 4778
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "MtkGsmCdmaPhone"

    packed-switch p1, :pswitch_data_170

    .line 4789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No need to do the reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    return-object v1

    .line 4786
    :pswitch_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CFNRC_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4787
    goto :goto_64

    .line 4783
    :pswitch_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CFNR_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4784
    goto :goto_64

    .line 4780
    :pswitch_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CFB_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4781
    nop

    .line 4793
    :goto_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4796
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v3, :cond_88

    .line 4797
    const-string v4, "No iccRecords"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    return-object v1

    .line 4801
    :cond_88
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v4

    .line 4803
    .local v4, "currentImsi":Ljava/lang/String;
    if-eqz v4, :cond_16a

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_96

    goto/16 :goto_16a

    .line 4808
    :cond_96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentImsi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4810
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 4811
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4813
    .local v6, "info":Ljava/lang/String;
    if-nez v6, :cond_cd

    .line 4814
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sharedpref not with: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4815
    return-object v1

    .line 4818
    :cond_cd
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4820
    .local v7, "infoAry":[Ljava/lang/String;
    if-eqz v7, :cond_164

    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_db

    goto/16 :goto_164

    .line 4825
    :cond_db
    const/4 v8, 0x0

    aget-object v8, v7, v8

    .line 4826
    .local v8, "imsi":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v7, v9

    .line 4828
    .local v9, "number":Ljava/lang/String;
    if-eqz v8, :cond_15e

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_ea

    goto :goto_15e

    .line 4833
    :cond_ea
    if-eqz v9, :cond_158

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f3

    goto :goto_158

    .line 4838
    :cond_f3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sharedpref imsi: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sharedpref number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4841
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_136

    .line 4842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get dial number from sharepref: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4843
    return-object v9

    .line 4845
    :cond_136
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 4846
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v10, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4847
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v11

    if-nez v11, :cond_157

    .line 4848
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to commit the removal of CF preference: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4852
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_157
    return-object v1

    .line 4834
    :cond_158
    :goto_158
    const-string v10, "Sharedpref number is empty."

    invoke-static {v2, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    return-object v1

    .line 4829
    :cond_15e
    :goto_15e
    const-string v10, "Sharedpref imsi is empty."

    invoke-static {v2, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    return-object v1

    .line 4821
    .end local v8    # "imsi":Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    :cond_164
    :goto_164
    const-string v8, "infoAry.length < 2"

    invoke-static {v2, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    return-object v1

    .line 4804
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "info":Ljava/lang/String;
    .end local v7    # "infoAry":[Ljava/lang/String;
    :cond_16a
    :goto_16a
    const-string v5, "currentImsi is empty"

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4805
    return-object v1

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_34
        :pswitch_1c
    .end packed-switch
.end method

.method public getCFTimeSlotCallbackMessage()Landroid/os/Message;
    .registers 2

    .line 5132
    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public getCSRingingCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .line 927
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 3762
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 3763
    return-void
.end method

.method public getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .registers 12
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "serviceClass"    # I

    .line 3751
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v6

    .line 3752
    .local v6, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v6, :cond_14

    .line 3753
    nop

    .line 3754
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v5

    .line 3753
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->getCallBarring(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V

    goto :goto_1e

    .line 3756
    :cond_14
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "ssQueueHelper not exist, getCallBarringInternal"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallBarringInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 3759
    :goto_1e
    return-void
.end method

.method public getCallBarringInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .registers 14
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "serviceClass"    # I

    .line 3767
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    .line 3844
    :cond_d
    const-string v0, "method getFacilityLock is NOT supported in CDMA!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3845
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3846
    return-void

    .line 3768
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3771
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 3772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallBarringInternal enter, facility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceClass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    const/16 v1, 0x7d6

    invoke-virtual {p0, v1, p3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3776
    .local v1, "resp":Landroid/os/Message;
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_60

    .line 3777
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 3778
    :cond_60
    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 3779
    return-void

    .line 3782
    :cond_64
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, p4, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 3783
    return-void

    .line 3787
    .end local v1    # "resp":Landroid/os/Message;
    :cond_6a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_bf

    if-eqz v0, :cond_bf

    .line 3789
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_82

    .line 3790
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 3791
    :cond_82
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_94

    .line 3792
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 3793
    :cond_94
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportOCB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 3794
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3796
    return-void

    .line 3799
    :cond_a0
    const/16 v1, 0xa

    invoke-static {v1, p3}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v1

    .line 3801
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3802
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3803
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3804
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3806
    .local v2, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, p2, v2, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 3807
    return-void

    .line 3810
    .end local v1    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v2    # "imsUtResult":Landroid/os/Message;
    :cond_bf
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_d1

    .line 3811
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 3812
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {v1, p1, p2, p4, p3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 3814
    return-void

    .line 3817
    :cond_d1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_dc

    .line 3818
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 3822
    :cond_dc
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 3823
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3824
    return-void

    .line 3828
    :cond_e8
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_f4

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 3829
    :cond_f4
    if-eqz p3, :cond_fc

    .line 3830
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3831
    return-void

    .line 3835
    :cond_fc
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->checkUiccApplicationForCB()Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 3836
    .local v1, "checkError":Lcom/android/internal/telephony/CommandException;
    if-eqz v1, :cond_10c

    if-eqz p3, :cond_10c

    .line 3837
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3838
    return-void

    .line 3841
    :cond_10c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3842
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v7

    .line 3841
    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 3843
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    .end local v1    # "checkError":Lcom/android/internal/telephony/CommandException;
    nop

    .line 3848
    return-void
.end method

.method public getCallForwardInTimeSlot(ILandroid/os/Message;)V
    .registers 9
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2755
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 2756
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2759
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const/16 v2, 0x6d

    const-string v3, "requesting call forwarding in time slot query."

    const-string v4, "MtkGsmCdmaPhone"

    if-eqz v1, :cond_53

    .line 2760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallForwardInTimeSlot enter, CFReason:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    if-eqz v0, :cond_43

    .line 2763
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 2764
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2765
    :cond_3c
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardInTimeSlot(ILandroid/os/Message;)V

    .line 2767
    return-void

    .line 2770
    :cond_43
    if-nez p1, :cond_52

    .line 2772
    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2776
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    .line 2778
    .end local v1    # "resp":Landroid/os/Message;
    :cond_52
    return-void

    .line 2782
    :cond_53
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_84

    if-eqz v0, :cond_84

    .line 2784
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_6b

    .line 2785
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 2786
    :cond_6b
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 2787
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 2788
    :cond_7d
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardInTimeSlot(ILandroid/os/Message;)V

    .line 2790
    return-void

    .line 2793
    :cond_84
    if-nez p1, :cond_a6

    .line 2795
    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2800
    .restart local v1    # "resp":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_a0

    .line 2801
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 2802
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    goto :goto_ae

    .line 2806
    :cond_a0
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_ae

    .line 2809
    .end local v1    # "resp":Landroid/os/Message;
    :cond_a6
    if-eqz p2, :cond_ae

    .line 2810
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_af

    .line 2809
    :cond_ae
    :goto_ae
    nop

    .line 2812
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :goto_af
    nop

    .line 2817
    return-void

    .line 2813
    :cond_b1
    const-string v0, "method getCallForwardInTimeSlot is NOT supported in CDMA!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2814
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2815
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .registers 7

    .line 5400
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_71

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 5401
    const/4 v0, 0x0

    .line 5402
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 5403
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 5405
    :cond_1b
    const/4 v1, -0x1

    .line 5406
    .local v1, "callForwardingIndicator":I
    const-string v3, "MtkGsmCdmaPhone"

    if-eqz v0, :cond_38

    .line 5407
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()I

    move-result v1

    .line 5408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallForwardingIndicator: from icc record = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5411
    :cond_38
    const/4 v4, -0x1

    if-ne v1, v4, :cond_3f

    .line 5412
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingIndicatorFromSharedPref()I

    move-result v1

    .line 5414
    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallForwardingIndicator: iccForwardingFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_54

    .line 5415
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_56

    :cond_54
    const-string v5, "null"

    :goto_56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", sharedPrefFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5416
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingIndicatorFromSharedPref()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5414
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    if-ne v1, v2, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v2, 0x0

    :goto_70
    return v2

    .line 5419
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v1    # "callForwardingIndicator":I
    :cond_71
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .registers 4
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 2266
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOptionForServiceClass(IILandroid/os/Message;)V

    .line 2267
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .registers 4
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2243
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOptionForServiceClass(IILandroid/os/Message;)V

    .line 2246
    return-void
.end method

.method public getCallForwardingOptionForServiceClass(IILandroid/os/Message;)V
    .registers 7
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 2251
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v0

    .line 2252
    .local v0, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v0, :cond_f

    .line 2253
    nop

    .line 2254
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    .line 2253
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->getCallForwardingOptionForServiceClass(IILandroid/os/Message;I)V

    goto :goto_19

    .line 2256
    :cond_f
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "ssQueueHelper not exist, getCallForwardingOptionForServiceClass"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOptionInternal(IILandroid/os/Message;)V

    .line 2260
    :goto_19
    return-void
.end method

.method public getCallForwardingOptionInternal(IILandroid/os/Message;)V
    .registers 12
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 2364
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    invoke-virtual {p0, p3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->useSsOverImsExt(Landroid/os/Message;Z)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 2369
    invoke-virtual {p0, p3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCsRetry(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2370
    const-string v0, "UT error."

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOptionCdmaCs(Landroid/os/Message;Ljava/lang/String;)V

    .line 2371
    return-void

    .line 2375
    :cond_19
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2378
    .local v2, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v3

    const/16 v4, 0xd

    const-string v5, "requesting call forwarding query."

    const-string v6, "MtkGsmCdmaPhone"

    const/4 v7, 0x0

    if-eqz v3, :cond_7a

    .line 2379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardingOptionForServiceClass enter, CFReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    if-eqz v2, :cond_63

    .line 2388
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_5c

    .line 2389
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 2391
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2393
    :cond_5c
    move-object v0, v2

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardingOptionForServiceClass(IILandroid/os/Message;)V

    .line 2395
    return-void

    .line 2398
    :cond_63
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 2400
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2404
    if-nez p1, :cond_73

    .line 2405
    invoke-virtual {p0, v4, p3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "resp":Landroid/os/Message;
    goto :goto_74

    .line 2407
    .end local v0    # "resp":Landroid/os/Message;
    :cond_73
    move-object v0, p3

    .line 2409
    .restart local v0    # "resp":Landroid/os/Message;
    :goto_74
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, v7, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 2412
    .end local v0    # "resp":Landroid/os/Message;
    :cond_79
    return-void

    .line 2416
    :cond_7a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_c1

    if-eqz v2, :cond_c1

    .line 2418
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_92

    .line 2419
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 2420
    :cond_92
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v3

    if-nez v3, :cond_a4

    .line 2421
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 2422
    :cond_a4
    const/16 v0, 0xc

    invoke-static {v0, p3}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 2424
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2425
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2426
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2427
    .local v1, "imsUtResult":Landroid/os/Message;
    move-object v3, v2

    check-cast v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v3, p1, p2, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardingOptionForServiceClass(IILandroid/os/Message;)V

    .line 2429
    return-void

    .line 2432
    .end local v0    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v1    # "imsUtResult":Landroid/os/Message;
    :cond_c1
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 2433
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2435
    if-nez p1, :cond_d1

    .line 2436
    invoke-virtual {p0, v4, p3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, "resp":Landroid/os/Message;
    goto :goto_d2

    .line 2438
    .end local v3    # "resp":Landroid/os/Message;
    :cond_d1
    move-object v3, p3

    .line 2441
    .restart local v3    # "resp":Landroid/os/Message;
    :goto_d2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v4

    if-nez v4, :cond_f7

    .line 2442
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 2443
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInCSCall()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f1

    .line 2444
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2445
    return-void

    .line 2447
    :cond_f1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {v0, p1, p2, v7, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 2449
    return-void

    .line 2452
    :cond_f7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v4

    if-ne v4, v0, :cond_100

    .line 2453
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 2456
    :cond_100
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v0

    if-nez v0, :cond_10c

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v0

    if-eqz v0, :cond_114

    .line 2457
    :cond_10c
    if-eqz p3, :cond_114

    .line 2458
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2459
    return-void

    .line 2464
    :cond_114
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 2465
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_12a

    .line 2467
    :cond_120
    const-string v0, "mCi.queryCallForwardStatus."

    invoke-static {v6, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 2471
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "resp":Landroid/os/Message;
    :cond_12a
    :goto_12a
    goto :goto_130

    .line 2472
    :cond_12b
    const-string v0, "CDMA CS directly."

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOptionCdmaCs(Landroid/os/Message;Ljava/lang/String;)V

    .line 2474
    :goto_130
    return-void
.end method

.method public getCallSubAddress(Landroid/os/Message;)V
    .registers 3
    .param p1, "response"    # Landroid/os/Message;

    .line 5793
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCallSubAddress(Landroid/os/Message;)V

    .line 5794
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .registers 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 3303
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v0

    .line 3304
    .local v0, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v0, :cond_e

    .line 3305
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->getCallWaiting(Landroid/os/Message;I)V

    goto :goto_18

    .line 3307
    :cond_e
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "ssQueueHelper not exist, getCallWaiting"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallWaitingInternal(Landroid/os/Message;)V

    .line 3310
    :goto_18
    return-void
.end method

.method public getCallWaitingInternal(Landroid/os/Message;)V
    .registers 8
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 3316
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->useSsOverImsExt(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 3321
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isImsRegisteredOnly()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCardSupportCdma(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3322
    const-string v0, "IMS unregistered."

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallWaitingCdmaCs(Landroid/os/Message;Ljava/lang/String;)V

    .line 3323
    return-void

    .line 3327
    :cond_24
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCsRetry(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3328
    const-string v0, "UT error."

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallWaitingCdmaCs(Landroid/os/Message;Ljava/lang/String;)V

    .line 3329
    return-void

    .line 3333
    :cond_30
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 3336
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "MtkGsmCdmaPhone"

    if-eqz v1, :cond_62

    .line 3337
    const-string v1, "getCallWaiting enter"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    if-eqz v0, :cond_5c

    .line 3340
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_58

    .line 3341
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-nez v1, :cond_58

    .line 3343
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 3345
    :cond_58
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 3346
    return-void

    .line 3351
    :cond_5c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 3353
    return-void

    .line 3358
    :cond_62
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v1

    const-string v4, "mCi.queryCallForwardStatus."

    if-nez v1, :cond_e2

    .line 3359
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    if-nez v1, :cond_71

    .line 3360
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->initTbcwMode()V

    .line 3363
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallWaiting(): mTbcwMode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", onComplete = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    packed-switch v1, :pswitch_data_17e

    goto :goto_e2

    .line 3391
    :pswitch_95
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_a1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 3392
    :cond_a1
    if-eqz p1, :cond_a9

    .line 3393
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3395
    return-void

    .line 3398
    :cond_a9
    const/16 v1, 0x12d

    invoke-virtual {p0, v1, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3399
    .local v1, "resp":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 3400
    return-void

    .line 3373
    .end local v1    # "resp":Landroid/os/Message;
    :pswitch_b5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_c1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 3374
    :cond_c1
    if-eqz p1, :cond_c9

    .line 3375
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3377
    return-void

    .line 3381
    :cond_c9
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 3382
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_dd

    .line 3385
    :cond_d5
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 3388
    :goto_dd
    return-void

    .line 3369
    :pswitch_de
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    .line 3370
    return-void

    .line 3404
    :cond_e2
    :goto_e2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_137

    if-eqz v0, :cond_137

    .line 3406
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_fa

    .line 3407
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_137

    .line 3408
    :cond_fa
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_10c

    .line 3409
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_137

    .line 3410
    :cond_10c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v1

    if-eqz v1, :cond_127

    .line 3411
    const-string v1, "isOpNwCW(), getCallWaiting() by Ut interface"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    const/16 v1, 0xe

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v1

    .line 3414
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3415
    .local v2, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 3416
    .end local v1    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v2    # "imsUtResult":Landroid/os/Message;
    goto :goto_136

    .line 3417
    :cond_127
    const-string v1, "isOpTbCW(), getTerminalBasedCallWaiting"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 3419
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 3420
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    .line 3422
    :goto_136
    return-void

    .line 3425
    :cond_137
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_14e

    .line 3426
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 3427
    const-string v1, "mMtkSSReqDecisionMaker.queryCallWaiting"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallWaiting(ILandroid/os/Message;)V

    .line 3430
    return-void

    .line 3433
    :cond_14e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_15a

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_162

    .line 3434
    :cond_15a
    if-eqz p1, :cond_162

    .line 3435
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3436
    return-void

    .line 3443
    :cond_162
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 3444
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_176

    .line 3446
    :cond_16e
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 3449
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_176
    goto :goto_17c

    .line 3450
    :cond_177
    const-string v0, "CDMA CS directly"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallWaitingCdmaCs(Landroid/os/Message;Ljava/lang/String;)V

    .line 3452
    :goto_17c
    return-void

    nop

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_de
        :pswitch_b5
        :pswitch_95
    .end packed-switch
.end method

.method public getCdmaSubscriptionActStatus()I
    .registers 2

    .line 5024
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    check-cast v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;->getActStatus()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public getCpaConnectionInfo()Landroid/os/Bundle;
    .registers 8

    .line 5731
    const/4 v0, 0x0

    .line 5732
    .local v0, "cpaConInfo":Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->preCheckCpaDcTracker()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 5733
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaConnectionInfo()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    move-result-object v1

    .line 5734
    .local v1, "cpaCon":Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;
    const-string v2, "MtkGsmCdmaPhone"

    if-eqz v1, :cond_40

    .line 5735
    const-string v3, "creat() E cpaConInfo"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;-><init>()V

    move-object v0, v3

    .line 5737
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->localAddress:Ljava/net/InetAddress;

    .line 5738
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getDnsAddresses()[Ljava/net/InetAddress;

    move-result-object v3

    .line 5739
    .local v3, "dnsAddr":[Ljava/net/InetAddress;
    if-eqz v3, :cond_3a

    .line 5740
    array-length v4, v3

    new-array v4, v4, [Ljava/net/InetAddress;

    iput-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->dnsAddresses:[Ljava/net/InetAddress;

    .line 5741
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2e
    array-length v5, v3

    if-ge v4, v5, :cond_3a

    .line 5742
    iget-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->dnsAddresses:[Ljava/net/InetAddress;

    aget-object v6, v3, v4

    aput-object v6, v5, v4

    .line 5741
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 5745
    .end local v4    # "i":I
    :cond_3a
    const-string v4, "creat() X cpaConInfo"

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5746
    .end local v3    # "dnsAddr":[Ljava/net/InetAddress;
    goto :goto_45

    .line 5747
    :cond_40
    const-string v3, "getCpaConnectionInfo() can\'t get CPA connection"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5750
    .end local v1    # "cpaCon":Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;
    :cond_45
    :goto_45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5751
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "CpaConnectionInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5753
    return-object v1
.end method

.method public getCpaConnectionStatus()Lcom/android/internal/telephony/DctConstants$State;
    .registers 2

    .line 5724
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->preCheckCpaDcTracker()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5725
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaConnectionStatus()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    return-object v0

    .line 5727
    :cond_d
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method

.method public getCpaProxyData()Landroid/net/ProxyInfo;
    .registers 2

    .line 5757
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->preCheckCpaDcTracker()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5758
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaProxyData()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0

    .line 5760
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCsFallbackStatus()I
    .registers 3

    .line 4971
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isAllowXcapIfDataEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 4972
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    .line 4975
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isAllowXcapIfDataRoaming(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 4976
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    .line 4979
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCsFallbackStatus is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    return v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .registers 2

    .line 5322
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1b

    .line 5326
    :cond_13
    const-string v0, "getDeviceSvn(): return 0"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5327
    const-string v0, "0"

    return-object v0

    .line 5324
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getDisable2G(Landroid/os/Message;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Message;

    .line 5379
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "getDisable2G"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5380
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getDisable2G(Landroid/os/Message;)V

    .line 5381
    return-void
.end method

.method public getEccRadioOnStatus()Z
    .registers 2

    .line 5639
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mEccRadioOnStatus:Z

    return v0
.end method

.method public getEcholocateMetrics(ILandroid/os/Message;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 5807
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "getEcholocateMetrics()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5808
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->getEcholocateMetrics(ILandroid/os/Message;)V

    .line 5809
    return-void
.end method

.method public getFemtoCellList(Landroid/os/Message;)V
    .registers 4
    .param p1, "response"    # Landroid/os/Message;

    .line 781
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "getFemtoCellList()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getFemtoCellList(Landroid/os/Message;)V

    .line 783
    return-void
.end method

.method public getFullIccSerialNumber()Ljava/lang/String;
    .registers 7

    .line 5194
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getFullIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 5195
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 5196
    return-object v0

    .line 5200
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_27

    .line 5201
    const/4 v1, 0x0

    .line 5202
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 5203
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    move-object v0, v2

    .line 5204
    if-eqz v0, :cond_27

    .line 5205
    return-object v0

    .line 5210
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5213
    .local v1, "identity":J
    :try_start_2b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v3

    .line 5214
    .local v3, "subId":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 5215
    invoke-virtual {v4, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 5216
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_42

    .line 5217
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_47

    move-object v0, v5

    .line 5219
    :cond_42
    nop

    .line 5221
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5219
    return-object v0

    .line 5221
    .end local v3    # "subId":I
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :catchall_47
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5222
    throw v3
.end method

.method public getIWlanRegistrationState(Landroid/os/Message;)V
    .registers 3
    .param p1, "response"    # Landroid/os/Message;

    .line 5812
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getIWlanRegistrationState(Landroid/os/Message;)V

    .line 5813
    return-void
.end method

.method public getLine1PhoneNumber()Ljava/lang/String;
    .registers 9

    .line 5502
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 5503
    const-string v0, "persist.vendor.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5504
    .local v0, "optr":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_af

    const-string v2, "OP20"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 5506
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v2

    .line 5507
    .local v2, "mCdmaCardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    const/4 v3, 0x0

    .line 5509
    .local v3, "isCdma4g":Z
    if-eqz v2, :cond_2a

    .line 5510
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->is4GCard()Z

    move-result v3

    .line 5512
    :cond_2a
    if-eqz v3, :cond_a0

    .line 5513
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    .line 5514
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v5

    const/4 v6, 0x2

    .line 5513
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 5515
    .local v4, "rr":Lcom/android/internal/telephony/uicc/RuimRecords;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 5517
    .local v5, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLine1PhoneNumber, number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_64

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_64

    .line 5518
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_64

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v7

    goto :goto_6c

    :cond_64
    if-eqz v5, :cond_6b

    .line 5519
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_6c

    :cond_6b
    move-object v7, v1

    :goto_6c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5517
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5521
    if-eqz v4, :cond_99

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_99

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_99

    .line 5522
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v1

    goto :goto_9f

    :cond_99
    if-eqz v5, :cond_9f

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    .line 5521
    :cond_9f
    :goto_9f
    return-object v1

    .line 5524
    .end local v4    # "rr":Lcom/android/internal/telephony/uicc/RuimRecords;
    .end local v5    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_a0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 5525
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_ae

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :cond_ae
    return-object v1

    .line 5528
    .end local v2    # "mCdmaCardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    .end local v3    # "isCdma4g":Z
    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_af
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 5529
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_bd

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :cond_bd
    return-object v1

    .line 5532
    .end local v0    # "optr":Ljava/lang/String;
    .end local v2    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_be
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocatedPlmn()Ljava/lang/String;
    .registers 2

    .line 668
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMtkSSRequestDecisionMaker()Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
    .registers 2

    .line 3998
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    return-object v0
.end method

.method public getMvnoMatchType()Ljava/lang/String;
    .registers 6

    .line 904
    const-string v0, ""

    .line 905
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 906
    :try_start_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 907
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 909
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getMvnoMatchType()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 912
    :cond_20
    const-string v2, "MtkGsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMvnoMatchType: Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_36
    monitor-exit v1

    .line 915
    return-object v0

    .line 914
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "type"    # Ljava/lang/String;

    .line 878
    const-string v0, ""

    .line 879
    .local v0, "pattern":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 880
    :try_start_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 881
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_81

    .line 882
    const-string v2, "spn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 884
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_81

    .line 886
    :cond_29
    const-string v2, "imsi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 888
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isOperatorMvnoForImsi()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_81

    .line 890
    :cond_3f
    const-string v2, "pnn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 891
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isOperatorMvnoForEfPnn()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_81

    .line 892
    :cond_55
    const-string v2, "gid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 893
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_81

    .line 895
    :cond_6b
    const-string v2, "MtkGsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMvnoPattern: Wrong type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_81
    :goto_81
    monitor-exit v1

    .line 900
    return-object v0

    .line 899
    :catchall_83
    move-exception v2

    monitor-exit v1
    :try_end_85
    .catchall {:try_start_5 .. :try_end_85} :catchall_83

    throw v2
.end method

.method public getNrMapStatus()Ljava/lang/String;
    .registers 2

    .line 5632
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/NrMap;->getNrMapStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5633
    :cond_11
    const-string v0, "getNrMapStatus mMtkSST == null && mMtkSST.nm == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5634
    const-string v0, "n/a"

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 5119
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_e

    .line 5121
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 5124
    :cond_e
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .registers 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 2979
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v0

    .line 2980
    .local v0, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v0, :cond_e

    .line 2981
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->getOutgoingCallerIdDisplay(Landroid/os/Message;I)V

    goto :goto_18

    .line 2983
    :cond_e
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "ssQueueHelper not exist, getOutgoingCallerIdDisplay"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOutgoingCallerIdDisplayInternal(Landroid/os/Message;)V

    .line 2986
    :goto_18
    return-void
.end method

.method public getOutgoingCallerIdDisplayInternal(Landroid/os/Message;)V
    .registers 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 2989
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    .line 3071
    :cond_d
    const-string v0, "getOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3072
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3073
    return-void

    .line 2990
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2993
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2994
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "getOutgoingCallerIdDisplay enter"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    const/16 v1, 0x7d4

    invoke-virtual {p0, v1, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2997
    .local v1, "resp":Landroid/os/Message;
    if-eqz v0, :cond_3d

    .line 2998
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_3d

    .line 2999
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 3000
    return-void

    .line 3002
    :cond_3d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 3004
    return-void

    .line 3008
    .end local v1    # "resp":Landroid/os/Message;
    :cond_43
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9c

    if-eqz v0, :cond_9c

    .line 3010
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_5c

    .line 3011
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 3012
    :cond_5c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 3013
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 3014
    :cond_6e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 3015
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3017
    return-void

    .line 3020
    :cond_7a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 3021
    if-eqz p1, :cond_8c

    .line 3022
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSavedClirSetting()[I

    move-result-object v1

    .line 3023
    .local v1, "result":[I
    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3024
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3026
    .end local v1    # "result":[I
    :cond_8c
    return-void

    .line 3029
    :cond_8d
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v1

    .line 3031
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3032
    .local v2, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 3033
    return-void

    .line 3036
    .end local v1    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v2    # "imsUtResult":Landroid/os/Message;
    :cond_9c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_c1

    .line 3037
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 3038
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 3039
    if-eqz p1, :cond_ba

    .line 3040
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSavedClirSetting()[I

    move-result-object v1

    .line 3041
    .local v1, "result":[I
    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3042
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3044
    .end local v1    # "result":[I
    :cond_ba
    return-void

    .line 3047
    :cond_bb
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCLIR(Landroid/os/Message;)V

    .line 3048
    return-void

    .line 3051
    :cond_c1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_cc

    .line 3052
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 3056
    :cond_cc
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 3057
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3058
    return-void

    .line 3062
    :cond_d8
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_e4

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 3063
    :cond_e4
    if-eqz p1, :cond_ec

    .line 3064
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3065
    return-void

    .line 3069
    :cond_ec
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 3070
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    nop

    .line 3075
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .line 2159
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "getPendingMmiCodes"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->dumpPendingMmi()V

    .line 2162
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2163
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2164
    .local v2, "imsphonePendingMMIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MmiCode;>;"
    if-eqz v1, :cond_38

    .line 2165
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_38

    .line 2166
    nop

    .line 2167
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    .line 2168
    .local v3, "imsMMIs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .line 2169
    .local v5, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2170
    .end local v5    # "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto :goto_28

    .line 2173
    .end local v3    # "imsMMIs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;>;"
    :cond_38
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2174
    .local v3, "allPendingMMIs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/MmiCode;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allPendingMMIs.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "s":I
    :goto_5f
    if-ge v4, v5, :cond_7c

    .line 2177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dump allPendingMMIs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    .line 2179
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_7c
    return-object v3
.end method

.method public getPol(Landroid/os/Message;)V
    .registers 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 2140
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCurrentPOLList(Landroid/os/Message;)V

    .line 2141
    return-void
.end method

.method public getPolCapability(Landroid/os/Message;)V
    .registers 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 2129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getPOLCapability(Landroid/os/Message;)V

    .line 2130
    return-void
.end method

.method public getRoamingEnable(Landroid/os/Message;)V
    .registers 4
    .param p1, "response"    # Landroid/os/Message;

    .line 5056
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "get roaming enable"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5057
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRoamingEnable(ILandroid/os/Message;)V

    .line 5058
    return-void
.end method

.method public getRxTestResult(Landroid/os/Message;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Message;

    .line 2118
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "get Rx Test Result"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRxTestResult(Landroid/os/Message;)V

    .line 2120
    return-void
.end method

.method public getSavedClirSetting()[I
    .registers 9

    .line 2949
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2950
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clir_sub_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2953
    .local v1, "clirSetting":I
    const/4 v3, 0x1

    if-eqz v1, :cond_30

    if-ne v1, v2, :cond_28

    goto :goto_30

    .line 2957
    :cond_28
    if-ne v1, v3, :cond_2d

    .line 2959
    const/4 v2, 0x3

    .line 2960
    .local v2, "presentationMode":I
    const/4 v4, 0x1

    .local v4, "getClirResult":I
    goto :goto_32

    .line 2963
    .end local v2    # "presentationMode":I
    .end local v4    # "getClirResult":I
    :cond_2d
    const/4 v2, 0x4

    .line 2964
    .restart local v2    # "presentationMode":I
    const/4 v4, 0x2

    .restart local v4    # "getClirResult":I
    goto :goto_32

    .line 2955
    .end local v2    # "presentationMode":I
    .end local v4    # "getClirResult":I
    :cond_30
    :goto_30
    const/4 v2, 0x4

    .line 2956
    .restart local v2    # "presentationMode":I
    const/4 v4, 0x0

    .line 2967
    .restart local v4    # "getClirResult":I
    :goto_32
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 2968
    .local v5, "getClirResponse":[I
    const/4 v6, 0x0

    aput v4, v5, v6

    .line 2969
    aput v2, v5, v3

    .line 2971
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClirResult: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "MtkGsmCdmaPhone"

    invoke-static {v6, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "presentationMode: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    return-object v5
.end method

.method public getScbmManagerInstance()Lcom/mediatek/internal/telephony/scbm/ISCBMManager;
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mScbmManager:Lcom/mediatek/internal/telephony/scbm/ISCBMManager;

    return-object v0
.end method

.method public getSelfActivationInstance()Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
    .registers 2

    .line 480
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSelfActInstance:Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 503
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 504
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_35

    .line 505
    :cond_16
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_35

    .line 507
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-nez v0, :cond_24

    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v0}, Lmediatek/telephony/MtkServiceState;-><init>()V

    goto :goto_28

    :cond_24
    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    :goto_28
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 508
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    check-cast v1, Lmediatek/telephony/MtkServiceState;

    .line 506
    invoke-static {v0, v1}, Lmediatek/telephony/MtkServiceState;->mergeMtkServiceStates(Lmediatek/telephony/MtkServiceState;Lmediatek/telephony/MtkServiceState;)Lmediatek/telephony/MtkServiceState;

    move-result-object v0

    return-object v0

    .line 512
    :cond_35
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_3e

    .line 513
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    return-object v0

    .line 516
    :cond_3e
    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v0}, Lmediatek/telephony/MtkServiceState;-><init>()V

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 3

    .line 5479
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_f

    .line 5480
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 5481
    .local v0, "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_f

    .line 5482
    return-object v0

    .line 5488
    .end local v0    # "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 5489
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getHandoverConnectionSize()I

    move-result v0

    if-lez v0, :cond_24

    .line 5490
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0

    .line 5494
    :cond_24
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 4

    .line 5579
    const/4 v0, 0x0

    .line 5580
    .local v0, "subscriberId":Ljava/lang/String;
    nop

    .line 5581
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 5582
    .local v1, "dct":Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    if-eqz v1, :cond_f

    .line 5583
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 5585
    :cond_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5586
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 5588
    :cond_19
    return-object v0
.end method

.method public getSuggestedPlmnList(IIILandroid/os/Message;)V
    .registers 6
    .param p1, "rat"    # I
    .param p2, "num"    # I
    .param p3, "timer"    # I
    .param p4, "onCompleted"    # Landroid/os/Message;

    .line 5597
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->getSuggestedPlmnList(IIILandroid/os/Message;)V

    .line 5598
    return-void
.end method

.method public getTbcwMode()I
    .registers 2

    .line 3234
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->initTbcwMode()V

    .line 3235
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    return v0
.end method

.method public getTerminalBasedCallWaiting(Landroid/os/Message;)V
    .registers 7
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 3259
    const-string v0, "MtkGsmCdmaPhone"

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Landroid/os/Message;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 3292
    .local v1, "future":Ljava/util/concurrent/Future;
    const/4 v2, 0x0

    .line 3294
    .local v2, "result":Z
    :try_start_e
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v2, v3

    .line 3295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTerminalBasedCallWaiting future get = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2d} :catch_2e

    .line 3298
    goto :goto_34

    .line 3296
    :catch_2e
    move-exception v3

    .line 3297
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "getTerminalBasedCallWaiting Exception occured"

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_34
    return-void
.end method

.method public getTimeSlot()[J
    .registers 15

    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.timeslot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2731
    .local v0, "timeSlotKey":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2732
    .local v2, "timeSlotString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2733
    .local v3, "timeSlot":[J
    if-eqz v2, :cond_69

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 2734
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2735
    .local v1, "timeArray":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_69

    .line 2736
    new-array v3, v5, [J

    .line 2737
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f
    if-ge v4, v5, :cond_69

    .line 2738
    aget-object v6, v1, v4

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 2739
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 2740
    .local v6, "calenar":Ljava/util/Calendar;
    aget-wide v7, v3, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2741
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 2742
    .local v8, "hour":I
    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 2743
    .local v10, "min":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 2744
    .local v11, "calenar2":Ljava/util/Calendar;
    invoke-virtual {v11, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 2745
    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 2746
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    aput-wide v12, v3, v4

    .line 2737
    .end local v6    # "calenar":Ljava/util/Calendar;
    .end local v8    # "hour":I
    .end local v10    # "min":I
    .end local v11    # "calenar2":Ljava/util/Calendar;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 2750
    .end local v1    # "timeArray":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeSlot = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    return-object v3
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .registers 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1993
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1994
    const-string v0, "method handleInCallMmiCommands is NOT supported in CDMA!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1995
    return v1

    .line 1998
    :cond_d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1999
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_26

    .line 2000
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_26

    .line 2004
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInCSCall()Z

    move-result v2

    if-nez v2, :cond_26

    .line 2005
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2009
    :cond_26
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInCall()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 2010
    return v1

    .line 2013
    :cond_2d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2014
    return v1

    .line 2017
    :cond_34
    const/4 v2, 0x0

    .line 2018
    .local v2, "result":Z
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2019
    .local v1, "ch":C
    packed-switch v1, :pswitch_data_5c

    goto :goto_5b

    .line 2041
    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2042
    goto :goto_5b

    .line 2038
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2039
    goto :goto_5b

    .line 2035
    :pswitch_47
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2036
    goto :goto_5b

    .line 2032
    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2033
    goto :goto_5b

    .line 2029
    :pswitch_51
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2030
    goto :goto_5b

    .line 2025
    :pswitch_56
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleUdubIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 2027
    nop

    .line 2047
    :goto_5b
    return v2

    :pswitch_data_5c
    .packed-switch 0x30
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_3d
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 1176
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_b40

    .line 1907
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_b3e

    .line 1727
    :sswitch_d
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_GET_CALL_BARRING_COMPLETE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1730
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_cf

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_cf

    .line 1731
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1732
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1733
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    const-string v3, "MtkGsmCdmaPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_CALL_BARRING_COMPLETE: cmdException error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 1736
    if-eqz v1, :cond_cf

    .line 1737
    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-nez v3, :cond_ad

    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-eqz v3, :cond_59

    goto :goto_ad

    .line 1745
    :cond_59
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 1746
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_cf

    .line 1747
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 1749
    nop

    .line 1750
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1751
    .local v3, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v4, 0x0

    .line 1752
    .local v4, "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_cf

    .line 1753
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v4

    .line 1754
    if-eqz v4, :cond_cf

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_cf

    .line 1755
    const-string v5, "MtkGsmCdmaPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create OEM error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", msg ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_cf

    .line 1738
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_ad
    :goto_ad
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtError(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 1739
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return REQUEST_NOT_SUPPORTED"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_cf

    .line 1743
    :cond_c8
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return Original Error"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_cf
    :goto_cf
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1768
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_b3e

    .line 1769
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1770
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b3e

    .line 1679
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :sswitch_e1
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_SET_CALL_BARRING_COMPLETE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1682
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_19a

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_19a

    .line 1683
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1684
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1685
    .restart local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    const-string v3, "MtkGsmCdmaPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_CALL_BARRING_COMPLETE: cmdException error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 1688
    if-eqz v1, :cond_19a

    .line 1689
    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-eqz v3, :cond_147

    .line 1690
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtError(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 1691
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return REQUEST_NOT_SUPPORTED"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_19a

    .line 1695
    :cond_13f
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return Original Error"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19a

    .line 1697
    :cond_147
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 1698
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19a

    .line 1699
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 1701
    nop

    .line 1702
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1703
    .restart local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v4, 0x0

    .line 1704
    .restart local v4    # "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_19a

    .line 1705
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v4

    .line 1706
    if-eqz v4, :cond_19a

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19a

    .line 1707
    const-string v5, "MtkGsmCdmaPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create OEM error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", msg ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1719
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_19a
    :goto_19a
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1720
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_b3e

    .line 1721
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1722
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b3e

    .line 1631
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :sswitch_1ac
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_GET_CLIR_COMPLETE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1634
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_26e

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_26e

    .line 1635
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1636
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1637
    .restart local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    const-string v3, "MtkGsmCdmaPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_CLIR_COMPLETE: cmdException error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_26e

    .line 1640
    if-eqz v1, :cond_26e

    .line 1641
    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-nez v3, :cond_24c

    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP02:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-eqz v3, :cond_1f8

    goto :goto_24c

    .line 1649
    :cond_1f8
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_26e

    .line 1650
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26e

    .line 1651
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26e

    .line 1653
    nop

    .line 1654
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1655
    .restart local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v4, 0x0

    .line 1656
    .restart local v4    # "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_26e

    .line 1657
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v4

    .line 1658
    if-eqz v4, :cond_26e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_26e

    .line 1659
    const-string v5, "MtkGsmCdmaPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create OEM error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", msg ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_26e

    .line 1642
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_24c
    :goto_24c
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtError(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_267

    .line 1643
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return REQUEST_NOT_SUPPORTED"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_26e

    .line 1647
    :cond_267
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return Original Error"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_26e
    :goto_26e
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1672
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_b3e

    .line 1673
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1674
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b3e

    .line 1781
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :sswitch_280
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleImsUtCsfb(Landroid/os/Message;)V

    .line 1782
    goto/16 :goto_b3e

    .line 1775
    :sswitch_285
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_IMS_UT_DONE: Enter"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleImsUtDone(Landroid/os/Message;)V

    .line 1778
    goto/16 :goto_b3e

    .line 1873
    :sswitch_291
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mWifiIsEnabledBeforeE911:Z

    if-nez v0, :cond_b3e

    .line 1874
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "Turn off wifi radio when exit ECBM for Vzw E911 CCP"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    .line 1877
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1879
    .local v0, "wifiMngr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 1880
    .end local v0    # "wifiMngr":Landroid/net/wifi/WifiManager;
    goto/16 :goto_b3e

    .line 1178
    :sswitch_2ab
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1179
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1180
    .local v2, "response":[B
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mOemIndRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v3, :cond_b3e

    .line 1181
    new-instance v4, Landroid/os/AsyncResult;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v1, v5, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1182
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_b3e

    .line 1848
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "response":[B
    :sswitch_2c6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallbackLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2cd

    .line 1849
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1851
    :cond_2cd
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_SET_SS_PROPERTY done"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    goto/16 :goto_b3e

    .line 1254
    :sswitch_2d6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1255
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;

    .line 1259
    .local v1, "noti":Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;
    iget v3, v1, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->code:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_350

    .line 1263
    const-string v3, "MtkGsmCdmaPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[COLP]noti.number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->number:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_350

    .line 1265
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v3

    .line 1266
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;

    .line 1267
    .local v2, "cn":Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
    if-eqz v2, :cond_350

    .line 1268
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_350

    .line 1269
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_350

    .line 1270
    iget-object v3, v1, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->setRedirectingAddress(Ljava/lang/String;)V

    .line 1271
    const-string v3, "MtkGsmCdmaPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[COLP]Redirecting address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;->getRedirectingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1271
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    .end local v2    # "cn":Lcom/mediatek/internal/telephony/MtkGsmCdmaConnection;
    :cond_350
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-nez v2, :cond_35a

    .line 1279
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 1281
    :cond_35a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1282
    goto/16 :goto_b3e

    .line 1233
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "noti":Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;
    :sswitch_361
    const-string v0, "Event EVENT_SSN_EX Received"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_b3e

    .line 1235
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1236
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;

    .line 1238
    .local v2, "not":Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;
    iget v4, v2, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->notificationType:I

    if-ne v4, v3, :cond_3af

    .line 1239
    iget v3, v2, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->code:I

    if-eqz v3, :cond_39a

    iget v3, v2, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->code:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_383

    goto :goto_39a

    .line 1247
    :cond_383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected SSN_EX code:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->code:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto :goto_3af

    .line 1241
    :cond_39a
    :goto_39a
    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v1, v2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 1242
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-nez v1, :cond_3aa

    .line 1243
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 1245
    :cond_3aa
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1250
    .end local v2    # "not":Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;
    :cond_3af
    :goto_3af
    goto/16 :goto_b3e

    .line 1187
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3b1
    const-string v0, "MtkGsmCdmaPhone"

    const-string v2, "handle EVENT_GET_APC_INFO"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1189
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;

    .line 1190
    .local v4, "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    if-nez v4, :cond_3cb

    .line 1191
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "EVENT_GET_APC_INFO: result return null"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return-void

    .line 1194
    :cond_3cb
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1195
    :try_start_3ce
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3ed

    .line 1196
    const-string v2, "MtkGsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_APC_INFO: error ret null, e="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iput-object v1, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    goto :goto_3f8

    .line 1199
    :cond_3ed
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1200
    .local v1, "msgs":[I
    new-instance v2, Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-direct {v2, v1}, Lcom/mediatek/internal/telephony/PseudoCellInfo;-><init>([I)V

    iput-object v2, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    .line 1202
    .end local v1    # "msgs":[I
    :goto_3f8
    iget-object v1, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1203
    monitor-exit v5

    .line 1204
    goto/16 :goto_b3e

    .line 1203
    :catchall_400
    move-exception v1

    monitor-exit v5
    :try_end_402
    .catchall {:try_start_3ce .. :try_end_402} :catchall_400

    throw v1

    .line 1523
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
    :sswitch_403
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1524
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 1525
    .local v4, "onComplete":Landroid/os/Message;
    const-string v5, "MtkGsmCdmaPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_SET_CALL_WAITING_DONE: ar.exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_496

    .line 1528
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_488

    .line 1529
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1530
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1531
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_488

    .line 1532
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_488

    .line 1533
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_488

    .line 1535
    nop

    .line 1536
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1537
    .restart local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v5, 0x0

    .line 1538
    .local v5, "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_488

    .line 1539
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v5

    .line 1540
    if-eqz v5, :cond_488

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_488

    .line 1541
    const-string v6, "MtkGsmCdmaPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create OEM error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", msg ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v6, v2, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1551
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v5    # "errorMsg":Ljava/lang/String;
    :cond_488
    if-eqz v4, :cond_b3e

    .line 1552
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1553
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1554
    goto/16 :goto_b3e

    .line 1557
    :cond_496
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v5

    if-nez v5, :cond_4a7

    .line 1558
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_4a1

    move v2, v3

    :cond_4a1
    move v1, v2

    .line 1559
    .local v1, "enable":Z
    invoke-virtual {p0, v1, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 1560
    .end local v1    # "enable":Z
    goto/16 :goto_b3e

    .line 1561
    :cond_4a7
    if-eqz v4, :cond_b3e

    .line 1562
    invoke-static {v4, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1563
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b3e

    .line 1456
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "onComplete":Landroid/os/Message;
    :sswitch_4b1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1457
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string v4, "MtkGsmCdmaPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EVENT_GET_CALL_WAITING_]ar.exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 1460
    .restart local v4    # "onComplete":Landroid/os/Message;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_544

    .line 1461
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    .line 1466
    .local v5, "cwArray":[I
    :try_start_4d9
    const-string v6, "MtkGsmCdmaPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_GET_CALL_WAITING_DONE cwArray[0]:cwArray[1] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    aget v6, v5, v2

    if-ne v6, v3, :cond_505

    aget v6, v5, v3

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_505

    move v2, v3

    .line 1472
    .local v2, "csEnable":Z
    :cond_505
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v3

    if-nez v3, :cond_50e

    .line 1473
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 1476
    :cond_50e
    if-eqz v4, :cond_51a

    .line 1477
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-static {v4, v3, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1478
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_518
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4d9 .. :try_end_518} :catch_51b

    .line 1479
    goto/16 :goto_b3e

    .line 1489
    .end local v2    # "csEnable":Z
    :cond_51a
    goto :goto_542

    .line 1481
    :catch_51b
    move-exception v2

    .line 1482
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MtkGsmCdmaPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_GET_CALL_WAITING_DONE: improper result: err ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1482
    invoke-static {v3, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    if-eqz v4, :cond_542

    .line 1485
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-static {v4, v3, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1486
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1487
    goto/16 :goto_b3e

    .line 1490
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "cwArray":[I
    :cond_542
    :goto_542
    goto/16 :goto_b3e

    .line 1491
    :cond_544
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_5a5

    .line 1492
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1493
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1494
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_5a5

    .line 1495
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5a5

    .line 1496
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5a5

    .line 1498
    nop

    .line 1499
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1500
    .restart local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v5, 0x0

    .line 1501
    .local v5, "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_5a5

    .line 1502
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v5

    .line 1503
    if-eqz v5, :cond_5a5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5a5

    .line 1504
    const-string v6, "MtkGsmCdmaPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create OEM error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", msg ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v6, v2, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1514
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v5    # "errorMsg":Ljava/lang/String;
    :cond_5a5
    if-eqz v4, :cond_b3e

    .line 1515
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1516
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1517
    goto/16 :goto_b3e

    .line 1836
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "onComplete":Landroid/os/Message;
    :sswitch_5b3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1837
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    .line 1838
    .local v1, "rc_unsol":Lcom/android/internal/telephony/RadioCapability;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5c7

    .line 1839
    const-string v2, "MtkGsmCdmaPhone"

    const-string v3, "RIL_UNSOL_RADIO_CAPABILITY fail, don\'t change capability"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5ca

    .line 1841
    :cond_5c7
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;Z)V

    .line 1843
    :goto_5ca
    const-string v2, "MtkGsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_UNSOL_RADIO_CAPABILITY_CHANGED: rc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    goto/16 :goto_b3e

    .line 1442
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "rc_unsol":Lcom/android/internal/telephony/RadioCapability;
    :sswitch_5e2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1443
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1444
    .local v1, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;

    .line 1445
    .local v4, "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_607

    if-eqz v1, :cond_607

    .line 1446
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_5fd

    move v2, v3

    :cond_5fd
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1447
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mSetTimeSlot:[J

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->saveTimeSlot([J)V

    .line 1449
    :cond_607
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    if-eqz v2, :cond_b3e

    .line 1450
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1451
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b3e

    .line 1401
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :sswitch_61b
    const-string v0, "MtkGsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhoneId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", subId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1403
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string v1, "MtkGsmCdmaPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE]ar.exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_666

    .line 1406
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleCfuInTimeSlotQueryResult([Lcom/mediatek/internal/telephony/MtkCallForwardInfo;)V

    .line 1408
    :cond_666
    const-string v1, "MtkGsmCdmaPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE]msg.arg1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6f1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_6f1

    .line 1411
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1412
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    const-string v4, "MtkGsmCdmaPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE] cmdException error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1412
    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_6d1

    if-eqz v1, :cond_6d1

    .line 1416
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_6d1

    .line 1418
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v3, :cond_6d1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_6d1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1419
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_6d1

    .line 1420
    const/16 v3, 0xd

    .line 1421
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1420
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1425
    :cond_6d1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v2

    if-eqz v2, :cond_6f1

    .line 1426
    if-eqz v1, :cond_6f1

    .line 1427
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_6f1

    .line 1428
    const-string v2, "MtkGsmCdmaPhone"

    const-string v3, "return REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1434
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    :cond_6f1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1435
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_b3e

    .line 1436
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1437
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b3e

    .line 1891
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :sswitch_703
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 1892
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->onRilConnected()V

    .line 1893
    goto/16 :goto_b3e

    .line 1896
    :sswitch_70f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1897
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string v1, "MtkGsmCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ICC_CHANGED, phone id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1897
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v1, :cond_74f

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_b3e

    .line 1901
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_b3e

    .line 1902
    :cond_74f
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_b3e

    .line 1570
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_754
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_ICC_RECORD_EVENTS"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1572
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->processIccRecordEvents(I)V

    .line 1574
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v1

    .line 1575
    .local v1, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    if-eqz v1, :cond_b3e

    .line 1576
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->setIccRecordsReady()V

    goto/16 :goto_b3e

    .line 1883
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    :sswitch_779
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 1884
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOP12()Z

    move-result v0

    if-eqz v0, :cond_b3e

    .line 1887
    const/16 v0, 0x3ee

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b3e

    .line 1812
    :sswitch_78f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_7c8

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_7b5

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1813
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_7b5

    const-string v0, "OP12"

    const-string v1, "persist.vendor.operator.optr"

    const-string v4, ""

    .line 1814
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c8

    .line 1815
    :cond_7b5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInEcm()Z

    move-result v0

    .line 1816
    .local v0, "inEcm":Z
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 1817
    if-nez v0, :cond_7c6

    .line 1824
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setInternalDataEnabled(Z)V

    .line 1825
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 1827
    .end local v0    # "inEcm":Z
    :cond_7c6
    goto/16 :goto_b3e

    .line 1829
    :cond_7c8
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 1831
    goto/16 :goto_b3e

    .line 1581
    :sswitch_7cd
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "EVENT_SET_CLIR_COMPLETE"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1583
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7e1

    .line 1584
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->saveClirSetting(I)V

    .line 1587
    :cond_7e1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_897

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_897

    .line 1588
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1589
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1590
    .restart local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    const-string v3, "MtkGsmCdmaPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_CLIR_COMPLETE: cmdException error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_897

    .line 1593
    if-eqz v1, :cond_897

    .line 1594
    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-nez v3, :cond_821

    sget-object v3, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP02:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v3

    if-eqz v3, :cond_83c

    .line 1595
    :cond_821
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtError(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_83c

    .line 1596
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return REQUEST_NOT_SUPPORTED"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_897

    .line 1599
    :cond_83c
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_890

    .line 1600
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_897

    .line 1601
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_897

    .line 1603
    nop

    .line 1604
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1605
    .restart local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v4, 0x0

    .line 1606
    .local v4, "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_88f

    .line 1607
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v4

    .line 1608
    if-eqz v4, :cond_88f

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_88f

    .line 1609
    const-string v5, "MtkGsmCdmaPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create OEM error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", msg ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1615
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_88f
    goto :goto_897

    .line 1617
    :cond_890
    const-string v3, "MtkGsmCdmaPhone"

    const-string v4, "return Original Error"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_897
    :goto_897
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1624
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_b3e

    .line 1625
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1626
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b3e

    .line 1789
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :sswitch_8a9
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 1790
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_b3e

    .line 1791
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1793
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string v4, "persist.vendor.radio.disable_auto_return_rplmn"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_8c0

    .line 1794
    move v4, v3

    goto :goto_8c1

    :cond_8c0
    move v4, v2

    .line 1795
    .local v4, "disable_auto_return_rplmn":Z
    :goto_8c1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110195

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    xor-int/2addr v5, v3

    .line 1797
    .local v5, "restoreSelection":Z
    if-nez v0, :cond_8d2

    goto :goto_8d8

    .line 1798
    :cond_8d2
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8d7

    goto :goto_8d8

    :cond_8d7
    move v2, v3

    :goto_8d8
    nop

    .line 1799
    .local v2, "exception":Z
    const-string v3, "MtkGsmCdmaPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_SET_NETWORK_MANUAL_COMPLETE, restoreSelection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", disable_auto_return_rplmn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    if-nez v5, :cond_90d

    if-eqz v2, :cond_90d

    if-nez v4, :cond_90d

    .line 1804
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->clearSavedNetworkSelection()V

    .line 1805
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1807
    .end local v2    # "exception":Z
    .end local v4    # "disable_auto_return_rplmn":Z
    .end local v5    # "restoreSelection":Z
    :cond_90d
    goto/16 :goto_b3e

    .line 1287
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_90f
    const-string v0, "MtkGsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1289
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_943

    .line 1290
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    goto :goto_9a4

    .line 1292
    :cond_943
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_9a4

    .line 1293
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1294
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1295
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v3

    if-eqz v3, :cond_9a4

    .line 1296
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9a4

    .line 1297
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9a4

    .line 1299
    nop

    .line 1300
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v3

    .line 1301
    .restart local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v4, 0x0

    .line 1302
    .local v4, "errorMsg":Ljava/lang/String;
    if-eqz v3, :cond_9a4

    .line 1303
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v4

    .line 1304
    if-eqz v4, :cond_9a4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9a4

    .line 1305
    const-string v5, "MtkGsmCdmaPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create OEM error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", msg ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1315
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v3    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_9a4
    :goto_9a4
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1316
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_b3e

    .line 1317
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1318
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b3e

    .line 1324
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :sswitch_9b6
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_a55

    .line 1325
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1326
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1327
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;

    .line 1328
    .local v4, "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_9e2

    if-eqz v1, :cond_9e2

    .line 1329
    iget v5, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mServiceClass:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_a41

    .line 1330
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_9dc

    move v2, v3

    :cond_9dc
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_a41

    .line 1333
    :cond_9e2
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_a41

    .line 1334
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 1335
    .local v2, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 1336
    .local v3, "err":Lcom/android/internal/telephony/CommandException$Error;
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtErrorHasMsg(Lcom/android/internal/telephony/CommandException$Error;)Z

    move-result v5

    if-eqz v5, :cond_a41

    .line 1337
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a41

    .line 1338
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a41

    .line 1340
    nop

    .line 1341
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v5

    .line 1342
    .local v5, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v6, 0x0

    .line 1343
    .local v6, "errorMsg":Ljava/lang/String;
    if-eqz v5, :cond_a41

    .line 1344
    invoke-virtual {v5, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v6

    .line 1345
    if-eqz v6, :cond_a41

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a41

    .line 1346
    const-string v7, "MtkGsmCdmaPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create OEM error = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", msg ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    new-instance v7, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v7, v3, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    iput-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1356
    .end local v2    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v3    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v5    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v6    # "errorMsg":Ljava/lang/String;
    :cond_a41
    :goto_a41
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    if-eqz v2, :cond_b3e

    .line 1357
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1358
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b3e

    .line 1364
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    :cond_a55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1365
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1366
    .restart local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;

    .line 1367
    .restart local v4    # "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_abd

    if-eqz v1, :cond_abd

    .line 1372
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->queryCFUAgainAfterSet()Z

    move-result v5

    if-eqz v5, :cond_ab3

    .line 1373
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_aab

    .line 1374
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1375
    .local v5, "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v5, :cond_aa3

    array-length v6, v5

    if-nez v6, :cond_a7f

    goto :goto_aa3

    .line 1378
    :cond_a7f
    const-string v6, "MtkGsmCdmaPhone"

    const-string v7, "[EVENT_SET_CALL_FORWARD_DONE] check cfinfo"

    invoke-static {v6, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a87
    array-length v7, v5

    if-ge v6, v7, :cond_aaa

    .line 1380
    aget-object v7, v5, v6

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_aa0

    .line 1381
    aget-object v7, v5, v6

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v3, :cond_a98

    move v2, v3

    :cond_a98
    aget-object v7, v5, v6

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1383
    goto :goto_aaa

    .line 1379
    :cond_aa0
    add-int/lit8 v6, v6, 0x1

    goto :goto_a87

    .line 1376
    .end local v6    # "i":I
    :cond_aa3
    :goto_aa3
    const-string v2, "MtkGsmCdmaPhone"

    const-string v3, "cfinfo is null or length is 0."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    .end local v5    # "cfinfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_aaa
    :goto_aaa
    goto :goto_abd

    .line 1388
    :cond_aab
    const-string v2, "MtkGsmCdmaPhone"

    const-string v3, "EVENT_SET_CALL_FORWARD_DONE: ar.result is null."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_abd

    .line 1391
    :cond_ab3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_ab8

    move v2, v3

    :cond_ab8
    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1394
    :cond_abd
    :goto_abd
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    if-eqz v2, :cond_b3e

    .line 1395
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1396
    iget-object v2, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b3e

    .line 1861
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    :sswitch_ad1
    const-string v0, "(unknown msg)"

    .line 1862
    .local v0, "msgStr":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_adc

    .line 1863
    const-string v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    goto :goto_ae4

    .line 1864
    :cond_adc
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_ae4

    .line 1865
    const-string v0, "EVENT_MODEM_RESET"

    .line 1867
    :cond_ae4
    :goto_ae4
    const-string v1, "MtkGsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "received."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    invoke-virtual {p0, v2, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setEccRadioOnStatus(ZZ)V

    .line 1869
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 1870
    goto :goto_b3e

    .line 1855
    .end local v0    # "msgStr":Ljava/lang/String;
    :sswitch_b01
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 1856
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->updateVoiceMail()V

    .line 1857
    goto :goto_b3e

    .line 1207
    :sswitch_b08
    const-string v0, "Event EVENT_SSN Received"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_b3e

    .line 1209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1210
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 1213
    .local v2, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget v4, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-ne v4, v3, :cond_b29

    .line 1214
    iget v3, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    if-nez v3, :cond_b29

    .line 1215
    const-string v1, "skip AOSP event for MT forwarded call notification"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1216
    goto :goto_b3e

    .line 1221
    :cond_b29
    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v1, v2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 1223
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-nez v1, :cond_b39

    .line 1224
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 1227
    :cond_b39
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1910
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :cond_b3e
    :goto_b3e
    return-void

    nop

    :sswitch_data_b40
    .sparse-switch
        0x2 -> :sswitch_b08
        0x3 -> :sswitch_b01
        0x8 -> :sswitch_ad1
        0xc -> :sswitch_9b6
        0xd -> :sswitch_90f
        0x10 -> :sswitch_8a9
        0x12 -> :sswitch_7cd
        0x19 -> :sswitch_78f
        0x1a -> :sswitch_779
        0x1d -> :sswitch_754
        0x1e -> :sswitch_70f
        0x29 -> :sswitch_703
        0x2d -> :sswitch_ad1
        0x6d -> :sswitch_61b
        0x6e -> :sswitch_5e2
        0x6f -> :sswitch_5b3
        0x12d -> :sswitch_4b1
        0x12e -> :sswitch_403
        0x3e9 -> :sswitch_3b1
        0x3ea -> :sswitch_361
        0x3eb -> :sswitch_2d6
        0x3ec -> :sswitch_2c6
        0x3ed -> :sswitch_2ab
        0x3ee -> :sswitch_291
        0x7d0 -> :sswitch_285
        0x7d1 -> :sswitch_280
        0x7d4 -> :sswitch_1ac
        0x7d5 -> :sswitch_e1
        0x7d6 -> :sswitch_d
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .registers 6
    .param p1, "dialString"    # Ljava/lang/String;

    .line 2208
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 2209
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    move-result-object v0

    .local v0, "mmi":Lcom/android/internal/telephony/MmiCode;
    goto :goto_20

    .line 2211
    .end local v0    # "mmi":Lcom/android/internal/telephony/MmiCode;
    :cond_14
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v0

    .line 2214
    .restart local v0    # "mmi":Lcom/android/internal/telephony/MmiCode;
    :goto_20
    if-eqz v0, :cond_5f

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->isPinPukCommand()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2215
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePinMmi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mmi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->dumpPendingMmi()V

    .line 2218
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2220
    :try_start_58
    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->processCode()V
    :try_end_5b
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 2223
    goto :goto_5d

    .line 2221
    :catch_5c
    move-exception v1

    .line 2224
    :goto_5d
    const/4 v1, 0x1

    return v1

    .line 2226
    :cond_5f
    const-string v1, "Mmi is null or unrecognized!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2227
    const/4 v1, 0x0

    return v1
.end method

.method public hangupAll()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangupAll()V

    .line 921
    return-void
.end method

.method protected initOnce(Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 5
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 530
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->initOnce(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 533
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-nez v0, :cond_14

    .line 537
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 539
    :cond_14
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0x3ea

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 540
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0x3eb

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnCallRelatedSuppSvc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 541
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0x3ed

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 542
    return-void
.end method

.method protected initRatSpecific(I)V
    .registers 4
    .param p1, "precisePhoneType"    # I

    .line 5228
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->initRatSpecific(I)V

    .line 5229
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5231
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getInEcmMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsPhoneInEcmState:Z

    .line 5232
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsPhoneInEcmState:Z

    if-eqz v0, :cond_19

    .line 5234
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 5237
    :cond_19
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 5345
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 5346
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 5448
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 5449
    return-void
.end method

.method public isCdmaLessDevice()Z
    .registers 6

    .line 5423
    const/4 v0, 0x0

    .line 5424
    .local v0, "isCdmaLess":Z
    const-string v1, "persist.vendor.vzw_device_type"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 5425
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5426
    :cond_1d
    const/4 v0, 0x1

    .line 5428
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdmaLess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5429
    return v0
.end method

.method public isDataSuspended()Z
    .registers 3

    .line 522
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 523
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    if-eqz v0, :cond_11

    .line 524
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 526
    :cond_11
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isDataSuspended()Z

    move-result v1

    return v1
.end method

.method public isDuringImsCall()Z
    .registers 8

    .line 4002
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 4003
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 4004
    .local v0, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 4005
    .local v2, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 4006
    .local v3, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_39

    .line 4007
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_39

    :cond_37
    move v4, v1

    goto :goto_3a

    :cond_39
    :goto_39
    move v4, v5

    .line 4008
    .local v4, "isDuringImsCall":Z
    :goto_3a
    if-eqz v4, :cond_44

    .line 4009
    const-string v1, "MtkGsmCdmaPhone"

    const-string v6, "During IMS call."

    invoke-static {v1, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    return v5

    .line 4013
    .end local v0    # "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    .end local v2    # "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    .end local v3    # "ringingCallState":Lcom/android/internal/telephony/Call$State;
    .end local v4    # "isDuringImsCall":Z
    :cond_44
    return v1
.end method

.method public isDuringImsEccCall()Z
    .registers 4

    .line 4024
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 4025
    .local v0, "isInImsEccCall":Z
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInImsEccCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    return v0
.end method

.method public isDuringVoLteCall()Z
    .registers 5

    .line 4017
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 4018
    .local v0, "isOnLtePdn":Z
    :goto_11
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsCall()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    .line 4019
    .local v1, "r":Z
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDuringVoLteCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    return v1
.end method

.method public isEccSelectedPhone()Z
    .registers 2

    .line 5643
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsEccSelectedPhone:Z

    return v0
.end method

.method public isEnableXcapHttpResponse409()Z
    .registers 6

    .line 4525
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4526
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4527
    const-string v2, "isEnableXcapHttpResponse409, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4528
    const/4 v1, 0x0

    return v1

    .line 4531
    :cond_13
    const/4 v2, 0x0

    .line 4532
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isEnableXcapHttpResponse409(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4533
    const/4 v2, 0x1

    .line 4535
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableXcapHttpResponse409: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4536
    return v2
.end method

.method public isGsmSsPrefer()Z
    .registers 3

    .line 5063
    const-string v0, "persist.vendor.mtk_ct_volte_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    .line 5064
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_11
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP117:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5065
    :cond_19
    const/4 v0, 0x1

    return v0

    .line 5067
    :cond_1b
    return v1
.end method

.method public isGsmUtSupport()Z
    .registers 9

    .line 4356
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4357
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 4358
    const-string v2, "MtkGsmCdmaPhone"

    const-string v3, "isGsmUtSupport, ssConf is null, return false"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4359
    return v1

    .line 4362
    :cond_13
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 4363
    .local v2, "isRoaming":Z
    const-string v3, "persist.vendor.ims_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 4364
    const-string v3, "persist.vendor.volte_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 4365
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isGsmUtSupport(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUsimCard()Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 4366
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x1

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v3

    if-eqz v3, :cond_54

    move v3, v4

    goto :goto_55

    :cond_54
    move v3, v1

    .line 4367
    .local v3, "isWfcEnable":Z
    :goto_55
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v5

    .line 4368
    .local v5, "isWfcUtSupport":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in isGsmUtSupport isWfcEnable -->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isWfcUtSupport-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4370
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNeedCheckImsWhenRoaming(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a8

    if-eqz v2, :cond_a8

    .line 4371
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isIMSRegistered()Z

    move-result v6

    if-nez v6, :cond_a8

    .line 4372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in isGsmUtSupport isRoaming -->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isIMSRegistered-->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4373
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isIMSRegistered()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4372
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4374
    return v1

    .line 4376
    :cond_a8
    if-eqz v3, :cond_ad

    if-nez v5, :cond_ad

    .line 4377
    return v1

    .line 4379
    :cond_ad
    return v4

    .line 4381
    .end local v3    # "isWfcEnable":Z
    .end local v5    # "isWfcUtSupport":Z
    :cond_ae
    return v1
.end method

.method public isIMSRegistered()Z
    .registers 3

    .line 5012
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v0

    .line 5013
    .local v0, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    if-eqz v0, :cond_f

    .line 5014
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getIMSRegistered()Z

    move-result v1

    return v1

    .line 5016
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public isImsRegisteredOnly()Z
    .registers 3

    .line 2349
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2350
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_12

    .line 2351
    const/4 v0, 0x1

    return v0

    .line 2353
    :cond_12
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "isImsRegisteredOnly, false"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    const/4 v0, 0x0

    return v0
.end method

.method public isImsUseEnabled()Z
    .registers 8

    .line 5143
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 5144
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    nop

    .line 5145
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    .line 5146
    .local v1, "isEnhanced4gLteModeSettingEnabledByUser":Z
    const/4 v2, 0x1

    .line 5147
    .local v2, "isWfcEnabledByUser":Z
    const/4 v3, 0x1

    .line 5150
    .local v3, "isNonTtyOrTtyOnVolteEnabled":Z
    if-nez v1, :cond_19

    .line 5151
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v2

    .line 5152
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v3

    .line 5154
    :cond_19
    if-nez v1, :cond_22

    if-eqz v2, :cond_20

    if-eqz v3, :cond_20

    goto :goto_22

    :cond_20
    const/4 v4, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v4, 0x1

    .line 5156
    .local v4, "imsUseEnabled":Z
    :goto_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isImsUseEnabled() VolteEnableByUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", WfcEnableByUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isNonTtyOrTtyOnVolteEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MtkGsmCdmaPhone"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5160
    return v4
.end method

.method protected isImsUtEnabledOverCdma()Z
    .registers 3

    .line 2232
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2233
    return v1

    .line 2236
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2238
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 2236
    :goto_1c
    return v1
.end method

.method isInCSCall()Z
    .registers 5

    .line 931
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 932
    .local v0, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 933
    .local v1, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCSRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 935
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 936
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 937
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v3, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v3, 0x1

    .line 935
    :goto_2e
    return v3
.end method

.method public isNoNeedToCSFBWhenIMSRegistered()Z
    .registers 2

    .line 4884
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP02:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isNotSupportUtToCS()Z
    .registers 4

    .line 4598
    const/4 v0, 0x0

    .line 4599
    .local v0, "r":Z
    const-string v1, "persist.vendor.mtk_ct_volte_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    .line 4600
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUsimCard()Z

    move-result v1

    if-nez v1, :cond_20

    :cond_18
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP117:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 4601
    :cond_20
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 4602
    const/4 v0, 0x1

    .line 4604
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotSupportUtToCS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4605
    return v0
.end method

.method public isNotSupportUtToCSforCFUQuery()Z
    .registers 2

    .line 4880
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v0

    return v0
.end method

.method public isNrMapEnabled()Z
    .registers 2

    .line 5626
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/NrMap;->isNrMapEnabled()Z

    move-result v0

    return v0

    .line 5627
    :cond_11
    const-string v0, "isNrMapEnabled mMtkSST == null && mMtkSST.nm == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5628
    const/4 v0, 0x0

    return v0
.end method

.method public isOp129DunChange()Z
    .registers 3

    .line 5607
    nop

    .line 5608
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 5609
    .local v0, "dct":Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    if-eqz v0, :cond_f

    .line 5610
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOp129DunChange()Z

    move-result v1

    return v1

    .line 5612
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public isOpNotSupportCallIdentity()Z
    .registers 6

    .line 4555
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4556
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4557
    const-string v2, "isOpNotSupportCallIdentity, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4558
    const/4 v1, 0x0

    return v1

    .line 4561
    :cond_13
    const/4 v2, 0x0

    .line 4562
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNotSupportCallIdentity(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4563
    const/4 v2, 0x1

    .line 4565
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpNotSupportCallIdentity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    return v2
.end method

.method public isOpNotSupportOCB(Ljava/lang/String;)Z
    .registers 8
    .param p1, "facility"    # Ljava/lang/String;

    .line 4451
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4452
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4453
    const-string v2, "isOpNotSupportOCB, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    const/4 v1, 0x0

    return v1

    .line 4457
    :cond_13
    const/4 v2, 0x0

    .line 4458
    .local v2, "r":Z
    const/4 v3, 0x0

    .line 4459
    .local v3, "isOcb":Z
    const-string v4, "AO"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 4460
    const-string v4, "OI"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 4461
    const-string v4, "OX"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 4462
    :cond_2d
    const/4 v3, 0x1

    .line 4464
    :cond_2e
    if-eqz v3, :cond_3b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNotSupportOCB(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 4465
    const/4 v2, 0x1

    .line 4467
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOpNotSupportOCB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", facility="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4468
    return v2
.end method

.method public isOpNwCW()Z
    .registers 6

    .line 4507
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4508
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4509
    const-string v2, "isOpNwCW, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4510
    const/4 v1, 0x0

    return v1

    .line 4513
    :cond_13
    const/4 v2, 0x0

    .line 4514
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isImsNwCW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4515
    const/4 v2, 0x1

    .line 4517
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpNwCW():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4518
    return v2
.end method

.method public isOpReregisterForCF()Z
    .registers 6

    .line 4570
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4571
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4572
    const-string v2, "isOpReregisterForCF, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    const/4 v1, 0x0

    return v1

    .line 4576
    :cond_13
    const/4 v2, 0x0

    .line 4577
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isReregisterForCF(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4578
    const/4 v2, 0x1

    .line 4580
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpReregisterForCF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    return v2
.end method

.method public isOpTbClir()Z
    .registers 6

    .line 4491
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4492
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4493
    const-string v2, "isOpTbClir, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    const/4 v1, 0x0

    return v1

    .line 4497
    :cond_13
    const/4 v2, 0x0

    .line 4498
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isTbClir(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4499
    const/4 v2, 0x1

    .line 4501
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpTbClir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4502
    return v2
.end method

.method public isOpTbcwWithCS()Z
    .registers 6

    .line 4475
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4476
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4477
    const-string v2, "isOpTbcwWithCS, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    const/4 v1, 0x0

    return v1

    .line 4481
    :cond_13
    const/4 v2, 0x0

    .line 4482
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNotSupportXcap(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4483
    const/4 v2, 0x1

    .line 4485
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpTbcwWithCS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4486
    return v2
.end method

.method public isOpTransferXcap404()Z
    .registers 6

    .line 4540
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4541
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4542
    const-string v2, "isOpTransferXcap404, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    const/4 v1, 0x0

    return v1

    .line 4546
    :cond_13
    const/4 v2, 0x0

    .line 4547
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isTransferXcap404(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4548
    const/4 v2, 0x1

    .line 4550
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpTransferXcap404: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    return v2
.end method

.method public isResetCSFBStatusAfterFlightMode()Z
    .registers 2

    .line 4888
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP02:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    return v0
.end method

.method public isSupportCFUTimeSlot()Z
    .registers 4

    .line 4871
    const/4 v0, 0x0

    .line 4872
    .local v0, "r":Z
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4873
    const/4 v0, 0x1

    .line 4875
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportCFUTimeSlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4876
    return v0
.end method

.method public isSupportSaveCFNumber()Z
    .registers 6

    .line 4662
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4663
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4664
    const-string v2, "isSupportSaveCFNumber, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    const/4 v1, 0x0

    return v1

    .line 4668
    :cond_13
    const/4 v2, 0x0

    .line 4669
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isSupportSaveCFNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4670
    const/4 v2, 0x1

    .line 4672
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportSaveCFNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    return v2
.end method

.method public isWFCUtSupport()Z
    .registers 5

    .line 4390
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4391
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 4392
    const-string v2, "MtkGsmCdmaPhone"

    const-string v3, "isWFCUtSupport, ssConf is null, return false"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    return v1

    .line 4396
    :cond_13
    const-string v2, "persist.vendor.ims_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 4397
    const-string v2, "persist.vendor.mtk_wfc_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 4398
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isNotSupportWFCUt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 4399
    return v1

    .line 4401
    :cond_38
    const/4 v1, 0x1

    return v1

    .line 4404
    :cond_3a
    return v1
.end method

.method public iwlanSetRegisterCellularQualityReport(II[ILandroid/os/Message;)V
    .registers 6
    .param p1, "qualityRegister"    # I
    .param p2, "type"    # I
    .param p3, "values"    # [I
    .param p4, "result"    # Landroid/os/Message;

    .line 5593
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->iwlanSetRegisterCellularQualityReport(II[ILandroid/os/Message;)V

    .line 5594
    return-void
.end method

.method public manuallySetNrMap(I)V
    .registers 3
    .param p1, "i"    # I

    .line 5621
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/NrMap;->manuallySetNrMap(I)V

    goto :goto_15

    .line 5622
    :cond_10
    const-string v0, "manuallySetNrMap mMtkSST == null && mMtkSST.nm == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5623
    :goto_15
    return-void
.end method

.method protected needResetPhbIntMgr()Z
    .registers 2

    .line 5188
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .registers 5

    .line 2184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 2185
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 2186
    .local v1, "simState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCallForwardingIndicator: sim state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2a

    .line 2192
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 2194
    :cond_2a
    return-void
.end method

.method public notifyCallForwardingIndicatorWithoutCheckSimState()V
    .registers 3

    .line 2201
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "notifyCallForwardingIndicatorWithoutCheckSimState"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 2203
    return-void
.end method

.method protected notifyImsPhoneHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V
    .registers 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .line 5786
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    .line 5787
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    .line 5789
    :cond_9
    return-void
.end method

.method public notifyMtkFakeServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V
    .registers 3
    .param p1, "ss"    # Lmediatek/telephony/MtkServiceState;

    .line 5550
    if-nez p1, :cond_6

    .line 5551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->enableFakeSS:Z

    goto :goto_10

    .line 5553
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->enableFakeSS:Z

    .line 5554
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->notifyMtkServiceState(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)V

    .line 5556
    :goto_10
    return-void
.end method

.method public notifyMtkServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V
    .registers 3
    .param p1, "ss"    # Lmediatek/telephony/MtkServiceState;

    .line 5562
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->notifyMtkServiceState(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)V

    .line 5566
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 5567
    .local v0, "dct":Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    if-eqz v0, :cond_13

    .line 5568
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyMtkServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V

    .line 5571
    :cond_13
    return-void
.end method

.method public notifyMtkSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 3
    .param p1, "ss"    # Landroid/telephony/SignalStrength;

    .line 5574
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->notifyMtkSignalStrength(Lcom/android/internal/telephony/Phone;Landroid/telephony/SignalStrength;)V

    .line 5575
    return-void
.end method

.method public notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 5538
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 5539
    .local v0, "mtkSST":Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->enableFakeSS:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->once_pollState_done:Z

    if-eqz v1, :cond_10

    .line 5540
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_15

    .line 5542
    :cond_10
    const-string v1, "notifyServiceStateChanged, skip"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5544
    :goto_15
    return-void
.end method

.method protected onCheckForNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 9
    .param p1, "fromRil"    # Landroid/os/Message;

    .line 5073
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 5074
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 5075
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x1

    .line 5076
    .local v2, "doAutomatic":Z
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_32

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_32

    .line 5078
    :try_start_11
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 5079
    .local v3, "modes":[I
    const/4 v4, 0x0

    aget v4, v3, v4

    if-nez v4, :cond_30

    .line 5081
    const/4 v2, 0x0

    .line 5083
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    check-cast v4, Lmediatek/telephony/MtkServiceState;

    .line 5084
    .local v4, "mss":Lmediatek/telephony/MtkServiceState;
    invoke-virtual {v4}, Lmediatek/telephony/MtkServiceState;->getCellularRegState()I

    move-result v5

    if-eqz v5, :cond_30

    .line 5086
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->ABORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_30} :catch_31

    .line 5091
    .end local v3    # "modes":[I
    .end local v4    # "mss":Lmediatek/telephony/MtkServiceState;
    :cond_30
    goto :goto_32

    .line 5089
    :catch_31
    move-exception v3

    .line 5097
    :cond_32
    :goto_32
    new-instance v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>()V

    .line 5098
    .local v3, "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    iput-object v1, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 5099
    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 5100
    iput-object v4, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 5101
    iput-object v4, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    .line 5103
    if-eqz v2, :cond_4f

    .line 5104
    const/16 v4, 0x11

    invoke-virtual {p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 5105
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 5106
    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_5b

    .line 5107
    :cond_4f
    const-string v4, "MtkGsmCdmaPhone"

    const-string v5, "setNetworkSelectionModeAutomatic - already auto, ignoring"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5108
    iput-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 5109
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    .line 5112
    :goto_5b
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    .line 5113
    return-void
.end method

.method protected onIncomingUSSD(ILjava/lang/String;)V
    .registers 10
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 4301
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4302
    const-string v0, "onIncomingUSSD: not expected on GSM"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 4308
    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    move v2, v0

    .line 4311
    .local v2, "isUssdRequest":Z
    :goto_12
    if-eqz p1, :cond_18

    if-eq p1, v1, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v0

    .line 4315
    .local v3, "isUssdError":Z
    :goto_19
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1d

    move v0, v1

    .line 4321
    .local v0, "isUssdRelease":Z
    :cond_1d
    const/4 v1, 0x0

    .line 4322
    .local v1, "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "s":I
    :goto_25
    if-ge v4, v5, :cond_42

    .line 4323
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 4324
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 4325
    goto :goto_42

    .line 4322
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 4329
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_42
    :goto_42
    if-eqz v1, :cond_48

    .line 4330
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->onIncomingUSSD(ILjava/lang/String;)V

    goto :goto_61

    .line 4331
    :cond_48
    if-nez v3, :cond_50

    if-eqz p2, :cond_50

    .line 4332
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->onIncomingUSSD(ILjava/lang/String;)V

    goto :goto_61

    .line 4333
    :cond_50
    if-eqz v3, :cond_61

    .line 4335
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4338
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4335
    invoke-static {p2, v2, p0, v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->newNetworkInitiatedUssdError(Ljava/lang/String;ZLcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    move-result-object v4

    .line 4339
    .local v4, "mmi":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V

    .line 4341
    .end local v4    # "mmi":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :cond_61
    :goto_61
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .registers 6

    .line 558
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onUpdateIccAvailability()V

    .line 560
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 561
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 564
    .local v1, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    goto :goto_18

    :cond_17
    move-object v3, v2

    .line 565
    .local v3, "newIccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_18
    if-ne v1, v0, :cond_7b

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_7b

    .line 568
    if-eqz v1, :cond_43

    .line 570
    const-string v4, "Removing stale icc objects."

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 572
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 573
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->unregisterForIccRecordEvents()V

    .line 574
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 576
    :cond_39
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 577
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 579
    :cond_43
    if-eqz v0, :cond_7b

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Uicc application found. type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 583
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 584
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 585
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->registerForIccRecordEvents()V

    .line 586
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 592
    :cond_7b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPhoneTypeCdmaLte:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isCdmaWithoutLteCard: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mNewVoiceTech: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNewVoiceTech:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNewVoiceTech:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_d9

    .line 595
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v2

    if-nez v2, :cond_d4

    .line 596
    :cond_c8
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v2

    if-nez v2, :cond_d9

    .line 597
    :cond_d4
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNewVoiceTech:I

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->updatePhoneObject(I)V

    .line 600
    :cond_d9
    return-void
.end method

.method protected phoneObjectUpdater(I)V
    .registers 2
    .param p1, "newVoiceRadioTech"    # I

    .line 5350
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mNewVoiceTech:I

    .line 5351
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    .line 5352
    return-void
.end method

.method protected processIccRecordEvents(I)V
    .registers 4
    .param p1, "eventCode"    # I

    .line 4893
    packed-switch p1, :pswitch_data_14

    .line 4899
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->processIccRecordEvents(I)V

    goto :goto_12

    .line 4895
    :pswitch_7
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "processIccRecordEvents"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4896
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 4897
    nop

    .line 4901
    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public queryCFUAgainAfterSet()Z
    .registers 6

    .line 4856
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServConf(I)Lcom/mediatek/internal/telephony/MtkSuppServConf;

    move-result-object v0

    .line 4857
    .local v0, "ssConf":Lcom/mediatek/internal/telephony/MtkSuppServConf;
    const-string v1, "MtkGsmCdmaPhone"

    if-nez v0, :cond_13

    .line 4858
    const-string v2, "queryCFUAgainAfterSet, ssConf is null, return false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4859
    const/4 v1, 0x0

    return v1

    .line 4862
    :cond_13
    const/4 v2, 0x0

    .line 4863
    .local v2, "r":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->isQueryCFUAgainAfterSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4864
    const/4 v2, 0x1

    .line 4866
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCFUAgainAfterSet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    return v2
.end method

.method public queryFemtoCellSystemSelectionMode(Landroid/os/Message;)V
    .registers 4
    .param p1, "response"    # Landroid/os/Message;

    .line 809
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "queryFemtoCellSystemSelectionMode()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->queryFemtoCellSystemSelectionMode(Landroid/os/Message;)V

    .line 811
    return-void
.end method

.method public queryPhbStorageInfo(ILandroid/os/Message;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2074
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2075
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2076
    invoke-static {p2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->getPhbRecordInfo(Landroid/os/Message;)V

    goto :goto_13

    .line 2079
    :cond_e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 2081
    :goto_13
    return-void
.end method

.method protected reapplyUiccAppsEnablementIfNeeded(I)V
    .registers 8
    .param p1, "retries"    # I

    .line 5672
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->reapplyUiccAppsEnablementIfNeeded(I)V

    .line 5674
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    .line 5676
    .local v0, "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_65

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_1a

    goto :goto_65

    .line 5688
    :cond_1a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 5689
    .local v1, "iccId":Ljava/lang/String;
    if-nez v1, :cond_26

    .line 5690
    const-string v2, "reapplyUiccAppsEnablementIfNeeded(), iccid is null"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5691
    return-void

    .line 5694
    :cond_26
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 5695
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5694
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoForIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 5697
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_36

    const/4 v3, 0x1

    goto :goto_3a

    :cond_36
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v3

    .line 5698
    .local v3, "expectedValue":Z
    :goto_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reapplyUiccAppsEnablementIfNeeded(), expectedValue ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,mUiccApplicationsEnabled ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ,iccId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5700
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5698
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5701
    return-void

    .line 5678
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v2    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "expectedValue":Z
    :cond_65
    :goto_65
    if-nez v0, :cond_7e

    .line 5679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reapplyUiccAppsEnablementIfNeeded(), slot is null ,mUiccApplicationsEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_a0

    .line 5682
    :cond_7e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reapplyUiccAppsEnablementIfNeeded(), CardState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mUiccApplicationsEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5685
    :goto_a0
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 950
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 951
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1955
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1956
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    if-eqz v0, :cond_11

    .line 1957
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1958
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 1960
    :cond_11
    return-void
.end method

.method public registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2090
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2091
    return-void
.end method

.method public registerForOemIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 5778
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mOemIndRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5779
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1971
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1974
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    if-eqz v0, :cond_13

    .line 1975
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 1979
    :cond_13
    return-void
.end method

.method public registerImsEventForConcurrency()V
    .registers 3

    .line 489
    const-string v0, "registerImsEventForConcurrency"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 492
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    if-eqz v0, :cond_17

    .line 493
    const-string v1, "notify dcHelper.registerImsEvents"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->registerImsEvents(I)V

    .line 497
    :cond_17
    return-void
.end method

.method public resetAllPhoneEccRadioOnStatus()V
    .registers 7

    .line 5661
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_1a

    aget-object v4, v0, v3

    .line 5662
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_17

    instance-of v5, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v5, :cond_17

    .line 5663
    move-object v5, v4

    check-cast v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5, v2, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setEccRadioOnStatus(ZZ)V

    .line 5661
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 5666
    :cond_1a
    return-void
.end method

.method public saveTimeSlot([J)V
    .registers 7
    .param p1, "timeSlot"    # [J

    .line 2720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.timeslot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2721
    .local v0, "timeSlotKey":Ljava/lang/String;
    const-string v1, ""

    .line 2722
    .local v1, "timeSlotString":Ljava/lang/String;
    if-eqz p1, :cond_3d

    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3d

    .line 2723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2725
    :cond_3d
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeSlotString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V
    .registers 5
    .param p1, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectFemtoCell(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V

    .line 802
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .registers 10
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "persistSelection"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 683
    new-instance v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>()V

    .line 684
    .local v0, "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    iput-object p3, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 685
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 686
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 687
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    .line 689
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 690
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTK GSMPhone selectNetworkManuallyWithAct:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5b

    .line 693
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const-string v4, "2G"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 694
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v2, v4, v5, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_d0

    .line 696
    :cond_5b
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 697
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const-string v4, "3G"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 698
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v2, v4, v5, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_d0

    .line 700
    :cond_79
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_97

    .line 701
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const-string v4, "4G"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 702
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "7"

    invoke-virtual {v2, v4, v5, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_d0

    .line 704
    :cond_97
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b5

    .line 705
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const-string v4, "5G"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 706
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "11"

    invoke-virtual {v2, v4, v5, v3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_d0

    .line 709
    :cond_b5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 710
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getRan()I

    move-result v4

    .line 709
    invoke-interface {v2, v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_d0

    .line 713
    :cond_c3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getRan()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V

    .line 716
    :goto_d0
    if-eqz p2, :cond_d6

    .line 717
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    goto :goto_d9

    .line 719
    :cond_d6
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->clearSavedNetworkSelection()V

    .line 722
    :goto_d9
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->updateManualNetworkSelection(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    .line 723
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V
    .registers 5
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 4904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendErrorResponse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4905
    if-eqz p1, :cond_24

    .line 4906
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4907
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4909
    :cond_24
    return-void
.end method

.method public sendExitEmergencyCallbackModeMessage()V
    .registers 3

    .line 5259
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "sendExitEmergencyCallbackModeMessage()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5261
    .local v0, "message":Landroid/os/Message;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 5262
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 5263
    return-void
.end method

.method public sendSubscriptionSettings(Z)V
    .registers 2
    .param p1, "restoreNetworkSelection"    # Z

    .line 674
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loadAllowedNetworksFromSubscriptionDatabase()V

    .line 675
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendSubscriptionSettings(Z)V

    .line 676
    return-void
.end method

.method public setApcMode(IZI)V
    .registers 6
    .param p1, "apcMode"    # I
    .param p2, "reportOn"    # Z
    .param p3, "reportInterval"    # I

    .line 1913
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1914
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setApcMode(IZILandroid/os/Message;)V

    goto :goto_14

    .line 1916
    :cond_d
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "setApcMode: not possible in CDMA"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :goto_14
    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .registers 11
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 3865
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 3867
    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .registers 14
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "serviceClass"    # I

    .line 3853
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v7

    .line 3854
    .local v7, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v7, :cond_15

    .line 3855
    nop

    .line 3856
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v6

    .line 3855
    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V

    goto :goto_1f

    .line 3858
    :cond_15
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "ssQueueHelper not exist, setCallBarring"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    invoke-virtual/range {p0 .. p5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallBarringInternal(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 3861
    :goto_1f
    return-void
.end method

.method public setCallBarringInternal(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .registers 16
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "serviceClass"    # I

    .line 3871
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    .line 3949
    :cond_d
    const-string v0, "method setFacilityLock is NOT supported in CDMA!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3950
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p4, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3951
    return-void

    .line 3872
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3875
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 3876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallBarring enter, facility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceClass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lockState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    const/16 v1, 0x7d5

    invoke-virtual {p0, v1, p4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 3881
    .local v8, "resp":Landroid/os/Message;
    if-eqz v0, :cond_72

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_68

    .line 3882
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 3883
    :cond_68
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v8

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 3884
    return-void

    .line 3887
    :cond_72
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p5

    move-object v7, v8

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 3888
    return-void

    .line 3892
    .end local v8    # "resp":Landroid/os/Message;
    :cond_7d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_de

    if-eqz v0, :cond_de

    .line 3894
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_95

    .line 3895
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_de

    .line 3896
    :cond_95
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_a7

    .line 3897
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_de

    .line 3898
    :cond_a7
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportOCB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 3899
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p4, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3900
    return-void

    .line 3903
    :cond_b3
    const/16 v1, 0x9

    invoke-static {v1, p4}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v7

    .line 3905
    .local v7, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3906
    move v8, p2

    .line 3907
    .local v8, "enableState":I
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3908
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3909
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3910
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 3912
    .local v9, "imsUtResult":Landroid/os/Message;
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v9

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 3913
    return-void

    .line 3916
    .end local v7    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v8    # "enableState":I
    .end local v9    # "imsUtResult":Landroid/os/Message;
    :cond_de
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_f5

    .line 3917
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 3918
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p5

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 3920
    return-void

    .line 3923
    :cond_f5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_100

    .line 3924
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 3928
    :cond_100
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 3929
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p4, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3930
    return-void

    .line 3933
    :cond_10c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_118

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_120

    .line 3934
    :cond_118
    if-eqz p4, :cond_120

    .line 3935
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p4, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3936
    return-void

    .line 3940
    :cond_120
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->checkUiccApplicationForCB()Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 3941
    .local v1, "checkError":Lcom/android/internal/telephony/CommandException;
    if-eqz v1, :cond_130

    if-eqz p4, :cond_130

    .line 3942
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    invoke-virtual {p0, p4, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3943
    return-void

    .line 3946
    :cond_130
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3947
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v8

    .line 3946
    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    move-object v9, p4

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 3948
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    .end local v1    # "checkError":Lcom/android/internal/telephony/CommandException;
    nop

    .line 3953
    return-void
.end method

.method public setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    .registers 25
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "timeSlot"    # [J
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 2825
    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 2826
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    move-object v15, v1

    check-cast v15, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2829
    .local v15, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x6e

    if-eqz v1, :cond_a1

    .line 2830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallForwardInTimeSlot enter, CFReason:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", CFAction:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dialingNumber:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", timerSeconds:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    if-eqz v15, :cond_75

    .line 2835
    invoke-virtual {v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_62

    .line 2836
    invoke-virtual {v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 2837
    :cond_62
    move-object v1, v15

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V

    .line 2840
    return-void

    .line 2843
    :cond_75
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v1

    if-eqz v1, :cond_a0

    if-nez v10, :cond_a0

    .line 2846
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;

    invoke-direct {v1, v11, v13, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;-><init>(Ljava/lang/String;[JLandroid/os/Message;)V

    move-object v8, v1

    .line 2847
    .local v8, "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    nop

    .line 2848
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCfEnable(I)Z

    move-result v1

    .line 2847
    invoke-virtual {v0, v3, v1, v2, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 2850
    .local v16, "resp":Landroid/os/Message;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x1

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v17, v8

    .end local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .local v17, "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    move-object/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/internal/telephony/MtkRIL;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    .line 2858
    .end local v16    # "resp":Landroid/os/Message;
    .end local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :cond_a0
    return-void

    .line 2862
    :cond_a1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_100

    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    .line 2863
    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v1

    if-eqz v1, :cond_100

    if-eqz v15, :cond_100

    .line 2864
    invoke-virtual {v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_100

    .line 2865
    invoke-virtual {v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_cd

    .line 2866
    invoke-virtual {v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_100

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 2867
    :cond_cd
    const/16 v1, 0x11

    invoke-static {v1, v14}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v8

    .line 2869
    .local v8, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2870
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2871
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2872
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2873
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 2874
    .local v16, "imsUtResult":Landroid/os/Message;
    move-object v1, v15

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V

    .line 2877
    return-void

    .line 2880
    .end local v8    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v16    # "imsUtResult":Landroid/os/Message;
    :cond_100
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v1

    if-eqz v1, :cond_143

    if-nez v10, :cond_143

    .line 2883
    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;

    invoke-direct {v1, v11, v13, v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;-><init>(Ljava/lang/String;[JLandroid/os/Message;)V

    move-object v8, v1

    .line 2884
    .local v8, "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    nop

    .line 2885
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCfEnable(I)Z

    move-result v1

    .line 2884
    invoke-virtual {v0, v3, v1, v2, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 2887
    .local v16, "resp":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_13b

    .line 2888
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_138

    .line 2889
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    const/4 v4, 0x1

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v17, v8

    .end local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .restart local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    move-object/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    goto :goto_142

    .line 2888
    .end local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .restart local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :cond_138
    move-object/from16 v17, v8

    .end local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .restart local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    goto :goto_13d

    .line 2887
    .end local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .restart local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :cond_13b
    move-object/from16 v17, v8

    .line 2893
    .end local v8    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    .restart local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :goto_13d
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0, v14, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2896
    .end local v16    # "resp":Landroid/os/Message;
    .end local v17    # "cfuEx":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
    :goto_142
    goto :goto_148

    .line 2897
    :cond_143
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0, v14, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2899
    .end local v15    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :goto_148
    nop

    .line 2904
    return-void

    .line 2900
    :cond_14a
    const-string v1, "method setCallForwardInTimeSlot is NOT supported in CDMA!"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2901
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0, v14, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2902
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 14
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 2525
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingOptionForServiceClass(IILjava/lang/String;IILandroid/os/Message;)V

    .line 2531
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .registers 13
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .line 2490
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingOptionForServiceClass(IILjava/lang/String;IILandroid/os/Message;)V

    .line 2496
    return-void
.end method

.method public setCallForwardingOptionForServiceClass(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 16
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 2504
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v8

    .line 2505
    .local v8, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v8, :cond_16

    .line 2506
    nop

    .line 2508
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v7

    .line 2506
    move-object v0, v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->setCallForwardingOptionForServiceClass(IILjava/lang/String;IILandroid/os/Message;I)V

    goto :goto_20

    .line 2510
    :cond_16
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "ssQueueHelper not exist, setCallForwardingOptionForServiceClass"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    invoke-virtual/range {p0 .. p6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingOptionInternal(IILjava/lang/String;IILandroid/os/Message;)V

    .line 2515
    :goto_20
    return-void
.end method

.method public setCallForwardingOptionInternal(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 24
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 2543
    move-object/from16 v6, p0

    move/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v13, p3

    move/from16 v12, p4

    move/from16 v11, p5

    move-object/from16 v10, p6

    invoke-virtual {v6, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->useSsOverImsExt(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    .line 2548
    invoke-virtual {v6, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCsRetry(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2549
    const-string v5, "UE error."

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardOptionCdmaCs(IILjava/lang/String;Landroid/os/Message;Ljava/lang/String;)V

    .line 2554
    return-void

    .line 2558
    :cond_2a
    iget-object v0, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2561
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eqz v1, :cond_db

    .line 2562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallForwardingOptionForServiceClass enter, CFAction:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", CFReason:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dialingNumber:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    invoke-static/range {p3 .. p3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", timerSeconds:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", serviceClass:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2562
    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    if-eqz v0, :cond_a3

    .line 2568
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_8c

    .line 2569
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-nez v1, :cond_8c

    .line 2571
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v1

    if-eqz v1, :cond_88

    goto :goto_8c

    :cond_88
    move-object v5, v10

    move v4, v11

    move v1, v12

    goto :goto_a6

    .line 2573
    :cond_8c
    :goto_8c
    move-object v7, v0

    check-cast v7, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    move/from16 v8, p1

    move/from16 v9, p2

    move-object v5, v10

    move-object/from16 v10, p3

    move v4, v11

    move/from16 v11, p5

    move v1, v12

    move/from16 v12, p4

    move-object v2, v13

    move-object/from16 v13, p6

    invoke-virtual/range {v7 .. v13}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 2576
    return-void

    .line 2567
    :cond_a3
    move-object v5, v10

    move v4, v11

    move v1, v12

    .line 2579
    :goto_a6
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v7

    if-eqz v7, :cond_d9

    .line 2580
    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 2583
    if-nez v15, :cond_c3

    .line 2584
    new-instance v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;

    invoke-direct {v7, v13, v5, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;I)V

    .line 2585
    .local v7, "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    nop

    .line 2586
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCfEnable(I)Z

    move-result v8

    .line 2585
    invoke-virtual {v6, v2, v8, v3, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2587
    .end local v7    # "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    .local v2, "resp":Landroid/os/Message;
    goto :goto_c5

    .line 2588
    .end local v2    # "resp":Landroid/os/Message;
    :cond_c3
    move-object/from16 v2, p6

    .line 2590
    .restart local v2    # "resp":Landroid/os/Message;
    :goto_c5
    iget-object v7, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object v3, v13

    move-object v13, v2

    invoke-interface/range {v7 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_da

    .line 2580
    .end local v2    # "resp":Landroid/os/Message;
    :cond_d7
    move-object v3, v13

    goto :goto_da

    .line 2579
    :cond_d9
    move-object v3, v13

    .line 2597
    :goto_da
    return-void

    .line 2601
    :cond_db
    move-object v5, v10

    move v4, v11

    move v1, v12

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v7

    if-nez v7, :cond_14a

    if-eqz v0, :cond_14a

    .line 2603
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-eqz v7, :cond_fa

    .line 2604
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v7

    if-eqz v7, :cond_f7

    goto :goto_fa

    :cond_f7
    move v7, v2

    move-object v2, v13

    goto :goto_14c

    .line 2605
    :cond_fa
    :goto_fa
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v7

    if-nez v7, :cond_110

    .line 2606
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v7

    if-eqz v7, :cond_10d

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v7

    if-eqz v7, :cond_10d

    goto :goto_110

    :cond_10d
    move v7, v2

    move-object v2, v13

    goto :goto_14c

    .line 2607
    :cond_110
    :goto_110
    const/16 v2, 0xb

    invoke-static {v2, v5}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v2

    .line 2609
    .local v2, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 2610
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2611
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2612
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2613
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    const/16 v3, 0x7d0

    invoke-virtual {v6, v3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2615
    .local v3, "imsUtResult":Landroid/os/Message;
    move-object v7, v0

    check-cast v7, Lcom/android/internal/telephony/imsphone/ImsPhone;

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p4

    move-object/from16 v16, v2

    move-object v2, v13

    .end local v2    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .local v16, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    move-object v13, v3

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 2618
    return-void

    .line 2601
    .end local v3    # "imsUtResult":Landroid/os/Message;
    .end local v16    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    :cond_14a
    move v7, v2

    move-object v2, v13

    .line 2621
    :goto_14c
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v8

    if-eqz v8, :cond_1db

    .line 2622
    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v8

    if-eqz v8, :cond_1db

    .line 2625
    if-nez v15, :cond_16b

    .line 2626
    new-instance v8, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;

    invoke-direct {v8, v2, v5, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;I)V

    .line 2627
    .local v8, "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    nop

    .line 2628
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCfEnable(I)Z

    move-result v9

    .line 2627
    invoke-virtual {v6, v7, v9, v3, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2629
    .end local v8    # "cfu":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
    .local v7, "resp":Landroid/os/Message;
    move-object/from16 v16, v7

    goto :goto_16f

    .line 2630
    .end local v7    # "resp":Landroid/os/Message;
    :cond_16b
    move-object/from16 v7, p6

    move-object/from16 v16, v7

    .line 2633
    .local v16, "resp":Landroid/os/Message;
    :goto_16f
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v7

    if-nez v7, :cond_1a0

    .line 2634
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v7

    if-eqz v7, :cond_1a0

    .line 2635
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isInCSCall()Z

    move-result v3

    if-eqz v3, :cond_18e

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_18e

    .line 2636
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v6, v5, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2637
    return-void

    .line 2639
    :cond_18e
    iget-object v7, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, v16

    invoke-virtual/range {v7 .. v13}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 2642
    return-void

    .line 2645
    :cond_1a0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1aa

    .line 2646
    invoke-virtual {v6, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 2650
    :cond_1aa
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v3

    if-eqz v3, :cond_1b6

    .line 2651
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v6, v5, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2652
    return-void

    .line 2656
    :cond_1b6
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v3

    if-nez v3, :cond_1c2

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v3

    if-eqz v3, :cond_1ca

    .line 2657
    :cond_1c2
    if-eqz v5, :cond_1ca

    .line 2658
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v6, v5, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2659
    return-void

    .line 2663
    :cond_1ca
    iget-object v7, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, v16

    invoke-interface/range {v7 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 2670
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v16    # "resp":Landroid/os/Message;
    :cond_1db
    goto :goto_1f0

    .line 2672
    :cond_1dc
    move-object v5, v10

    move v4, v11

    move v1, v12

    move-object v2, v13

    const-string v7, "CDMA CS directly."

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardOptionCdmaCs(IILjava/lang/String;Landroid/os/Message;Ljava/lang/String;)V

    .line 2678
    :goto_1f0
    return-void
.end method

.method public setCallSubAddress(ZLandroid/os/Message;)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 5797
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setCallSubAddress(ZLandroid/os/Message;)V

    .line 5798
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 3564
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v0

    .line 3565
    .local v0, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v0, :cond_e

    .line 3566
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->setCallWaiting(ZLandroid/os/Message;I)V

    goto :goto_18

    .line 3568
    :cond_e
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "ssQueueHelper not exist, setCallWaiting"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallWaitingInternal(ZLandroid/os/Message;)V

    .line 3571
    :goto_18
    return-void
.end method

.method public setCallWaitingInternal(ZLandroid/os/Message;)V
    .registers 10
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 3577
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->useSsOverImsExt(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 3582
    sget-object v0, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOp(Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isImsRegisteredOnly()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCardSupportCdma(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3583
    const-string v0, "IMS unregistered."

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallWaitingCdmaCs(ZLandroid/os/Message;Ljava/lang/String;)V

    .line 3584
    return-void

    .line 3588
    :cond_24
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCsRetry(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3589
    const-string v0, "UE error."

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallWaitingCdmaCs(ZLandroid/os/Message;Ljava/lang/String;)V

    .line 3590
    return-void

    .line 3594
    :cond_30
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 3597
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const-string v2, "MtkGsmCdmaPhone"

    const/4 v3, 0x1

    if-eqz v1, :cond_a3

    .line 3598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallWaiting enter, enable:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    if-eqz v0, :cond_6b

    .line 3601
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_67

    .line 3602
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-nez v1, :cond_67

    .line 3604
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 3606
    :cond_67
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 3607
    return-void

    .line 3610
    :cond_6b
    const/4 v1, 0x1

    .line 3611
    .local v1, "serviceClass":I
    nop

    .line 3612
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "carrier_config"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 3613
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 3614
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_89

    .line 3615
    const-string v6, "call_waiting_service_class_int"

    invoke-virtual {v5, v6, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3618
    :cond_89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallWaiting serviceClass = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 3620
    return-void

    .line 3625
    .end local v1    # "serviceClass":I
    .end local v4    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v5    # "b":Landroid/os/PersistableBundle;
    :cond_a3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_124

    .line 3626
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    if-nez v1, :cond_b1

    .line 3627
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->initTbcwMode()V

    .line 3630
    :cond_b1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallWaiting(): mTbcwMode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", onComplete = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    packed-switch v1, :pswitch_data_1c6

    goto :goto_124

    .line 3662
    :pswitch_d5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_e1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 3663
    :cond_e1
    if-eqz p2, :cond_e9

    .line 3664
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3666
    return-void

    .line 3669
    :cond_e9
    const/16 v1, 0x12e

    .line 3670
    if-ne p1, v3, :cond_ef

    move v2, v3

    goto :goto_f0

    :cond_ef
    move v2, v4

    .line 3669
    :goto_f0
    invoke-virtual {p0, v1, v2, v4, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3671
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 3672
    return-void

    .line 3640
    .end local v1    # "resp":Landroid/os/Message;
    :pswitch_fa
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_106

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 3641
    :cond_106
    if-eqz p2, :cond_10e

    .line 3642
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3644
    return-void

    .line 3649
    :cond_10e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 3650
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_11f

    .line 3653
    :cond_11a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 3659
    :goto_11f
    return-void

    .line 3636
    :pswitch_120
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 3637
    return-void

    .line 3676
    :cond_124
    :goto_124
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_179

    if-eqz v0, :cond_179

    .line 3678
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_13c

    .line 3679
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_179

    .line 3680
    :cond_13c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_14e

    .line 3681
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_179

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_179

    .line 3682
    :cond_14e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v1

    if-eqz v1, :cond_16a

    .line 3683
    const/16 v1, 0xd

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v1

    .line 3685
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    move v2, p1

    .line 3686
    .local v2, "enableState":I
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3687
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3688
    .local v3, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, v3}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 3689
    .end local v1    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v2    # "enableState":I
    .end local v3    # "imsUtResult":Landroid/os/Message;
    goto :goto_178

    .line 3690
    :cond_16a
    const-string v1, "isOpTbCW(), setTerminalBasedCallWaiting(): IMS in service"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 3692
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 3693
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 3695
    :goto_178
    return-void

    .line 3698
    :cond_179
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_190

    .line 3699
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_190

    .line 3700
    const-string v1, "mMtkSSReqDecisionMaker.setCallWaiting"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {v1, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCallWaiting(ZILandroid/os/Message;)V

    .line 3703
    return-void

    .line 3706
    :cond_190
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-ne v1, v3, :cond_199

    .line 3707
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 3710
    :cond_199
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_1a5

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 3711
    :cond_1a5
    if-eqz p2, :cond_1ad

    .line 3712
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3713
    return-void

    .line 3718
    :cond_1ad
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_1b9

    .line 3719
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_1be

    .line 3721
    :cond_1b9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 3725
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_1be
    goto :goto_1c4

    .line 3726
    :cond_1bf
    const-string v0, "CDMA CS directly."

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallWaitingCdmaCs(ZLandroid/os/Message;Ljava/lang/String;)V

    .line 3728
    :goto_1c4
    return-void

    nop

    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_120
        :pswitch_fa
        :pswitch_d5
    .end packed-switch
.end method

.method public setCsFallbackStatus(I)V
    .registers 4
    .param p1, "newStatus"    # I

    .line 4993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCsFallbackStatus to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4994
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCSFallbackMode:I

    .line 4995
    return-void
.end method

.method public setDisable2G(ZLandroid/os/Message;)V
    .registers 5
    .param p1, "mode"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 5373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisable2G "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5374
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setDisable2G(ZLandroid/os/Message;)V

    .line 5375
    return-void
.end method

.method public setEccRadioOnStatus(ZZ)V
    .registers 7
    .param p1, "isEccRadioOn"    # Z
    .param p2, "isSelectedPhoneForEmergencyCall"    # Z

    .line 5647
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mEccRadioOnStatus:Z

    if-eq v0, p1, :cond_3c

    .line 5648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ecc radio on status changed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5649
    const-string v1, "t"

    const-string v2, "f"

    if-eqz p1, :cond_16

    move-object v3, v1

    goto :goto_17

    :cond_16
    move-object v3, v2

    :goto_17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5650
    if-eqz p2, :cond_22

    goto :goto_23

    :cond_22
    move-object v1, v2

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5648
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5651
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mEccRadioOnStatus:Z

    .line 5652
    if-eqz p1, :cond_39

    .line 5653
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsEccSelectedPhone:Z

    goto :goto_3c

    .line 5655
    :cond_39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mIsEccSelectedPhone:Z

    .line 5658
    :cond_3c
    :goto_3c
    return-void
.end method

.method public setFemtoCellSystemSelectionMode(ILandroid/os/Message;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFemtoCellSystemSelectionMode(), mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setFemtoCellSystemSelectionMode(ILandroid/os/Message;)V

    .line 821
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .registers 7
    .param p1, "registered"    # Z

    .line 5356
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setImsRegistrationState(Z)V

    .line 5359
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5360
    const-string v0, "wifi_calling"

    .line 5361
    .local v0, "notificationTag":Ljava/lang/String;
    const/4 v1, 0x1

    .line 5363
    .local v1, "notificationId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 5364
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 5366
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsRegistrationState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5367
    const/4 v3, 0x1

    const-string v4, "wifi_calling"

    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 5369
    .end local v0    # "notificationTag":Ljava/lang/String;
    .end local v1    # "notificationId":I
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_38
    return-void
.end method

.method public setNetworkSelectionModeSemiAutomatic(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .registers 9
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 735
    new-instance v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>()V

    .line 736
    .local v0, "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    iput-object p2, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 737
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 738
    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 739
    iput-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    .line 740
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 742
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTK GSMPhone setNetworkSelectionModeSemiAutomatic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v2, "0"

    .line 744
    .local v2, "actype":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 745
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 746
    const-string v2, "2"

    goto :goto_56

    .line 747
    :cond_42
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 748
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 749
    const-string v2, "7"

    .line 751
    :cond_56
    :goto_56
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 752
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .registers 6
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 3079
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServQueueHelper()Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    move-result-object v0

    .line 3080
    .local v0, "ssQueueHelper":Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    if-eqz v0, :cond_f

    .line 3081
    nop

    .line 3082
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    .line 3081
    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->setOutgoingCallerIdDisplay(ILandroid/os/Message;I)V

    goto :goto_19

    .line 3084
    :cond_f
    const-string v1, "MtkGsmCdmaPhone"

    const-string v2, "ssQueueHelper not exist, setOutgoingCallerIdDisplay"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setOutgoingCallerIdDisplayInternal(ILandroid/os/Message;)V

    .line 3087
    :goto_19
    return-void
.end method

.method public setOutgoingCallerIdDisplayInternal(ILandroid/os/Message;)V
    .registers 8
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 3091
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    .line 3200
    :cond_d
    const-string v0, "setOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3201
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3202
    return-void

    .line 3092
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 3095
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportMdAutoSetupIms()Z

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v1, :cond_53

    .line 3096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOutgoingCallerIdDisplay enter, CLIRmode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MtkGsmCdmaPhone"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3101
    .local v1, "resp":Landroid/os/Message;
    if-eqz v0, :cond_4d

    .line 3102
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_4d

    .line 3103
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 3104
    return-void

    .line 3109
    :cond_4d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 3111
    return-void

    .line 3115
    .end local v1    # "resp":Landroid/os/Message;
    :cond_53
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_c1

    if-eqz v0, :cond_c1

    .line 3117
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_6b

    .line 3118
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 3119
    :cond_6b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 3120
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 3122
    :cond_7d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 3123
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3125
    return-void

    .line 3128
    :cond_89
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 3129
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_9b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 3130
    :cond_9b
    if-eqz p2, :cond_a3

    .line 3131
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3133
    return-void

    .line 3137
    :cond_a3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3138
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3137
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 3140
    return-void

    .line 3143
    :cond_ad
    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v1

    .line 3145
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3146
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3147
    .local v2, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 3148
    return-void

    .line 3151
    .end local v1    # "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .end local v2    # "imsUtResult":Landroid/os/Message;
    :cond_c1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_fb

    .line 3152
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 3153
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 3155
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_df

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 3156
    :cond_df
    if-eqz p2, :cond_e7

    .line 3157
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3159
    return-void

    .line 3163
    :cond_e7
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3164
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3163
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 3166
    return-void

    .line 3169
    :cond_f1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 3170
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3169
    invoke-virtual {v1, p1, v2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCLIR(ILandroid/os/Message;)V

    .line 3172
    return-void

    .line 3175
    :cond_fb
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_105

    .line 3176
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 3180
    :cond_105
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v1

    if-eqz v1, :cond_111

    .line 3181
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3182
    return-void

    .line 3186
    :cond_111
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v1

    if-nez v1, :cond_11d

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v1

    if-eqz v1, :cond_125

    .line 3187
    :cond_11d
    if-eqz p2, :cond_125

    .line 3188
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3189
    return-void

    .line 3196
    :cond_125
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3197
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3196
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 3199
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    nop

    .line 3204
    return-void
.end method

.method public setPolEntry(Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;Landroid/os/Message;)V
    .registers 7
    .param p1, "networkWithAct"    # Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2153
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 2154
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v3

    .line 2153
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2155
    return-void
.end method

.method public setRoamingEnable([ILandroid/os/Message;)V
    .registers 6
    .param p1, "config"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .line 5040
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "set roaming enable"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5041
    if-eqz p1, :cond_19

    array-length v1, p1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    goto :goto_19

    .line 5047
    :cond_e
    const/4 v0, 0x0

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    aput v1, p1, v0

    .line 5048
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setRoamingEnable([ILandroid/os/Message;)V

    .line 5049
    return-void

    .line 5042
    :cond_19
    :goto_19
    const-string v1, "set roaming enable, invalid paramter"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5043
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_ARGUMENTS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 5044
    return-void
.end method

.method public setRxTestConfig(ILandroid/os/Message;)V
    .registers 5
    .param p1, "AntType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2110
    const-string v0, "MtkGsmCdmaPhone"

    const-string v1, "set Rx Test Config"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->setRxTestConfig(ILandroid/os/Message;)V

    .line 2112
    return-void
.end method

.method public setSSPropertyThroughHidl(ILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "phoneId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 3518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSSPropertyThroughHidl, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    const-string v0, ""

    .line 3521
    .local v0, "propVal":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3522
    .local v2, "p":[Ljava/lang/String;
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3524
    .local v3, "prop":Ljava/lang/String;
    if-nez p3, :cond_31

    .line 3525
    const-string p3, ""

    .line 3528
    :cond_31
    const-string v4, ","

    if-eqz v3, :cond_39

    .line 3529
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3532
    :cond_39
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    const-string v6, " value: "

    const-string v7, " property="

    if-nez v5, :cond_6c

    .line 3533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSSPropertyThroughHidl: invalid phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " prop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3535
    return-void

    .line 3538
    :cond_6c
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6d
    if-ge v5, p1, :cond_8d

    .line 3539
    const-string v8, ""

    .line 3540
    .local v8, "str":Ljava/lang/String;
    if-eqz v2, :cond_78

    array-length v9, v2

    if-ge v5, v9, :cond_78

    .line 3541
    aget-object v8, v2, v5

    .line 3543
    :cond_78
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3538
    .end local v8    # "str":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 3546
    .end local v5    # "i":I
    :cond_8d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3547
    if-eqz v2, :cond_ba

    .line 3548
    add-int/lit8 v5, p1, 0x1

    .restart local v5    # "i":I
    :goto_a0
    array-length v8, v2

    if-ge v5, v8, :cond_ba

    .line 3549
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3548
    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    .line 3553
    .end local v5    # "i":I
    :cond_ba
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x5b

    if-le v4, v5, :cond_eb

    .line 3554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSSPropertyThroughHidl: property too long phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " propVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    return-void

    .line 3559
    :cond_eb
    invoke-virtual {p0, p2, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setSuppServProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3560
    return-void
.end method

.method public setServiceClass(I)V
    .registers 4
    .param p1, "serviceClass"    # I

    .line 4344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setServiceClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4345
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vendor.gsm.radio.ss.sc"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4346
    return-void
.end method

.method public setSuppServProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 5453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuppServProperty, name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallbackLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5455
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x3ec

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setSuppServProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 5456
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCallbackDone()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 5458
    const-string v0, "waitForCallback: callback is not done!"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    :cond_3c
    return-void
.end method

.method public setTbcwMode(I)V
    .registers 4
    .param p1, "newMode"    # I

    .line 3239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set tbcwmode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I

    .line 3241
    return-void
.end method

.method public setTbcwToEnabledOnIfDisabled()V
    .registers 7

    .line 3247
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    const-string v1, "persist.vendor.radio.terminal-based.cw"

    const-string v2, "disabled_tbcw"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3250
    .local v0, "tbcwMode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTbcwToEnabledOnIfDisabled tbcwmode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3251
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3250
    const-string v5, "MtkGsmCdmaPhone"

    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 3253
    :cond_3c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v2

    const-string v3, "enabled_tbcw_on"

    invoke-virtual {p0, v2, v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setSSPropertyThroughHidl(ILjava/lang/String;Ljava/lang/String;)V

    .line 3255
    :cond_45
    return-void
.end method

.method public setTerminalBasedCallWaiting(ZLandroid/os/Message;)V
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 3469
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;ZLandroid/os/Message;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3512
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .registers 7
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "number"    # Ljava/lang/String;

    .line 5385
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 5386
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 5387
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_25

    .line 5388
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x1

    .line 5389
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 5390
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_22

    .line 5391
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 5393
    :cond_22
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 5396
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_25
    return-void
.end method

.method public shouldProcessSelfActivation()Z
    .registers 4

    .line 5170
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSelfActivationInstance()Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;->getSelfActivateState()I

    move-result v0

    .line 5172
    .local v0, "selfActivateState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldProcessSelfActivation() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

.method public switchNrMap(Z)V
    .registers 3
    .param p1, "sw"    # Z

    .line 5616
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkSST:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/NrMap;->swtichNrMap(Z)V

    goto :goto_15

    .line 5617
    :cond_10
    const-string v0, "switchNrMap mMtkSST == null && mMtkSST.nm == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5618
    :goto_15
    return-void
.end method

.method protected switchVoiceRadioTech(I)V
    .registers 4
    .param p1, "newVoiceRadioTech"    # I

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching Voice Phone : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "GSM"

    goto :goto_21

    :cond_1f
    const-string v1, "CDMA"

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 630
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCdmaWithoutLteCard()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 631
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->switchPhoneType(I)V

    .line 632
    return-void

    .line 635
    :cond_3c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchVoiceRadioTech(I)V

    .line 636
    return-void
.end method

.method public triggerModeSwitchByEcc(ILandroid/os/Message;)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 659
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->triggerModeSwitchByEcc(ILandroid/os/Message;)V

    .line 660
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 959
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 960
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 1963
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCallRelatedSuppSvcRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 1965
    return-void
.end method

.method public unregisterForNetworkInfo(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 2098
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 2099
    return-void
.end method

.method public unregisterForOemIndication(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 5782
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mOemIndRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5783
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 1983
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 1989
    return-void
.end method

.method public useImsForPCOChanged()Z
    .registers 4

    .line 5178
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSelfActivationInstance()Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;->getPCO520State()I

    move-result v0

    .line 5180
    .local v0, "pcoState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pcoState() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5182
    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method public useSsOverImsExt(Landroid/os/Message;)Z
    .registers 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 2284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->useSsOverImsExt(Landroid/os/Message;Z)Z

    move-result v0

    return v0
.end method

.method public useSsOverImsExt(Landroid/os/Message;Z)Z
    .registers 13
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "isQueryCfu"    # Z

    .line 2288
    const/4 v0, 0x0

    .line 2289
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtEnabled()Z

    move-result v1

    .line 2290
    .local v1, "isUtEnabled":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    .line 2291
    .local v2, "isGsmPhone":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v3

    .line 2292
    .local v3, "isTryImsForCdma":Z
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCsRetry(Landroid/os/Message;)Z

    move-result v4

    .line 2293
    .local v4, "isCsRetry":Z
    const/4 v5, 0x0

    .line 2294
    .local v5, "isCdma4g":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isCardSupportCdma(I)Z

    move-result v6

    .line 2296
    .local v6, "isCdmaCard":Z
    if-nez v1, :cond_20

    if-nez v2, :cond_20

    if-eqz v3, :cond_3a

    :cond_20
    if-nez v4, :cond_3a

    .line 2298
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v7

    .line 2300
    .local v7, "mCdmaCardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    const/4 v0, 0x1

    .line 2301
    if-eqz v6, :cond_3a

    if-eqz v7, :cond_3a

    .line 2302
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->is4GCard()Z

    move-result v5

    .line 2303
    if-nez v5, :cond_3a

    .line 2304
    const/4 v0, 0x0

    .line 2313
    .end local v7    # "mCdmaCardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    :cond_3a
    const-string v7, "MtkGsmCdmaPhone"

    if-eqz v6, :cond_5f

    .line 2314
    if-eqz p2, :cond_59

    .line 2315
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsOverCdma:Z

    .line 2316
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "useSsOverImsExt, qeuryCfu, mSsOverCdma = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsOverCdma:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 2317
    :cond_59
    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsOverCdma:Z

    if-eqz v8, :cond_62

    .line 2318
    const/4 v0, 0x0

    goto :goto_62

    .line 2321
    :cond_5f
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsOverCdma:Z

    .line 2324
    :cond_62
    :goto_62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "useSsOverImsExt, ret="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " (isUtEnabled:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUtEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isGsmPhone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isTryImsForCdma:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isCsRetry:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isCdmaCard:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isCdma4g:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mSsOverCdma:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSsOverCdma:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    return v0
.end method

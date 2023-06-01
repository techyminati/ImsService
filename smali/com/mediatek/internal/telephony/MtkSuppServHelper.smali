.class public Lcom/mediatek/internal/telephony/MtkSuppServHelper;
.super Landroid/os/Handler;
.source "MtkSuppServHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;,
        Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;
    }
.end annotation


# static fields
.field private static final ACTION_SYSTEM_UPDATE_SUCCESSFUL:Ljava/lang/String; = "com.mediatek.systemupdate.UPDATE_SUCCESSFUL"

.field private static final CFU_QUERY_WHEN_IMS_REGISTERED_DEFAULT:Z = false

.field private static final CFU_SETTING_ALWAYS_NOT_QUERY:Ljava/lang/String; = "1"

.field private static final CFU_SETTING_ALWAYS_QUERY:Ljava/lang/String; = "2"

.field private static final CFU_SETTING_DEFAULT:Ljava/lang/String; = "0"

.field private static final CFU_SETTING_QUERY_IF_EFCFIS_INVALID:Ljava/lang/String; = "3"

.field private static final CONNECTOR_RETRY_DELAY_MS:I = 0x1388

.field private static final DBG:Z = true

.field private static final EFCFIS_STATUS_INVALID:I = 0x3

.field private static final EFCFIS_STATUS_NOT_READY:I = 0x0

.field private static final EFCFIS_STATUS_VALID:I = 0x2

.field private static final EVENT_CALL_FORWARDING_STATUS_FROM_MD:I = 0x6

.field private static final EVENT_CARRIER_CONFIG_LOADED:I = 0xf

.field private static final EVENT_CFU_STATUS_FROM_MD:I = 0x8

.field public static final EVENT_CLEAN_CFU_STATUS:I = 0x10

.field private static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x2

.field private static final EVENT_DATA_CONNECTION_DETACHED:I = 0x3

.field private static final EVENT_GET_CALL_FORWARD_BY_GSM_DONE:I = 0x4

.field private static final EVENT_GET_CALL_FORWARD_BY_IMS_DONE:I = 0x5

.field private static final EVENT_GET_CALL_FORWARD_TIME_SLOT_BY_GSM_DONE:I = 0xa

.field private static final EVENT_GET_CALL_FORWARD_TIME_SLOT_BY_IMS_DONE:I = 0xb

.field private static final EVENT_ICCRECORDS_READY:I = 0x1

.field private static final EVENT_ICC_CHANGED:I = 0xd

.field private static final EVENT_QUERY_CFU_OVER_CS:I = 0x7

.field private static final EVENT_QUERY_CFU_OVER_CS_AFTER_DATA_NOT_ATTACHED:I = 0xe

.field private static final EVENT_REGISTERED_TO_NETWORK:I = 0x0

.field private static final EVENT_SIM_RECORDS_LOADED:I = 0xc

.field private static final EVENT_SS_RESET:I = 0x9

.field private static final IMS_NOT_QUERY_YET:Ljava/lang/String; = "1"

.field private static final IMS_NO_NEED_QUERY:Ljava/lang/String; = "0"

.field private static final IMS_QUERY_DONE:Ljava/lang/String; = "2"

.field private static final LOG_TAG:Ljava/lang/String; = "MtkSuppServHelper"

.field private static final QUERY_OVER_GSM:I = 0x0

.field private static final QUERY_OVER_GSM_OVER_UT:I = 0x1

.field private static final QUERY_OVER_IMS:I = 0x2

.field private static final SDBG:Z

.field private static final SIM_CHANGED:Ljava/lang/String; = "1"

.field private static final SIM_NO_CHANGED:Ljava/lang/String; = "0"

.field private static final TASK_CLEAN_CFU_STATUS:I = 0x4

.field private static final TASK_QUERY_CFU:I = 0x0

.field private static final TASK_QUERY_CFU_OVER_GSM:I = 0x1

.field private static final TASK_QUERY_CFU_OVER_IMS:I = 0x2

.field private static final TASK_SET_CW_STATUS:I = 0x5

.field private static final TASK_TIME_SLOT_FAILED:I = 0x3

.field private static final TIMER_FOR_RETRY_QUERY_CFU:I = 0x4e20

.field private static final TIMER_FOR_WAIT_DATA_ATTACHED:I = 0x4e20

.field private static final VDBG:Z


# instance fields
.field private mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierConfigLoaded:Z

.field private mConnectorRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Landroid/os/HandlerExecutor;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private final mImsManagerConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private mMtkSuppServHelper:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

.field private mNeeedSyncForOTA:I

.field private mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

.field private mSimRecordsLoaded:Z

.field private mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 135
    nop

    .line 134
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->VDBG:Z

    .line 137
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 138
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->SDBG:Z

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 410
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 144
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 146
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mMtkSuppServHelper:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 150
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    .line 154
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSimRecordsLoaded:Z

    .line 155
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mCarrierConfigLoaded:Z

    .line 157
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManager:Lcom/android/ims/ImsManager;

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mNeeedSyncForOTA:I

    .line 402
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mConnectorRunnable:Ljava/lang/Runnable;

    .line 746
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 874
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 411
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    .line 412
    move-object v0, p2

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 413
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    invoke-direct {v0, p0, p3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    .line 414
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mExecutor:Landroid/os/HandlerExecutor;

    .line 417
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    new-instance v1, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mExecutor:Landroid/os/HandlerExecutor;

    const-string v3, "MtkSuppServHelper"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/ims/ImsManager;->getConnector(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    .line 434
    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->connect()V

    .line 435
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->registerEvent()V

    .line 436
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->registerBroadcastReceiver()V

    .line 438
    const-string v0, "MtkSuppServHelper init done."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 130
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isMDSupportIMSSuppServ()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 130
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isResetCSFBStatusAfterFlightMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 130
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isSupportSuppServUTTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Landroid/content/Intent;)Lcom/mediatek/internal/telephony/MtkSuppServUtTest;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 130
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->makeMtkSuppServUtTest(Landroid/content/Intent;)Lcom/mediatek/internal/telephony/MtkSuppServUtTest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 130
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->taskDone()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/android/ims/FeatureConnector;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .param p1, "x1"    # Lcom/android/ims/ImsManager;

    .line 130
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->setImsCallback()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mConnectorRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 130
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->unSetImsCallback()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 130
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->handleSubinfoUpdate()V

    return-void
.end method

.method private checkEfCfis()I
    .registers 3

    .line 817
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 818
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_19

    instance-of v1, v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    if-eqz v1, :cond_19

    .line 820
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->checkEfCfis()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 821
    const/4 v1, 0x2

    return v1

    .line 823
    :cond_17
    const/4 v1, 0x3

    return v1

    .line 828
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method private checkInitCriteria(Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p1, "criteriaFailReason"    # Ljava/lang/StringBuilder;

    .line 447
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isSubInfoReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 448
    const-string v0, "SubInfo not ready, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    return v1

    .line 452
    :cond_d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isIccCardMncMccAvailable(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 453
    const-string v0, "MCC MNC not ready, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    return v1

    .line 457
    :cond_1f
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isIccRecordsAvailable()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 458
    const-string v0, "Icc record available, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    return v1

    .line 462
    :cond_2b
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isVoiceInService()Z

    move-result v0

    if-nez v0, :cond_37

    .line 463
    const-string v0, "Network is not registered, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    return v1

    .line 467
    :cond_37
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getSimRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_43

    .line 468
    const-string v0, "Sim not loaded, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    return v1

    .line 472
    :cond_43
    const-string v0, "All Criteria ready."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const/4 v0, 0x1

    return v0
.end method

.method public static encryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 1082
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    .line 1083
    .local v0, "encoder":Ljava/util/Base64$Encoder;
    const/4 v1, 0x0

    .line 1085
    .local v1, "textByte":[B
    if-nez p0, :cond_a

    :try_start_7
    const-string v2, "null"

    return-object v2

    .line 1087
    :cond_a
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    move-object v1, v2

    .line 1091
    goto :goto_17

    .line 1088
    :catch_12
    move-exception v2

    .line 1089
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1090
    const/4 v1, 0x0

    .line 1093
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_17
    if-nez v1, :cond_1c

    const-string v2, ""

    return-object v2

    .line 1095
    :cond_1c
    invoke-virtual {v0, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 1096
    .local v2, "encryptedString":Ljava/lang/String;
    return-object v2
.end method

.method private getCarrierConfigLoaded()Z
    .registers 3

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarrierConfigLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mCarrierConfigLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logi(Ljava/lang/String;)V

    .line 492
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mCarrierConfigLoaded:Z

    return v0
.end method

.method private getSIMChangedRecordFromSystemProp()Z
    .registers 5

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.change."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "isChangedProp":Ljava/lang/String;
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "isChanged":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIMChangedRecordFromSystemProp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 651
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 652
    const/4 v2, 0x1

    return v2

    .line 654
    :cond_3b
    const/4 v2, 0x0

    return v2
.end method

.method private getSimRecordsLoaded()Z
    .registers 3

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimRecordsLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSimRecordsLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logi(Ljava/lang/String;)V

    .line 482
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSimRecordsLoaded:Z

    return v0
.end method

.method private getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 4
    .param p1, "appFamily"    # I

    .line 477
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method private handleSubinfoUpdate()V
    .registers 2

    .line 501
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 502
    return-void

    .line 506
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->handleSuppServInit()V

    .line 508
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isIccRecordsAvailable()Z

    .line 509
    return-void
.end method

.method private handleSuppServIfSimChanged()V
    .registers 8

    .line 617
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getSIMChangedRecordFromSystemProp()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 618
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->reset()V

    .line 620
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 622
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;

    const/4 v3, 0x5

    const-string v4, "Sim Changed"

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;IZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->appendTask(Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;)V

    .line 626
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->saveTimeSlot([J)V

    .line 629
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    .line 630
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 631
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clir_sub_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, -0x1

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 632
    .local v2, "clirSetting":I
    if-eq v2, v5, :cond_6d

    .line 633
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 634
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 635
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 636
    const-string v3, "failed to commit the removal of CLIR preference"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->loge(Ljava/lang/String;)V

    .line 640
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6d
    new-instance v3, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;

    invoke-direct {v3, p0, v1, v1, v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;IZLjava/lang/String;)V

    move-object v1, v3

    .line 641
    .local v1, "task":Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->appendTask(Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;)V

    .line 643
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "task":Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;
    .end local v2    # "clirSetting":I
    :cond_78
    return-void
.end method

.method private handleSuppServInit()V
    .registers 8

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.iccid."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "mySettingName":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "oldIccId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 588
    .local v2, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v3, 0x0

    .line 589
    .local v3, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_30

    .line 590
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 596
    :cond_30
    if-nez v3, :cond_36

    .line 597
    const/4 v4, -0x1

    iput v4, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mNeeedSyncForOTA:I

    goto :goto_9f

    .line 599
    :cond_36
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, "newIccId":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 601
    return-void

    .line 604
    :cond_45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mySubId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mySettingName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->SDBG:Z

    .line 605
    invoke-static {v6, v0}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " old iccid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " new iccid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 604
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logw(Ljava/lang/String;)V

    .line 608
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist.vendor.radio.cfu.change."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 610
    .local v5, "isChanged":Ljava/lang/String;
    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->handleSuppServIfSimChanged()V

    .line 614
    .end local v4    # "newIccId":Ljava/lang/String;
    .end local v5    # "isChanged":Ljava/lang/String;
    :goto_9f
    return-void
.end method

.method private isIMSRegistered()Z
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 659
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_1c

    if-eqz v0, :cond_1c

    .line 661
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1c

    .line 662
    const/4 v1, 0x1

    return v1

    .line 664
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method private isIccCardMncMccAvailable(I)Z
    .registers 7
    .param p1, "phoneId"    # I

    .line 546
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 547
    .local v0, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 548
    .local v2, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v3, 0x0

    if-eqz v2, :cond_15

    .line 549
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, "mccMnc":Ljava/lang/String;
    if-eqz v4, :cond_13

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    return v1

    .line 552
    .end local v4    # "mccMnc":Ljava/lang/String;
    :cond_15
    return v3
.end method

.method private isIccRecordsAvailable()Z
    .registers 3

    .line 556
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 557
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_a

    .line 558
    const/4 v1, 0x1

    return v1

    .line 560
    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method private isMDSupportIMSSuppServ()Z
    .registers 4

    .line 911
    const/4 v0, 0x0

    .line 912
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 913
    const/4 v0, 0x1

    .line 915
    :cond_10
    return v0
.end method

.method private isNoNeedToCSFBWhenIMSRegistered()Z
    .registers 2

    .line 923
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNoNeedToCSFBWhenIMSRegistered()Z

    move-result v0

    return v0
.end method

.method private isNotMachineTest()Z
    .registers 8

    .line 514
    const-string v0, "0"

    .line 516
    .local v0, "isTestSim":Ljava/lang/String;
    const/4 v1, 0x0

    .line 517
    .local v1, "isRRMEnv":Z
    const/4 v2, 0x0

    .line 519
    .local v2, "operatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "0"

    if-nez v3, :cond_16

    .line 520
    const-string v3, "vendor.gsm.sim.ril.testsim"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 522
    :cond_16
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    if-ne v3, v4, :cond_24

    .line 523
    const-string v3, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    :cond_24
    :goto_24
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 530
    if-eqz v2, :cond_39

    const-string v3, "46602"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 531
    const/4 v1, 0x1

    .line 535
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTestSIM : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isRRMEnv : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    if-nez v1, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v4, 0x0

    :goto_5f
    return v4
.end method

.method private isNotSupportUtToCS()Z
    .registers 2

    .line 919
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCSforCFUQuery()Z

    move-result v0

    return v0
.end method

.method private isResetCSFBStatusAfterFlightMode()Z
    .registers 2

    .line 931
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isResetCSFBStatusAfterFlightMode()Z

    move-result v0

    return v0
.end method

.method private isSubInfoReady()Z
    .registers 4

    .line 572
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 573
    .local v0, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v1, 0x0

    .line 574
    .local v1, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_13

    .line 575
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 577
    :cond_13
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 578
    const/4 v2, 0x1

    return v2

    .line 580
    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method private isSupportCFUTimeSlot()Z
    .registers 2

    .line 927
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isSupportCFUTimeSlot()Z

    move-result v0

    return v0
.end method

.method private isSupportSuppServUTTest()Z
    .registers 3

    .line 902
    const-string v0, "persist.vendor.ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 903
    const-string v0, "persist.vendor.volte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 904
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 902
    :goto_25
    return v0
.end method

.method private isVoiceInService()Z
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 565
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1c

    .line 566
    const/4 v0, 0x1

    return v0

    .line 568
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSuppServHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSuppServHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSuppServHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSuppServHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSuppServHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    return-void
.end method

.method private makeMtkSuppServUtTest(Landroid/content/Intent;)Lcom/mediatek/internal/telephony/MtkSuppServUtTest;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 935
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-direct {v0, v1, p1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method private notifyCdmaCallForwardingIndicator()V
    .registers 3

    .line 939
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 940
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 941
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 943
    :cond_16
    return-void
.end method

.method private registerBroadcastReceiver()V
    .registers 7

    .line 720
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 721
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    const-string v1, "com.mediatek.systemupdate.UPDATE_SUCCESSFUL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 730
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 731
    .local v1, "utTestFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SUPPLEMENTARY_SERVICE_UT_TEST"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.mediatek.permission.SUPPLEMENTARY_SERVICE_UT_TEST"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 734
    return-void
.end method

.method private registerEvent()V
    .registers 5

    .line 690
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 693
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 698
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 699
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 700
    const/16 v1, 0xd

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 701
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCallForwardingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 703
    return-void
.end method

.method private reset()V
    .registers 2

    .line 871
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->clearPendingTask()V

    .line 872
    return-void
.end method

.method private setCarrierConfigLoaded(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set mCarrierConfigLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logi(Ljava/lang/String;)V

    .line 497
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mCarrierConfigLoaded:Z

    .line 498
    return-void
.end method

.method private setImsCallback()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    if-eqz v1, :cond_14

    .line 674
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mExecutor:Landroid/os/HandlerExecutor;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V

    .line 675
    const-string v0, "ImsManager addRegistrationCallback"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V
    :try_end_14
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_14} :catch_15

    .line 679
    :cond_14
    goto :goto_2e

    .line 677
    :catch_15
    move-exception v0

    .line 678
    .local v0, "ie":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsManager addRegistrationCallback failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 680
    .end local v0    # "ie":Lcom/android/ims/ImsException;
    :goto_2e
    return-void
.end method

.method private setSimRecordsLoaded(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set mSimRecordsLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logi(Ljava/lang/String;)V

    .line 487
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSimRecordsLoaded:Z

    .line 488
    return-void
.end method

.method private syncSysPropToSIMforOTA()Z
    .registers 6

    .line 832
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mNeeedSyncForOTA:I

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSysPropToSIMforOTA: No need to sync (sim change): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mNeeedSyncForOTA:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 835
    return v1

    .line 836
    :cond_1c
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_37

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncSysPropToSIMforOTA: No need to sync (unknown): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mNeeedSyncForOTA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 839
    return v3

    .line 842
    :cond_37
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getSimRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_43

    .line 843
    const-string v0, "syncSysPropToSIMforOTA: SIM not loaded."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 844
    return v3

    .line 847
    :cond_43
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->checkEfCfis()I

    move-result v0

    .line 848
    .local v0, "checkEfCfis":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncSysPropToSIMforOTA: checkEfCfis = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 849
    if-nez v0, :cond_5e

    .line 850
    return v3

    .line 851
    :cond_5e
    const/4 v2, 0x2

    if-ne v0, v2, :cond_76

    .line 852
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingIndicator()Z

    move-result v2

    .line 853
    .local v2, "cfuStatus":Z
    if-eqz v2, :cond_75

    .line 854
    const-string v3, "syncSysPropToSIMforOTA: true from system preference."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 855
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const-string v4, ""

    invoke-virtual {v3, v1, v2, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 857
    :cond_75
    return v1

    .line 858
    .end local v2    # "cfuStatus":Z
    :cond_76
    nop

    .line 859
    return v1
.end method

.method private taskDone()V
    .registers 3

    .line 541
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mSuppServTaskDriven:Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$SuppServTaskDriven;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 542
    .local v0, "ssmsg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 543
    return-void
.end method

.method private toEventString(I)Ljava/lang/String;
    .registers 3
    .param p1, "event"    # I

    .line 1019
    packed-switch p1, :pswitch_data_3a

    .line 1056
    const-string v0, "UNKNOWN_EVENT_ID"

    return-object v0

    .line 1053
    :pswitch_6
    const-string v0, "EVENT_CLEAN_CFU_STATUS"

    return-object v0

    .line 1049
    :pswitch_9
    const-string v0, "EVENT_CARRIER_CONFIG_LOADED"

    return-object v0

    .line 1051
    :pswitch_c
    const-string v0, "EVENT_QUERY_CFU_OVER_CS_AFTER_DATA_NOT_ATTACHED"

    return-object v0

    .line 1047
    :pswitch_f
    const-string v0, "EVENT_ICC_CHANGED"

    return-object v0

    .line 1045
    :pswitch_12
    const-string v0, "EVENT_SIM_RECORDS_LOADED"

    return-object v0

    .line 1043
    :pswitch_15
    const-string v0, "EVENT_GET_CALL_FORWARD_TIME_SLOT_BY_IMS_DONE"

    return-object v0

    .line 1041
    :pswitch_18
    const-string v0, "EVENT_GET_CALL_FORWARD_TIME_SLOT_BY_GSM_DONE"

    return-object v0

    .line 1039
    :pswitch_1b
    const-string v0, "EVENT_SS_RESET"

    return-object v0

    .line 1037
    :pswitch_1e
    const-string v0, "EVENT_CFU_STATUS_FROM_MD"

    return-object v0

    .line 1035
    :pswitch_21
    const-string v0, "EVENT_QUERY_CFU_OVER_CS"

    return-object v0

    .line 1033
    :pswitch_24
    const-string v0, "EVENT_CALL_FORWARDING_STATUS_FROM_MD"

    return-object v0

    .line 1031
    :pswitch_27
    const-string v0, "EVENT_GET_CALL_FORWARD_BY_IMS_DONE"

    return-object v0

    .line 1029
    :pswitch_2a
    const-string v0, "EVENT_GET_CALL_FORWARD_BY_GSM_DONE"

    return-object v0

    .line 1027
    :pswitch_2d
    const-string v0, "EVENT_DATA_CONNECTION_DETACHED"

    return-object v0

    .line 1025
    :pswitch_30
    const-string v0, "EVENT_DATA_CONNECTION_ATTACHED"

    return-object v0

    .line 1023
    :pswitch_33
    const-string v0, "EVENT_ICCRECORDS_READY"

    return-object v0

    .line 1021
    :pswitch_36
    const-string v0, "EVENT_REGISTERED_TO_NETWORK"

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private toReasonString(I)Ljava/lang/String;
    .registers 3
    .param p1, "event"    # I

    .line 1000
    sparse-switch p1, :sswitch_data_18

    .line 1015
    const-string v0, "Unknown reason, should not be here."

    return-object v0

    .line 1012
    :sswitch_6
    const-string v0, "Clean CFU status"

    return-object v0

    .line 1010
    :sswitch_9
    const-string v0, "Carrier config loaded"

    return-object v0

    .line 1008
    :sswitch_c
    const-string v0, "SIM records loaded"

    return-object v0

    .line 1002
    :sswitch_f
    const-string v0, "Data Attached"

    return-object v0

    .line 1006
    :sswitch_12
    const-string v0, "ICCRecords ready"

    return-object v0

    .line 1004
    :sswitch_15
    const-string v0, "CS in service"

    return-object v0

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_15
        0x1 -> :sswitch_12
        0x2 -> :sswitch_f
        0xc -> :sswitch_c
        0xf -> :sswitch_9
        0x10 -> :sswitch_6
    .end sparse-switch
.end method

.method private unRegisterBroadReceiver()V
    .registers 3

    .line 737
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 738
    return-void
.end method

.method private unRegisterEvent()V
    .registers 3

    .line 706
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 707
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(ILandroid/os/Handler;)V

    .line 709
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 710
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(ILandroid/os/Handler;)V

    .line 712
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 713
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 714
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 715
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 716
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForCallForwardingInfo(Landroid/os/Handler;)V

    .line 717
    return-void
.end method

.method private unSetImsCallback()V
    .registers 3

    .line 683
    const-string v0, "unSetImsCallback"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_e

    .line 685
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->removeRegistrationListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 687
    :cond_e
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 741
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->unRegisterEvent()V

    .line 742
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->unRegisterBroadReceiver()V

    .line 743
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->disconnect()V

    .line 744
    return-void
.end method

.method public getIMSRegistered()Z
    .registers 2

    .line 668
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isIMSRegistered()Z

    move-result v0

    return v0
.end method

.method public getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;
    .registers 11
    .param p1, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.gsm.radio.ss.errormsg."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "propNamePrefix":Ljava/lang/String;
    const-string v1, ""

    .line 949
    .local v1, "fullErrorMsg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 951
    .local v2, "errorMsg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 952
    .local v3, "idx":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 953
    .local v4, "propName":Ljava/lang/String;
    const-string v6, ""

    .line 955
    .local v6, "propValue":Ljava/lang/String;
    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 958
    :goto_37
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_65

    .line 959
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    add-int/lit8 v3, v3, 0x1

    .line 962
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 963
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_37

    .line 966
    :cond_65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fullErrorMsg: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 968
    const-string v5, ""

    .line 969
    .local v5, "errorCode":Ljava/lang/String;
    sget-object v7, Lcom/mediatek/internal/telephony/MtkSuppServHelper$5;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_bc

    .line 986
    return-object v2

    .line 983
    :pswitch_87
    const-string v5, "503"

    .line 984
    goto :goto_96

    .line 980
    :pswitch_8a
    const-string v5, "500"

    .line 981
    goto :goto_96

    .line 977
    :pswitch_8d
    const-string v5, "415"

    .line 978
    goto :goto_96

    .line 974
    :pswitch_90
    const-string v5, "412"

    .line 975
    goto :goto_96

    .line 971
    :pswitch_93
    const-string v5, "409"

    .line 972
    nop

    .line 989
    :goto_96
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9d

    .line 990
    return-object v2

    .line 993
    :cond_9d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 994
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "errorMsg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 996
    return-object v2

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->toEventString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    .line 792
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 793
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_5e

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bypass msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V

    goto :goto_5c

    .line 805
    :sswitch_4a
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->setCarrierConfigLoaded(Z)V

    .line 806
    goto :goto_5c

    .line 798
    :sswitch_4e
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->setSimRecordsLoaded(Z)V

    .line 800
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->notifyCdmaCallForwardingIndicator()V

    .line 802
    goto :goto_5c

    .line 795
    :sswitch_55
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 796
    nop

    .line 813
    :goto_5c
    return-void

    nop

    :sswitch_data_5e
    .sparse-switch
        0x3 -> :sswitch_55
        0xc -> :sswitch_4e
        0xf -> :sswitch_4a
    .end sparse-switch
.end method

.method public init(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 443
    return-void
.end method

.method public notifyCarrierConfigLoaded()V
    .registers 2

    .line 896
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 897
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 898
    return-void
.end method

.method public setIccRecordsReady()V
    .registers 2

    .line 866
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 867
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 868
    return-void
.end method

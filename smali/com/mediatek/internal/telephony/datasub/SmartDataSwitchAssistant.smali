.class public Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
.super Landroid/os/Handler;
.source "SmartDataSwitchAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CALL_ENDED:I = 0x14

.field private static final EVENT_CALL_STARTED:I = 0xa

.field private static final EVENT_ID_INTVL:I = 0xa

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x28

.field private static final EVENT_SRVCC_STATE_CHANGED:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "SmartDataSwitch"

.field private static final TEMP_DATA_MODE:Ljava/lang/String; = "temp_data_mode"

.field public static final TEMP_DATA_MODE_DEFAULT:I = 0x0

.field public static final TEMP_DATA_MODE_EXCEPT_CSFB:I = 0x2

.field public static final TEMP_DATA_MODE_ONLY_VOLTE:I = 0x1

.field private static mOperatorSpec:Ljava/lang/String;

.field private static sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandoverStateListener:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

.field protected mInCallPhoneId:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mPhoneNum:I

.field protected mPhones:[Lcom/android/internal/telephony/Phone;

.field private final mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected mResolver:Landroid/content/ContentResolver;

.field private mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

.field private mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 148
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mInCallPhoneId:I

    .line 69
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mContext:Landroid/content/Context;

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 73
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 149
    const-string v0, " is created"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 150
    iput-object p2, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 151
    array-length v0, p2

    iput v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    .line 152
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mResolver:Landroid/content/ContentResolver;

    .line 154
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, "OM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mOperatorSpec:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 157
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->registerEvents()V

    .line 160
    :cond_34
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->initOpSmartDataSwitchAssistant(Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    if-nez v0, :cond_42

    .line 162
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    .line 164
    :cond_42
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v0, p0}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->init(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)V

    .line 166
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 168
    const-string v0, "init done"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)Lcom/android/internal/telephony/RegistrantList;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    .line 56
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object v0
.end method

.method private findPhoneById(I)Lcom/android/internal/telephony/Phone;
    .registers 3
    .param p1, "phoneId"    # I

    .line 405
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 406
    const-string v0, "findPhoneById: invalid phoneId"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x0

    return-object v0

    .line 409
    :cond_d
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 318
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 321
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    .registers 2

    .line 142
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    if-eqz v0, :cond_5

    .line 145
    return-object v0

    .line 143
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not be called before sSmartDataSwitchAssistant"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_10

    .line 326
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 329
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getWifiOffLoadService()Lcom/mediatek/wfo/IWifiOffloadService;
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v0, :cond_41

    .line 334
    const-string v0, "wfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 335
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_13

    .line 336
    invoke-static {v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    goto :goto_41

    .line 338
    :cond_13
    const-string v1, "mwis"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_26

    .line 341
    :try_start_1b
    invoke-static {v0}, Lcom/mediatek/wfo/IMwiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IMwiService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/wfo/IMwiService;->getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    goto :goto_2b

    .line 343
    :cond_26
    const-string v1, "getWifiOffLoadService: No MwiService exist"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2b} :catch_2c

    .line 347
    :goto_2b
    goto :goto_41

    .line 345
    :catch_2c
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiOffLoadService: can\'t get MwiService error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 351
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method private initOpSmartDataSwitchAssistant(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 173
    nop

    .line 174
    :try_start_1
    invoke-static {p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 175
    nop

    .line 176
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeSmartDataSwitchAssistantOpExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    .line 180
    goto :goto_18

    .line 177
    :catch_f
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "mSmartDataOpExt init fail"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    return-void
.end method

.method private isSmartDataSwitchSupport()Z
    .registers 3

    .line 355
    const-string v0, "persist.vendor.radio.smart.data.switch"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 433
    const-string v0, "SmartDataSwitch"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 439
    const-string v0, "SmartDataSwitch"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void
.end method

.method protected static logi(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 445
    const-string v0, "SmartDataSwitch"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method protected static logv(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 427
    const-string v0, "SmartDataSwitch"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method public static makeSmartDataSwitchAssistant(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 128
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    .line 132
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    if-nez v0, :cond_10

    .line 133
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    goto :goto_13

    .line 135
    :cond_10
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->updatePhones([Lcom/android/internal/telephony/Phone;)V

    .line 137
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeSDSA: X sSDSA ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->sSmartDataSwitchAssistant:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    return-object v0

    .line 129
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "param is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerEvents()V
    .registers 2

    .line 191
    const-string v0, "registerEvents"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private setInCallPhoneId(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 418
    iput p1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mInCallPhoneId:I

    .line 419
    return-void
.end method

.method private unregisterEvents()V
    .registers 2

    .line 195
    const-string v0, "unregisterEvents"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 196
    return-void
.end method


# virtual methods
.method public checkIsSwitchAvailable(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 384
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v0

    if-nez v0, :cond_d

    .line 385
    const-string v0, "checkIsSwitchAvailable: not have TempDataSwitchCapability"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x0

    return v0

    .line 388
    :cond_d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->checkIsSwitchAvailable(I)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .registers 2

    .line 184
    const-string v0, "SmartDataSwitchAssistant.dispose"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->unregisterEvents()V

    .line 188
    :cond_e
    return-void
.end method

.method public getAospTemporaryDataSettings(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 397
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 398
    .local v0, "mPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataAllowedInVoiceCall()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 399
    const/4 v1, 0x1

    return v1

    .line 401
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public getInCallPhoneId()I
    .registers 2

    .line 422
    iget v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mInCallPhoneId:I

    return v0
.end method

.method public getTemporaryDataMode()I
    .registers 4

    .line 413
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "temp_data_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 414
    .local v0, "mode":I
    return v0
.end method

.method public getVoiceNetworkType(I)I
    .registers 3
    .param p1, "phoneId"    # I

    .line 291
    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 292
    const-string v0, "updateCallType() invalid Phone Id!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    return v0

    .line 295
    :cond_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    rem-int/lit8 v0, v0, 0xa

    .line 203
    .local v0, "phoneId":I
    iget v1, p1, Landroid/os/Message;->what:I

    sub-int/2addr v1, v0

    .line 205
    .local v1, "eventId":I
    sparse-switch v1, :sswitch_data_50

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message with number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    goto :goto_4f

    .line 212
    :sswitch_21
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->onServiceStateChanged(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 213
    const-string v2, "EVENT_SERVICE_STATE_CHANGED: notify"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_4f

    .line 207
    :sswitch_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRVCC, phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->onSrvccStateChanged()V

    .line 209
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 210
    nop

    .line 221
    :cond_4f
    :goto_4f
    return-void

    :sswitch_data_50
    .sparse-switch
        0x1e -> :sswitch_32
        0x28 -> :sswitch_21
    .end sparse-switch
.end method

.method public isVoLteCalling(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 283
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v0, p1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v1, :cond_11

    .line 284
    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v0

    return v0

    .line 286
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVoLteCalling: mPhones["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public isWifcCalling(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 278
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    return v0
.end method

.method public onDsdaStateChanged()V
    .registers 2

    .line 392
    const-string v0, "onDsdaStateChanged: notify"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 394
    return-void
.end method

.method public onHandoverToCellular()V
    .registers 2

    .line 313
    const-string v0, "onHandoverToCellular()"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public onHandoverToWifi()V
    .registers 2

    .line 308
    const-string v0, "onHandoverToWifi()"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public onServiceStateChanged(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 304
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->onServiceStateChanged(I)Z

    move-result v0

    return v0
.end method

.method public onSrvccStateChanged()V
    .registers 2

    .line 299
    const-string v0, "onSrvccStateChanged()"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->onSrvccStateChanged()V

    .line 301
    return-void
.end method

.method public regImsHandoverEvent()V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v0, :cond_a

    .line 254
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getWifiOffLoadService()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 256
    :cond_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v0, :cond_28

    .line 258
    :try_start_e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mHandoverStateListener:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

    if-nez v0, :cond_1a

    .line 259
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;-><init>(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mHandoverStateListener:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

    .line 261
    :cond_1a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mHandoverStateListener:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

    invoke-interface {v0, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    .line 264
    goto :goto_28

    .line 262
    :catch_22
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "regImsHandoverEvent(): RemoteException mWfoService()"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28
    :goto_28
    return-void
.end method

.method public regServiceStateChangedEvent()V
    .registers 5

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    if-ge v0, v1, :cond_12

    .line 240
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x28

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public regSrvccEvent()V
    .registers 5

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    if-ge v0, v1, :cond_12

    .line 226
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1e

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public registerReEvaluateEvent(Landroid/os/Handler;ILjava/lang/Object;I)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "phoneId"    # I

    .line 359
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v0

    if-nez v0, :cond_c

    .line 360
    const-string v0, "registerReEvaluateEvent: not have TempDataSwitchCapability"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 361
    return-void

    .line 363
    :cond_c
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 364
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    const-string v1, "registerReEvaluateEvent()"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->setInCallPhoneId(I)V

    .line 366
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 367
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->regImsHandoverEvent()V

    .line 368
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v1}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->onCallStarted()V

    .line 369
    return-void
.end method

.method public unregImsHandoverEvent()V
    .registers 3

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mHandoverStateListener:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;

    invoke-interface {v0, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 274
    goto :goto_e

    .line 272
    :catch_8
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unregImsHandoverEvent: RemoteException mWfoService()"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->loge(Ljava/lang/String;)V

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public unregServiceStateChangedEvent()V
    .registers 3

    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    if-ge v0, v1, :cond_f

    .line 247
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public unregSrvccEvent()V
    .registers 3

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    if-ge v0, v1, :cond_f

    .line 233
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForHandoverStateChanged(Landroid/os/Handler;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public unregisterReEvaluateEvent(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 372
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v0

    if-nez v0, :cond_c

    .line 373
    const-string v0, "unregisterReEvaluateEvent: not have TempDataSwitchCapability"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 374
    return-void

    .line 376
    :cond_c
    const-string v0, "unregisterReEvaluateEvent()"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 377
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->setInCallPhoneId(I)V

    .line 378
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 379
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->unregImsHandoverEvent()V

    .line 380
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mSmartDataOpExt:Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;->onCallEnded()V

    .line 381
    return-void
.end method

.method public updatePhones([Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhones: prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 115
    iget v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    array-length v1, p1

    if-le v0, v1, :cond_25

    return-void

    .line 117
    :cond_25
    iget v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    .line 119
    .local v0, "prevPhoneNum":I
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 120
    array-length v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mPhoneNum:I

    .line 121
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isSmartDataSwitchSupport()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 122
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->registerEvents()V

    .line 124
    :cond_35
    return-void
.end method

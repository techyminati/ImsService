.class public Lcom/mediatek/ims/config/MtkImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "MtkImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtkImsConfigImpl"

.field public static final UNKNOWN:I = -0x1

.field public static reason:I


# instance fields
.field private final mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

.field private mRcsEventCallback:Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

.field private rcsUaService:Lcom/mediatek/ims/rcsua/RcsUaService;

.field private uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->reason:I

    return-void
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/android/ims/internal/IImsConfig;

    .line 56
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    .line 59
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;-><init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mRcsEventCallback:Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->registerAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkImsConfigImpl register ACS fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsConfigImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->updateConfiguration(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcse/UaServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 36
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 254
    const-string v0, "MtkImsConfigImpl"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 258
    const-string v0, "MtkImsConfigImpl"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method private updateConfiguration(ZI)V
    .locals 10
    .param p1, "valid"    # Z
    .param p2, "version"    # I

    .line 219
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 220
    .local v0, "subIds":[I
    const-string v1, "MtkImsConfigImpl"

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 222
    :try_start_0
    aget v3, v0, v2

    invoke-static {v3}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v3

    .line 223
    .local v3, "pm":Landroid/telephony/ims/ProvisioningManager;
    if-eqz v3, :cond_6

    .line 224
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 225
    iget-object v4, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    const-string v5, "capInfoExpiry"

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/rcse/UaServiceManager;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_0
    const/16 v4, 0x5460

    .line 226
    .local v4, "rcsExpiry":I
    :goto_0
    const/16 v5, 0x12

    .line 227
    .local v5, "key":I
    invoke-virtual {v3, v5}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v6

    if-eq v6, v4, :cond_1

    .line 228
    invoke-virtual {v3, v5, v4}, Landroid/telephony/ims/ProvisioningManager;->setProvisioningIntValue(II)I

    .line 231
    :cond_1
    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    .line 232
    iget-object v6, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    const-string v7, "source-throttlepublish"

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/rcse/UaServiceManager;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    goto :goto_1

    :cond_2
    const/16 v6, 0x7530

    .line 233
    .local v6, "publishThrottle":I
    :goto_1
    const/16 v5, 0x15

    .line 234
    invoke-virtual {v3, v5}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 235
    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ProvisioningManager;->setProvisioningIntValue(II)I

    .line 238
    :cond_3
    iget-object v7, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-virtual {v7}, Lcom/mediatek/ims/rcse/UaServiceManager;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v7

    .line 239
    .local v7, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->readXmlData()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    move-object v9, v8

    .line 240
    .local v9, "info":Ljava/lang/String;
    :goto_2
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 241
    .local v8, "infoByte":[B
    :cond_5
    if-eqz v8, :cond_6

    .line 242
    invoke-virtual {v3, v8, v2}, Landroid/telephony/ims/ProvisioningManager;->notifyRcsAutoConfigurationReceived([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 245
    .end local v3    # "pm":Landroid/telephony/ims/ProvisioningManager;
    .end local v4    # "rcsExpiry":I
    .end local v5    # "key":I
    .end local v6    # "publishThrottle":I
    .end local v7    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .end local v8    # "infoByte":[B
    .end local v9    # "info":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConfiguration, excpetion happened! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    goto :goto_4

    .line 249
    :cond_7
    const-string v2, "updateConfiguration, invalid subId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_4
    return-void
.end method


# virtual methods
.method public getConfigInt(I)I
    .locals 4
    .param p1, "item"    # I

    .line 101
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedValue(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v1, "value":I
    if-eq v1, v0, :cond_0

    .line 103
    return v1

    .line 107
    .end local v1    # "value":I
    :cond_0
    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigInt: item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkImsConfigImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # I

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigInt: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public setConfig(II)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedValue(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfig: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "MtkImsConfigImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_0
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfig: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v2, "MtkImsConfigImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 9
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRcsClientConfig called in ACS vendor with rcc value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsVersion()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "mRcsVersion":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsProfile()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "mRcsProfile":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVendor()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "mClientVendor":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVersion()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "mClientVersion":Ljava/lang/String;
    const-string v5, "persist.vendor.operator.optr"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "optr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "optr value next "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    const-string v6, "rcsSingleRegistrationCapable true "

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v6, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-nez v6, :cond_0

    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 134
    :cond_0
    iget-object v6, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-eqz v6, :cond_1

    .line 136
    :try_start_0
    const-string v6, "setAcs called .."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v6, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-virtual {v6, v0, v2, v3, v4}, Lcom/mediatek/ims/rcse/UaServiceManager;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v6

    .line 140
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAcsonfiguration, excpetion happened! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public triggerAutoConfiguration()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    const-string v1, "MtkImsConfigImpl"

    if-eqz v0, :cond_1

    .line 151
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->triggerAcsRequest(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerAutoConfiguration error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 156
    :cond_1
    const-string v0, "ua service is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_1
    return-void
.end method

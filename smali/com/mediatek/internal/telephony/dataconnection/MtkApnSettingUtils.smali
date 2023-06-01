.class public Lcom/mediatek/internal/telephony/dataconnection/MtkApnSettingUtils;
.super Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;
.source "MtkApnSettingUtils.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MtkApnSettingUtils"

.field private static sDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnSettingUtils;->sDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;-><init>()V

    return-void
.end method

.method private static isMeteredApnTypeEx(ILcom/android/internal/telephony/Phone;)Landroid/os/Bundle;
    .registers 8
    .param p0, "apnType"    # I
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 72
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    .line 73
    .local v0, "isRoaming":Z
    const/4 v1, 0x0

    .line 74
    .local v1, "useEx":Z
    const/4 v2, 0x0

    .line 76
    .local v2, "result":Z
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/MtkApnSettingUtils;->sDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-nez v3, :cond_3c

    .line 78
    nop

    .line 79
    :try_start_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v3

    .line 80
    .local v3, "factoryBase":Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeDataConnectionExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    move-result-object v4

    sput-object v4, Lcom/mediatek/internal/telephony/dataconnection/MtkApnSettingUtils;->sDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_22

    .line 84
    .end local v3    # "factoryBase":Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;
    goto :goto_3c

    .line 81
    :catch_22
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sDataConnectionExt init fail. e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkApnSettingUtils"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v4, 0x0

    sput-object v4, Lcom/mediatek/internal/telephony/dataconnection/MtkApnSettingUtils;->sDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    .line 87
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3c
    :goto_3c
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/MtkApnSettingUtils;->sDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v3, :cond_51

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->isMeteredApnTypeByLoad()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 88
    const/4 v1, 0x1

    .line 89
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/MtkApnSettingUtils;->sDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    .line 90
    invoke-static {p0}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-interface {v3, v4, v0}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->isMeteredApnType(Ljava/lang/String;Z)Z

    move-result v2

    .line 93
    :cond_51
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v3, "b":Landroid/os/Bundle;
    const-string v4, "useEx"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    const-string v4, "result"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    return-object v3
.end method

.method private static mvnoMatchesEx(Lcom/android/internal/telephony/uicc/IccRecords;ILjava/lang/String;)Z
    .registers 4
    .param p0, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p1, "mvnoType"    # I
    .param p2, "mvnoMatchData"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->isOperatorMvnoForEfPnn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->isOperatorMvnoForEfPnn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 64
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

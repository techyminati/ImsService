.class public Lcom/mediatek/internal/telephony/MtkRadioConfig;
.super Lcom/android/internal/telephony/RadioConfig;
.source "MtkRadioConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkRadioConfig"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/HalVersion;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radioHalVersion"    # Lcom/android/internal/telephony/HalVersion;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioConfig;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/HalVersion;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected isGetHidlServiceSync()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method protected updateRadioConfigProxy()V
    .registers 5

    .line 54
    invoke-super {p0}, Lcom/android/internal/telephony/RadioConfig;->updateRadioConfigProxy()V

    .line 55
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    if-eqz v0, :cond_7a

    .line 60
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkRadioConfig;->RADIO_CONFIG_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const-string v1, "cast "

    const-string v2, "MtkRadioConfig"

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    .line 61
    invoke-static {v0}, Landroid/hardware/radio/config/V1_3/IRadioConfig;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/config/V1_3/IRadioConfig;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "to 1.3."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    invoke-static {v0}, Landroid/hardware/radio/config/V1_3/IRadioConfig;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/config/V1_3/IRadioConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    .line 66
    sget-object v0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->RADIO_CONFIG_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_7a

    .line 67
    :cond_43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkRadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    .line 68
    invoke-static {v0}, Landroid/hardware/radio/config/V1_1/IRadioConfig;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/config/V1_1/IRadioConfig;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "to 1.1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    invoke-static {v0}, Landroid/hardware/radio/config/V1_1/IRadioConfig;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/config/V1_1/IRadioConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigProxy:Landroid/hardware/radio/config/V1_0/IRadioConfig;

    .line 73
    sget-object v0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioConfig;->mRadioConfigVersion:Lcom/android/internal/telephony/HalVersion;

    .line 76
    :cond_7a
    :goto_7a
    return-void
.end method

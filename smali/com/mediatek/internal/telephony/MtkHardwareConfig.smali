.class public final Lcom/mediatek/internal/telephony/MtkHardwareConfig;
.super Lcom/android/internal/telephony/HardwareConfig;
.source "MtkHardwareConfig.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "res"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HardwareConfig;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public hasC2kOverImsModem()Z
    .registers 3

    .line 116
    const-string v0, "ro.vendor.mtk_ril_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c6m_1rild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public hasMdAutoSetupImsCapability()Z
    .registers 3

    .line 132
    const-string v0, "ro.vendor.md_auto_setup_ims"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 133
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public hasModemDeactPdnCapabilityForMultiPS()Z
    .registers 3

    .line 80
    const-string v0, "ro.vendor.mtk_ril_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c6m_1rild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public hasOperatorIaCapability()Z
    .registers 3

    .line 95
    const-string v0, "ro.vendor.mtk_ril_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c6m_1rild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 96
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public hasParsingCEPCapability()Z
    .registers 2

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasMdAutoSetupImsCapability()Z

    move-result v0

    return v0
.end method

.method public hasRaCapability()Z
    .registers 3

    .line 64
    const-string v0, "ro.vendor.mtk_ril_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c6m_1rild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isCdma3gDualActivationSupported()Z
    .registers 3

    .line 144
    const-string v0, "vendor.ril.cdma.3g.dualact"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 145
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;
.super Lcom/android/internal/telephony/DeviceStateMonitor;
.source "MtkDeviceStateMonitor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MtkDeviceStateMonitor"

.field private static final PROPERTY_FD_ON_CHARGE:Ljava/lang/String; = "persist.vendor.fd.on.charge"

.field private static final PROPERTY_FD_SCREEN_OFF_ONLY:Ljava/lang/String; = "persist.vendor.fd.screen.off.only"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 55
    const-string v0, "Initialize MtkDeviceStateMonitor"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->logd(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->isLowDataExpected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsLowDataExpected:Z

    .line 57
    return-void
.end method

.method private static isFdEnabledOnlyWhenScreenOff()Z
    .registers 3

    .line 74
    const-string v0, "persist.vendor.fd.screen.off.only"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method private static isFdEnabledWhenCharging()Z
    .registers 2

    .line 70
    const-string v0, "persist.vendor.fd.on.charge"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[phoneId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDeviceStateMonitor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method


# virtual methods
.method protected isLowDataExpected()Z
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLowDataExpected mIsScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsCharging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsTetheringOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsTetheringOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->logd(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->isFdEnabledOnlyWhenScreenOff()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_44

    :cond_34
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsCharging:Z

    if-eqz v0, :cond_3e

    .line 65
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->isFdEnabledWhenCharging()Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_3e
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_44

    const/4 v0, 0x1

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    .line 64
    :goto_45
    return v0
.end method

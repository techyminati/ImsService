.class public Lcom/mediatek/internal/telephony/MtkPhoneNotifier;
.super Lcom/android/internal/telephony/DefaultPhoneNotifier;
.source "MtkPhoneNotifier.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MtkPhoneNotifr"


# instance fields
.field private final mFakeSub:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(Landroid/content/Context;)V

    .line 70
    const v0, 0x7ffffffe

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mFakeSub:I

    .line 74
    const-string v0, "MtkPhoneNotifr"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->init()Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    .line 76
    return-void
.end method

.method private getServiceStateBrief(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .registers 4
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 79
    if-nez p1, :cond_5

    const-string v0, "n/a"

    return-object v0

    .line 80
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voice_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method


# virtual methods
.method public notifyMtkServiceState(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)V
    .registers 8
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "mss"    # Landroid/telephony/ServiceState;

    .line 103
    move-object v0, p2

    .line 104
    .local v0, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 109
    .local v1, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_11

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    goto :goto_14

    :cond_11
    const v2, 0x7ffffffe

    .line 111
    .local v2, "subId":I
    :goto_14
    if-nez v0, :cond_1f

    .line 112
    new-instance v3, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v3}, Lmediatek/telephony/MtkServiceState;-><init>()V

    move-object v0, v3

    .line 113
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 116
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MtkPhoneNotifier notifyMtkServiceState phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ServiceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->getServiceStateBrief(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    const-string v4, "MtkPhoneNotifr"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v3, :cond_52

    .line 121
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v3, v1, v2, v0}, Landroid/telephony/TelephonyRegistryManager;->notifyServiceStateChanged(IILandroid/telephony/ServiceState;)V

    .line 123
    :cond_52
    return-void
.end method

.method public notifyMtkSignalStrength(Lcom/android/internal/telephony/Phone;Landroid/telephony/SignalStrength;)V
    .registers 7
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ss"    # Landroid/telephony/SignalStrength;

    .line 126
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 131
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_10

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    goto :goto_13

    :cond_10
    const v1, 0x7ffffffe

    .line 133
    .local v1, "subId":I
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MtkPhoneNotifier notifyMtkSignalStrength phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " signal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkPhoneNotifr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v2, :cond_42

    .line 137
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v2, v0, v1, p2}, Landroid/telephony/TelephonyRegistryManager;->notifySignalStrengthChanged(IILandroid/telephony/SignalStrength;)V

    .line 140
    :cond_42
    return-void
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 88
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_11

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->notifyMtkServiceState(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;)V

    .line 92
    :cond_11
    return-void
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .line 96
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 97
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_11

    .line 98
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;->notifyMtkSignalStrength(Lcom/android/internal/telephony/Phone;Landroid/telephony/SignalStrength;)V

    .line 100
    :cond_11
    return-void
.end method

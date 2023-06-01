.class public final Lcom/mediatek/internal/telephony/MtkDisplayInfoController;
.super Lcom/android/internal/telephony/DisplayInfoController;
.source "MtkDisplayInfoController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkDisplayInfoController"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DisplayInfoController;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 53
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    if-eqz v0, :cond_c

    .line 54
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NetworkTypeController;->quitNow()V

    .line 56
    :cond_c
    new-instance v0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    invoke-direct {v0, p1, p0}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/DisplayInfoController;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    .line 57
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->sendMessage(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public updateTelephonyDisplayInfo()V
    .registers 5

    .line 61
    new-instance v0, Landroid/telephony/TelephonyDisplayInfo;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 62
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    .line 63
    invoke-virtual {v2}, Lcom/android/internal/telephony/NetworkTypeController;->getOverrideNetworkType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    .line 65
    .local v0, "newDisplayInfo":Landroid/telephony/TelephonyDisplayInfo;
    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2e

    .line 66
    new-instance v1, Landroid/telephony/TelephonyDisplayInfo;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 67
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    move-object v0, v1

    .line 70
    :cond_2e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyDisplayInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 71
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 72
    .local v1, "sst":Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TelephonyDisplayInfo["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", turboSS alive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isTurboSSAlive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v3, "MtkDisplayInfoController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 75
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mTelephonyDisplayInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 77
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isTurboSSAlive()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 78
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/Phone;->notifyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 81
    .end local v1    # "sst":Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    :cond_8c
    return-void
.end method

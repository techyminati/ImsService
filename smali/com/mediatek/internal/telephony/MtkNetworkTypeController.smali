.class public final Lcom/mediatek/internal/telephony/MtkNetworkTypeController;
.super Lcom/android/internal/telephony/NetworkTypeController;
.source "MtkNetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;
    }
.end annotation


# static fields
.field private static final EVENT_5G_ICON_INFO_CHANGED:I = 0x64

.field private static final EVENT_WLAN_REG_STATE_CHANGED:I = 0x65

.field public static final TAG:Ljava/lang/String; = "MtkNetworkTypeController"


# instance fields
.field private mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

.field private mDisplayNrAdvanced:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/DisplayInfoController;)V
    .registers 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "displayInfoController"    # Lcom/android/internal/telephony/DisplayInfoController;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/DisplayInfoController;)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mDisplayNrAdvanced:I

    .line 72
    new-instance v0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;-><init>(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;Lcom/mediatek/internal/telephony/MtkNetworkTypeController$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkNetworkTypeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkNetworkTypeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    .line 62
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mDisplayNrAdvanced:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkNetworkTypeController;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mDisplayNrAdvanced:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->updateOverrideNetworkType()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;)Lcom/android/internal/telephony/DisplayInfoController;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    .line 62
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    return-object v0
.end method


# virtual methods
.method protected getCurrentOverrideNetworkType()I
    .registers 4

    .line 105
    invoke-super {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentOverrideNetworkType()I

    move-result v0

    .line 106
    .local v0, "displayNetworkType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Override]getCurrentOverrideNetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkNetworkTypeController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mDisplayNrAdvanced:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 108
    const/4 v0, 0x5

    .line 110
    :cond_20
    return v0
.end method

.method protected isAdditionalNrAdvancedBand()Z
    .registers 12

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "result":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 117
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "physicalChannelConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    if-eqz v1, :cond_65

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 119
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 120
    .local v2, "ss":Landroid/telephony/ServiceState;
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    .line 123
    .local v3, "nri":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v3, :cond_64

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v4

    if-eqz v4, :cond_64

    .line 124
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v4

    .line 125
    .local v4, "cellIdentity":Landroid/telephony/CellIdentity;
    invoke-virtual {v4}, Landroid/telephony/CellIdentity;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_64

    .line 126
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityNr;->getBands()[I

    move-result-object v5

    .line 127
    .local v5, "bands":[I
    array-length v6, v5

    const/4 v7, 0x0

    :goto_3b
    if-ge v7, v6, :cond_64

    aget v8, v5, v7

    .line 128
    .local v8, "band":I
    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mAdditionalNrAdvancedBandsList:[I

    invoke-static {v9, v8}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "use additional NR band["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] as MMWave"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->log(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    .line 127
    .end local v8    # "band":I
    :cond_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    .line 135
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    .end local v3    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    .end local v4    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v5    # "bands":[I
    :cond_64
    goto :goto_69

    .line 136
    :cond_65
    invoke-super {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isAdditionalNrAdvancedBand()Z

    move-result v0

    .line 138
    :goto_69
    return v0
.end method

.method protected mtkNeedUpdateNRStateForLegacyState()Z
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected registerForAllEvents()V
    .registers 6

    .line 78
    invoke-super {p0}, Lcom/android/internal/telephony/NetworkTypeController;->registerForAllEvents()V

    .line 80
    const-string v0, "MtkNetworkTypeController"

    const-string v1, "registerForAllEvents: register rat changed for TRANSPORT_TYPE_WLAN"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 81
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerFor5gUWInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method protected unRegisterForAllEvents()V
    .registers 4

    .line 92
    invoke-super {p0}, Lcom/android/internal/telephony/NetworkTypeController;->unRegisterForAllEvents()V

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 93
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(ILandroid/os/Handler;)V

    .line 95
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterFor5gUWInfo(Landroid/os/Handler;)V

    .line 96
    return-void
.end method

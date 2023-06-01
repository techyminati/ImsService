.class public Lcom/mediatek/internal/telephony/MtkUiccSmsController;
.super Lcom/mediatek/internal/telephony/IMtkSms$Stub;
.source "MtkUiccSmsController.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "Mtk_RIL_UiccSmsController"


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;-><init>()V

    .line 78
    const-string v0, "imtksms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_e

    .line 79
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 81
    :cond_e
    return-void
.end method

.method private getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .registers 3
    .param p1, "subId"    # I

    .line 110
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    return-object v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 3
    .param p1, "subId"    # I

    .line 84
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 85
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_e

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 88
    :cond_e
    return-object v0
.end method

.method private sendDataInternal(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 22
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "originalPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p10, "checkPermission"    # Z

    .line 242
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v10

    .line 243
    .local v10, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v10, :cond_1b

    .line 244
    move-object v0, v10

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendDataWithOriginalPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    move v1, p1

    goto :goto_32

    .line 247
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDataInternal iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_32
    return-void
.end method

.method private sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "errorCode"    # I

    .line 92
    if-eqz p1, :cond_7

    .line 94
    :try_start_2
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_5} :catch_6

    .line 96
    goto :goto_7

    .line 95
    :catch_6
    move-exception v0

    .line 98
    :cond_7
    :goto_7
    return-void
.end method

.method private sendErrorInPendingIntents(Ljava/util/List;I)V
    .registers 5
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .line 101
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 102
    .local v1, "intent":Landroid/app/PendingIntent;
    invoke-direct {p0, v1, p2}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    .line 103
    .end local v1    # "intent":Landroid/app/PendingIntent;
    goto :goto_4

    .line 104
    :cond_14
    return-void
.end method


# virtual methods
.method public activateCellBroadcastSmsForSubscriber(IZ)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "activate"    # Z

    .line 618
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 619
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 620
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->activateCellBroadcastSms(Z)Z

    move-result v1

    return v1

    .line 622
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateCellBroadcastSmsForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v1, 0x0

    return v1
.end method

.method public copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .registers 19
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .line 157
    .local p5, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 158
    .local v0, "result":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v9

    .line 159
    .local v9, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v9, :cond_16

    .line 160
    move-object v1, v9

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v0

    move v2, p1

    goto :goto_2d

    .line 163
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStoredMultipartText iccSmsIntMgr is null for subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Mtk_RIL_UiccSmsController"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_2d
    return v0
.end method

.method public getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;
    .registers 9
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->isSmsReadyForSubscriber(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Mtk_RIL_UiccSmsController"

    if-nez v0, :cond_f

    .line 126
    const-string v0, "getAllMessagesFromIccEf SMS not ready"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v1

    .line 131
    :cond_f
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 132
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_1a

    .line 133
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getAllMessagesFromIccEfByMode(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 135
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllMessagesFromIccEfByModeForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v1
.end method

.method public getCellBroadcastLangsForSubscriber(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .line 717
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 718
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 719
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getCellBroadcastLangs()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 721
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellBroadcastLangsForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v1, ""

    return-object v1
.end method

.method public getCellBroadcastRangesForSubscriber(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .line 680
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 681
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 682
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getCellBroadcastRanges()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 684
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellBroadcastRangesForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v1, ""

    return-object v1
.end method

.method public getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;
    .registers 7
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 579
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 580
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 581
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getMessageFromIccEf(Ljava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;

    move-result-object v1

    return-object v1

    .line 583
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageFromIccEfForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v1, 0x0

    return-object v1
.end method

.method public getScAddressForSubscriber(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .line 736
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 737
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 738
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getScAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 740
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScAddress iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v1, 0x0

    return-object v1
.end method

.method public getScAddressWithErrorCodeForSubscriber(I)Landroid/os/Bundle;
    .registers 5
    .param p1, "subId"    # I

    .line 755
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 756
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 757
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getScAddressWithErrorCode()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 759
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScAddressWithErrorCode iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSmsParametersForSubscriber(ILjava/lang/String;)Lmediatek/telephony/MtkSmsParameters;
    .registers 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 535
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 536
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 537
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getSmsParameters(Ljava/lang/String;)Lmediatek/telephony/MtkSmsParameters;

    move-result-object v1

    return-object v1

    .line 539
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsParametersForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    .registers 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 299
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 300
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 301
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getSmsSimMemoryStatus(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v1

    return-object v1

    .line 303
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmsMemoryStatus iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v1, 0x0

    return-object v1
.end method

.method public insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .registers 10
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B

    .line 440
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 442
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    const/4 v1, 0x0

    .line 443
    .local v1, "ret":Lmediatek/telephony/MtkSimSmsInsertStatus;
    if-eqz v0, :cond_c

    .line 444
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->insertRawMessageToIccCard(Ljava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v1

    goto :goto_22

    .line 446
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertRawMessageToIccCardForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mtk_RIL_UiccSmsController"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_22
    return-object v1
.end method

.method public insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .registers 18
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Lmediatek/telephony/MtkSimSmsInsertStatus;"
        }
    .end annotation

    .line 414
    .local p5, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v8

    .line 415
    .local v8, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v8, :cond_13

    .line 416
    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move v1, p1

    goto :goto_2a

    .line 419
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMultipartTextWithEncodingTypeForSubscriber iccSmsIntMgr is null for subscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSmsReadyForSubscriber(I)Z
    .registers 5
    .param p1, "subId"    # I

    .line 260
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 261
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 262
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isSmsReady()Z

    move-result v1

    return v1

    .line 264
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmsReady iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v1, 0x0

    return v1
.end method

.method public queryCellBroadcastSmsActivationForSubscriber(I)Z
    .registers 5
    .param p1, "subId"    # I

    .line 598
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 599
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 600
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->queryCellBroadcastSmsActivation()Z

    move-result v1

    return v1

    .line 602
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellBroadcastSmsConfigForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v1, 0x0

    return v1
.end method

.method public removeCellBroadcastMsgForSubscriber(III)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "channelId"    # I
    .param p3, "serialId"    # I

    .line 640
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 641
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 642
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->removeCellBroadcastMsg(II)Z

    move-result v1

    return v1

    .line 644
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCellBroadcastMsg iccSmsIntMgr is null for subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v1, 0x0

    return v1
.end method

.method public sendData(ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 20
    .param p1, "subId"    # I
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "originalPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 235
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendDataInternal(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 237
    return-void
.end method

.method public sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 21
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "originalPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 201
    const/4 v10, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendDataInternal(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 203
    return-void
.end method

.method public sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V
    .registers 20
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p6, "encodingType"    # I
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 385
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v9

    .line 386
    .local v9, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v9, :cond_1b

    .line 387
    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V

    move-object v2, p0

    move v1, p1

    move-object/from16 v3, p7

    goto :goto_39

    .line 390
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMultipartTextWithEncodingTypeForSubscriber iccSmsIntMgr is null for subscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x1

    move-object v2, p0

    move-object/from16 v3, p7

    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    .line 395
    :goto_39
    return-void
.end method

.method public sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V
    .registers 20
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p6, "extraParams"    # Landroid/os/Bundle;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 513
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v9

    .line 514
    .local v9, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v9, :cond_1b

    .line 515
    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V

    move-object v2, p0

    move v1, p1

    move-object/from16 v3, p7

    goto :goto_39

    .line 518
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTextWithExtraParamsForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v0, 0x1

    move-object v2, p0

    move-object/from16 v3, p7

    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    .line 523
    :goto_39
    return-void
.end method

.method public sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 20
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "encodingType"    # I
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z

    .line 342
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v9

    .line 343
    .local v9, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v9, :cond_1b

    .line 344
    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    move-object v2, p0

    move v1, p1

    move-object/from16 v3, p7

    goto :goto_39

    .line 347
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTextWithEncodingTypeForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x1

    move-object v2, p0

    move-object/from16 v3, p7

    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    .line 352
    :goto_39
    return-void
.end method

.method public sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 20
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "extraParams"    # Landroid/os/Bundle;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z

    .line 475
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v9

    .line 476
    .local v9, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v9, :cond_1b

    .line 477
    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    move-object v2, p0

    move v1, p1

    move-object/from16 v3, p7

    goto :goto_39

    .line 480
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTextWithExtraParamsForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v0, 0x1

    move-object v2, p0

    move-object/from16 v3, p7

    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    .line 485
    :goto_39
    return-void
.end method

.method public setCellBroadcastLangsForSubscriber(ILjava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "lang"    # Ljava/lang/String;

    .line 699
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 700
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 701
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setCellBroadcastLangs(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 703
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellBroadcastLangsForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v1, 0x0

    return v1
.end method

.method public setEtwsConfigForSubscriber(II)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "mode"    # I

    .line 661
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 662
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 663
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setEtwsConfig(I)Z

    move-result v1

    return v1

    .line 665
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEtwsConfigForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v1, 0x0

    return v1
.end method

.method public setScAddressForSubscriber(ILjava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 775
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 776
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 777
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setScAddress(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 779
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScAddress iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v1, 0x0

    return v1
.end method

.method public setSmsMemoryStatusForSubscriber(IZ)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "status"    # Z

    .line 280
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 281
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_a

    .line 282
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setSmsMemoryStatus(Z)V

    goto :goto_20

    .line 284
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmsMemoryStatus iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_20
    return-void
.end method

.method public setSmsParametersForSubscriber(ILjava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "params"    # Lmediatek/telephony/MtkSmsParameters;

    .line 557
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->getIccSmsInterfaceManager(I)Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    move-result-object v0

    .line 558
    .local v0, "iccSmsIntMgr":Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    if-eqz v0, :cond_b

    .line 559
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setSmsParameters(Ljava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z

    move-result v1

    return v1

    .line 561
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmsParametersForSubscriber iccSmsIntMgr is null forsubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtk_RIL_UiccSmsController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v1, 0x0

    return v1
.end method

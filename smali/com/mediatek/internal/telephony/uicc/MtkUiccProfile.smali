.class public Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;
.super Lcom/android/internal/telephony/uicc/UiccProfile;
.source "MtkUiccProfile.java"


# static fields
.field protected static final EVENT_BASE_ID:I = 0x64

.field private static final EVENT_GET_ATR_DONE:I = 0x66

.field private static final EVENT_ICC_FDN_CHANGED:I = 0x68

.field private static final EVENT_OPEN_CHANNEL_WITH_SW_DONE:I = 0x67

.field private static final EVENT_SIM_IO_EX_DONE:I = 0x65

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = "N/A"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field static final UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;


# instance fields
.field private mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private mLastAppType:I

.field public final mMtkHandler:Landroid/os/Handler;

.field private mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 98
    const-string v0, "vendor.gsm.ril.uicctype"

    const-string v1, "vendor.gsm.ril.uicctype.2"

    const-string v2, "vendor.gsm.ril.uicctype.3"

    const-string v3, "vendor.gsm.ril.uicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    .line 105
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V
    .registers 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I
    .param p5, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p6, "lock"    # Ljava/lang/Object;

    .line 114
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/uicc/UiccProfile;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V

    .line 89
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 92
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLastAppType:I

    .line 129
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mMtkHandler:Landroid/os/Handler;

    .line 116
    const-string v0, "MtkUiccProfile Creating"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    .line 81
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mDisposed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)Lcom/android/internal/telephony/RegistrantList;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object v0
.end method


# virtual methods
.method protected covertException(Ljava/lang/String;)Ljava/lang/Exception;
    .registers 4
    .param p1, "operation"    # Ljava/lang/String;

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasIccCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->hasIccCard()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    return-object v0
.end method

.method public getFullIccCardType()[Ljava/lang/String;
    .registers 3

    .line 534
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCardType()Ljava/lang/String;
    .registers 3

    .line 530
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .registers 4
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 291
    const-string v0, "getIccStateReason E"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, p1, :cond_4a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_4a

    .line 294
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 324
    const/4 v0, 0x0

    return-object v0

    .line 322
    :pswitch_20
    const-string v0, "SIM_C_PUK"

    return-object v0

    .line 320
    :pswitch_23
    const-string v0, "SIM_C"

    return-object v0

    .line 318
    :pswitch_26
    const-string v0, "NS_SP_PUK"

    return-object v0

    .line 316
    :pswitch_29
    const-string v0, "NS_SP"

    return-object v0

    .line 314
    :pswitch_2c
    const-string v0, "SIM_PUK"

    return-object v0

    .line 312
    :pswitch_2f
    const-string v0, "SERVICE_PROVIDER_PUK"

    return-object v0

    .line 310
    :pswitch_32
    const-string v0, "CORPORATE_PUK"

    return-object v0

    .line 308
    :pswitch_35
    const-string v0, "NETWORK_SUBSET_PUK"

    return-object v0

    .line 306
    :pswitch_38
    const-string v0, "NETWORK_PUK"

    return-object v0

    .line 304
    :pswitch_3b
    const-string v0, "SIM"

    return-object v0

    .line 302
    :pswitch_3e
    const-string v0, "SERVICE_PROVIDER"

    return-object v0

    .line 300
    :pswitch_41
    const-string v0, "CORPORATE"

    return-object v0

    .line 298
    :pswitch_44
    const-string v0, "NETWORK_SUBSET"

    return-object v0

    .line 296
    :pswitch_47
    const-string v0, "NETWORK"

    return-object v0

    .line 328
    :cond_4a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method public getNetworkPersoType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .registers 3

    .line 487
    const-string v0, "getNetworkPersoType E"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_14

    .line 490
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 492
    :cond_14
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    monitor-exit v0

    return-object v1

    .line 493
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method protected getSubscriptionDisplayName(ILandroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 373
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "simNumeric":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v1

    .line 375
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2, p2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "simMvnoName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "simCarrierName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriptionDisplayName- simNumeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", simMvnoName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", simCarrierName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_53

    .line 384
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "carrier_a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 385
    move-object v3, v1

    .local v3, "nameToSet":Ljava/lang/String;
    goto :goto_55

    .line 387
    .end local v3    # "nameToSet":Ljava/lang/String;
    :cond_51
    move-object v3, v2

    .restart local v3    # "nameToSet":Ljava/lang/String;
    goto :goto_55

    .line 390
    .end local v3    # "nameToSet":Ljava/lang/String;
    :cond_53
    const-string v3, ""

    .line 392
    .restart local v3    # "nameToSet":Ljava/lang/String;
    :goto_55
    return-object v3
.end method

.method public iccExchangeSimIOEx(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 22
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "onComplete"    # Landroid/os/Message;

    .line 521
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mMtkHandler:Landroid/os/Handler;

    .line 522
    const/16 v3, 0x65

    move-object/from16 v11, p9

    invoke-virtual {v2, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 521
    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 523
    return-void
.end method

.method public iccGetAtr(Landroid/os/Message;)V
    .registers 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 526
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getATR(Landroid/os/Message;)V

    .line 527
    return-void
.end method

.method protected isUdpateCarrierName(Ljava/lang/String;)Z
    .registers 4
    .param p1, "newCarrierName"    # Ljava/lang/String;

    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 402
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 401
    :goto_11
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccProfile"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccProfile"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void
.end method

.method protected makeUiccApplication(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 6
    .param p1, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p2, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 125
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public queryIccNetworkLock(ILandroid/os/Message;)V
    .registers 8
    .param p1, "category"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryIccNetworkLock(): category =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->hasIccCard()Z

    move-result v0

    .line 415
    .local v0, "hasIccCard":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_1b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_27

    .line 417
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryIccNetworkLock(ILandroid/os/Message;)V

    goto :goto_4d

    .line 419
    :cond_27
    if-eqz p2, :cond_4d

    .line 420
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 421
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to queryIccNetworkLock, hasIccCard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 422
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v2, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 423
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 424
    monitor-exit v1

    return-void

    .line 426
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_4f
    move-exception v2

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_1b .. :try_end_51} :catchall_4f

    throw v2
.end method

.method protected registerCurrAppEvents()V
    .registers 5

    .line 167
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerCurrAppEvents()V

    .line 170
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    if-eqz v0, :cond_19

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->registerForFdnChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 175
    :cond_19
    return-void
.end method

.method public registerForFdnChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 462
    .local v1, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 464
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getIccFdnEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 465
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 467
    .end local v1    # "r":Lcom/android/internal/telephony/Registrant;
    :cond_16
    monitor-exit v0

    .line 468
    return-void

    .line 467
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public repollIccStateForModemSmlChangeFeatrue(Z)V
    .registers 4
    .param p1, "needIntent"    # Z

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repollIccStateForModemSmlChangeFeatrue, needIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 504
    .local v0, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v0, :cond_23

    .line 505
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->repollIccStateForModemSmlChangeFeatrue(IZ)V

    .line 507
    :cond_23
    return-void
.end method

.method protected setCurrentAppType(Z)V
    .registers 4
    .param p1, "isGsm"    # Z

    .line 190
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mCurrentAppType:I

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLastAppType:I

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentAppType, isGsm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 194
    if-nez p1, :cond_2a

    .line 195
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mCurrentAppType:I

    .line 196
    return-void

    .line 198
    :cond_2a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    .line 199
    return-void
.end method

.method protected setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 4
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 276
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_1d

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1d

    .line 277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v0

    .line 278
    .local v0, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_1d

    .line 279
    const-string v1, "setExternalState(): PERM_DISABLED"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 280
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 281
    return-void

    .line 285
    .end local v0    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :cond_1d
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 286
    return-void
.end method

.method protected setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .registers 9
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z

    .line 203
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid; Return!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->loge(Ljava/lang/String;)V

    .line 206
    monitor-exit v0

    return-void

    .line 210
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState(): mExternalState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newState =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " override = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 214
    if-nez p2, :cond_9e

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_9e

    .line 216
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_6b

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 217
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getNetworkPersoType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    if-eq v1, v2, :cond_6b

    .line 218
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getNetworkPersoType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    goto :goto_9e

    .line 220
    :cond_6b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_88

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLastAppType:I

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mCurrentAppType:I

    if-eq v1, v2, :cond_88

    .line 222
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->checkCdma3gCard(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_88

    .line 225
    const-string v1, "Update operatorNumeric for CDMA 3G dual mode card"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    goto :goto_9e

    .line 228
    :cond_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: !override and newstate unchanged from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 229
    monitor-exit v0

    return-void

    .line 235
    :cond_9e
    :goto_9e
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 237
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_c0

    .line 238
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getNetworkPersoType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkLockState =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mNetworkLockState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 244
    :cond_c0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_124

    .line 246
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_124

    .line 247
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "operator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11f

    .line 251
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 252
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "countryCode":Ljava/lang/String;
    if-eqz v2, :cond_119

    .line 254
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v4

    .line 255
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_11e

    .line 257
    :cond_119
    const-string v3, "EVENT_RECORDS_LOADED Country code is null"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->loge(Ljava/lang/String;)V

    .line 259
    .end local v2    # "countryCode":Ljava/lang/String;
    :goto_11e
    goto :goto_124

    .line 260
    :cond_11f
    const-string v2, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->loge(Ljava/lang/String;)V

    .line 264
    .end local v1    # "operator":Ljava/lang/String;
    :cond_124
    :goto_124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: set mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mExternalState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v2

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 269
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->getPhoneId()I

    move-result v4

    .line 268
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;I)V

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_16a
    move-exception v1

    monitor-exit v0
    :try_end_16c
    .catchall {:try_start_3 .. :try_end_16c} :catchall_16a

    throw v1
.end method

.method public setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 22
    .param p1, "category"    # I
    .param p2, "lockop"    # I
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "data_imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "onComplete"    # Landroid/os/Message;

    .line 435
    move-object v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIccNetworkEnabled(): category = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lockop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->hasIccCard()Z

    move-result v12

    .line 440
    .local v12, "hasIccCard":Z
    iget-object v13, v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 441
    :try_start_27
    iget-object v0, v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_41

    .line 442
    iget-object v0, v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object v3, v0

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_67

    .line 444
    :cond_41
    if-eqz p7, :cond_67

    .line 445
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to setIccNetworkLockEnabled, hasIccCard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 447
    invoke-static/range {p7 .. p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 448
    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V

    .line 449
    monitor-exit v13

    return-void

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_67
    :goto_67
    monitor-exit v13

    .line 452
    return-void

    .line 451
    :catchall_69
    move-exception v0

    monitor-exit v13
    :try_end_6b
    .catchall {:try_start_27 .. :try_end_6b} :catchall_69

    throw v0
.end method

.method protected unregisterCurrAppEvents()V
    .registers 3

    .line 179
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 182
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    if-eqz v0, :cond_16

    .line 183
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mMtkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->unregisterForFdnChanged(Landroid/os/Handler;)V

    .line 186
    :cond_16
    return-void
.end method

.method public unregisterForFdnChanged(Landroid/os/Handler;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;

    .line 472
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 474
    monitor-exit v0

    .line 475
    return-void

    .line 474
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

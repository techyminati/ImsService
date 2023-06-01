.class public Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
.super Lcom/android/internal/telephony/uicc/UiccCardApplication;
.source "MtkUiccCardApplication.java"


# static fields
.field public static final CAT_CORPORATE:I = 0x3

.field public static final CAT_NETOWRK_SUBSET:I = 0x1

.field public static final CAT_NETWOEK:I = 0x0

.field public static final CAT_NS_SP:I = 0x5

.field public static final CAT_SERVICE_PROVIDER:I = 0x2

.field public static final CAT_SIM:I = 0x4

.field public static final CAT_SIM_C:I = 0x6

.field private static final DBG:Z = true

.field private static final EVENT_CHANGE_NETWORK_LOCK_DONE:I = 0x66

.field private static final EVENT_PUK1_CHANGE_PIN1_DONE:I = 0x68

.field private static final EVENT_PUK2_CHANGE_PIN2_DONE:I = 0x69

.field private static final EVENT_QUERY_NETWORK_LOCK_DONE:I = 0x65

.field private static final EVENT_RADIO_NOTAVAILABLE:I = 0x67

.field private static final LOG_TAG_EX:Ljava/lang/String; = "MtkUiccCardApp"

.field public static final OP_ADD:I = 0x2

.field public static final OP_LOCK:I = 0x1

.field public static final OP_PERMANENT_UNLOCK:I = 0x4

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNLOCK:I

.field private static final PROPERTY_PIN1_RETRY:[Ljava/lang/String;

.field private static final PROPERTY_PIN2_RETRY:[Ljava/lang/String;

.field static final UICCCARDAPPLICATION_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;


# instance fields
.field private mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private mHandlerEx:Landroid/os/Handler;

.field protected mIccType:Ljava/lang/String;

.field protected mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 103
    const-string v0, "vendor.gsm.ril.uicctype"

    const-string v1, "vendor.gsm.ril.uicctype.2"

    const-string v2, "vendor.gsm.ril.uicctype.3"

    const-string v3, "vendor.gsm.ril.uicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->UICCCARDAPPLICATION_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    .line 112
    const-string v0, "vendor.gsm.sim.retry.pin1"

    const-string v1, "vendor.gsm.sim.retry.pin1.2"

    const-string v2, "vendor.gsm.sim.retry.pin1.3"

    const-string v3, "vendor.gsm.sim.retry.pin1.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->PROPERTY_PIN1_RETRY:[Ljava/lang/String;

    .line 119
    const-string v0, "vendor.gsm.sim.retry.pin2"

    const-string v1, "vendor.gsm.sim.retry.pin2.2"

    const-string v2, "vendor.gsm.sim.retry.pin2.3"

    const-string v3, "vendor.gsm.sim.retry.pin2.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->PROPERTY_PIN2_RETRY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 6
    .param p1, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p2, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccType:Ljava/lang/String;

    .line 284
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$1;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    .line 551
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 135
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getAuthContextEx(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAuthContext:I

    .line 136
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    .line 74
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 74
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 74
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 74
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/os/AsyncResult;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 74
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private static getAuthContextEx(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .registers 3
    .param p0, "appType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 406
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 419
    :pswitch_b
    const/4 v0, -0x1

    .local v0, "authContext":I
    goto :goto_13

    .line 415
    .end local v0    # "authContext":I
    :pswitch_d
    const/16 v0, 0x81

    .line 416
    .restart local v0    # "authContext":I
    goto :goto_13

    .line 408
    .end local v0    # "authContext":I
    :pswitch_10
    const/16 v0, 0x80

    .line 409
    .restart local v0    # "authContext":I
    nop

    .line 423
    :goto_13
    return v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method private notifyFdnChangedRegistrants()V
    .registers 2

    .line 567
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 568
    return-void

    .line 571
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 572
    return-void
.end method


# virtual methods
.method protected createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .registers 5
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 259
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 271
    const/4 v0, 0x0

    return-object v0

    .line 269
    :pswitch_d
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkIsimFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 267
    :pswitch_17
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkCsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 265
    :pswitch_21
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 263
    :pswitch_2b
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 261
    :pswitch_35
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2b
        :pswitch_21
        :pswitch_17
        :pswitch_d
    .end packed-switch
.end method

.method protected createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 6
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccCardAppEx createIccRecords, AppType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_1d

    goto :goto_38

    .line 245
    :cond_1d
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_26

    goto :goto_32

    .line 247
    :cond_26
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_30

    .line 249
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 253
    :cond_30
    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_32
    :goto_32
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0

    .line 244
    :cond_38
    :goto_38
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public getIccCardType()Ljava/lang/String;
    .registers 3

    .line 579
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccType:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 580
    :cond_c
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->UICCCARDAPPLICATION_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccType:Ljava/lang/String;

    .line 583
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccCardType(): mIccType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccType:Ljava/lang/String;

    return-object v0
.end method

.method public getIccFdnAvailable()Z
    .registers 6

    .line 627
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 628
    const-string v0, "isFdnExist mIccRecords == null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLoge(Ljava/lang/String;)V

    .line 629
    return v1

    .line 632
    :cond_b
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 634
    .local v0, "iccSerStatus":Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    const/4 v2, 0x0

    .line 635
    .local v2, "isPhbReady":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v3, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    if-eqz v3, :cond_27

    .line 636
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    move-result-object v0

    .line 638
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPhbReady()Z

    move-result v2

    goto :goto_42

    .line 639
    :cond_27
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v3, v3, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v3, :cond_40

    .line 640
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    move-result-object v0

    .line 642
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->isPhbReady()Z

    move-result v2

    goto :goto_42

    .line 644
    :cond_40
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 647
    :goto_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIccFdnAvailable status iccSerStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->log(Ljava/lang/String;)V

    .line 651
    sget-object v3, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    if-ne v0, v3, :cond_5d

    if-eqz v2, :cond_5d

    const/4 v1, 0x1

    :cond_5d
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccCardApplication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccCardApplication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method protected mtkLog(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkUiccCardApp"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void
.end method

.method protected mtkLoge(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkUiccCardApp"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-void
.end method

.method protected notifyNetworkLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V
    .registers 4
    .param p1, "r"    # Lcom/android/internal/telephony/Registrant;

    .line 221
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 222
    return-void

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_26

    .line 229
    if-nez p1, :cond_18

    .line 230
    const-string v0, "Notifying registrants: NETWORK_LOCKED"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_26

    .line 233
    :cond_18
    const-string v0, "Notifying 1 registrant: NETWORK_LOCED"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 234
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 237
    :cond_26
    :goto_26
    return-void
.end method

.method protected onChangeFdnDone(Landroid/os/AsyncResult;)V
    .registers 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 277
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V

    .line 278
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_f

    .line 279
    const-string v0, "notifyFdnChangedRegistrants"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->notifyFdnChangedRegistrants()V

    .line 282
    :cond_f
    return-void
.end method

.method public queryFdn()V
    .registers 8

    .line 594
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_e

    .line 595
    const-string v0, "queryFdn(): do nothing for ISIM."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 596
    return-void

    .line 599
    :cond_e
    const/4 v0, 0x7

    .line 602
    .local v0, "serviceClassX":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    .line 604
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 602
    const-string v2, "FD"

    const-string v3, ""

    move v4, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 605
    return-void
.end method

.method public queryIccNetworkLock(ILandroid/os/Message;)V
    .registers 6
    .param p1, "category"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryIccNetworkLock(): category =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 508
    packed-switch p1, :pswitch_data_40

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryIccNetworkLock unknown category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkUiccCardApp"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 516
    :pswitch_2e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/16 v2, 0x65

    .line 517
    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 516
    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->queryNetworkLock(ILandroid/os/Message;)V

    .line 518
    nop

    .line 523
    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method protected queryPin1State()V
    .registers 8

    .line 609
    const/4 v6, 0x7

    .line 613
    .local v6, "serviceClassX":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_f

    .line 614
    const-string v0, "queryPin1State(): do nothing for ISIM."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 615
    return-void

    .line 618
    :cond_f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    .line 620
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 618
    const-string v1, "SC"

    const-string v2, ""

    move v3, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 621
    return-void
.end method

.method public registerForFdnChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 554
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 556
    .local v1, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 557
    .end local v1    # "r":Lcom/android/internal/telephony/Registrant;
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 13
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 669
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    const/4 v8, 0x7

    .line 675
    .local v8, "serviceClassX":I
    :try_start_4
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mDesiredPinLocked:Z

    .line 679
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, "SC"

    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/4 v4, 0x7

    .line 681
    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 679
    move v3, p1

    move-object v4, p2

    move v5, v8

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 683
    .end local v8    # "serviceClassX":I
    monitor-exit v0

    .line 684
    return-void

    .line 683
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 20
    .param p1, "category"    # I
    .param p2, "lockop"    # I
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "data_imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "onComplete"    # Landroid/os/Message;

    .line 531
    move-object v0, p0

    move v9, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIccNetworkEnabled(): category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lockop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 534
    packed-switch v9, :pswitch_data_58

    .line 544
    move-object/from16 v11, p7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIccNetworkEnabled unknown operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccCardApp"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 540
    :pswitch_3b
    iget-object v1, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/16 v3, 0x66

    .line 541
    move-object/from16 v11, p7

    invoke-virtual {v2, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 540
    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/internal/telephony/MtkRIL;->setNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 542
    nop

    .line 547
    :goto_56
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 447
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 450
    monitor-exit v0

    .line 451
    return-void

    .line 450
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 477
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_3
    const-string v1, "supplyPuk"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/16 v4, 0x68

    .line 482
    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 481
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 485
    monitor-exit v0

    .line 486
    return-void

    .line 485
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 490
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mHandlerEx:Landroid/os/Handler;

    const/16 v4, 0x69

    .line 494
    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 493
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 497
    monitor-exit v0

    .line 498
    return-void

    .line 497
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public unregisterForFdnChanged(Landroid/os/Handler;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;

    .line 561
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 563
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 12
    .param p1, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mDestroyed:Z

    if-eqz v1, :cond_e

    .line 144
    const-string v1, "Application updated after destroyed! Fix me!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLoge(Ljava/lang/String;)V

    .line 145
    monitor-exit v0

    return-void

    .line 148
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " update. New "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 149
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mContext:Landroid/content/Context;

    .line 150
    iput-object p3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 151
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 152
    .local v1, "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 153
    .local v2, "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 154
    .local v3, "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 155
    .local v4, "oldPin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 157
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getAuthContextEx(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAuthContext:I

    .line 159
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 160
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 161
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAid:Ljava/lang/String;

    .line 162
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 163
    iget v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v5, :cond_55

    const/4 v5, 0x1

    goto :goto_56

    :cond_55
    const/4 v5, 0x0

    :goto_56
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPin1Replaced:Z

    .line 164
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 165
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 167
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v1, :cond_86

    .line 168
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v5, :cond_6d

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 169
    :cond_6d
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v5, :cond_76

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 170
    :cond_76
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 171
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {p0, v5, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 176
    :cond_86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPersoSubState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " oldPersoSubState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 178
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v6, 0x0

    if-eq v5, v3, :cond_ac

    .line 181
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    .line 185
    :cond_ac
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update,  mAppState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "  oldAppState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 187
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v5, v2, :cond_108

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " changed state: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mtkLog(Ljava/lang/String;)V

    .line 193
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v5, v7, :cond_101

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v7, :cond_101

    .line 195
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryFdn()V

    .line 196
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryPin1State()V

    .line 198
    :cond_101
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    .line 199
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->notifyReadyRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    goto :goto_138

    .line 204
    :cond_108
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v5, v6, :cond_131

    .line 205
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v5, v6, :cond_118

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v5, :cond_122

    :cond_118
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v5, v6, :cond_129

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v5, :cond_129

    .line 208
    :cond_122
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryFdn()V

    .line 209
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryPin1State()V

    goto :goto_138

    .line 210
    :cond_129
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v5, v4, :cond_138

    .line 211
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryPin1State()V

    goto :goto_138

    .line 213
    :cond_131
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v5, v4, :cond_138

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->queryPin1State()V

    .line 217
    .end local v1    # "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v2    # "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v3    # "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .end local v4    # "oldPin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :cond_138
    :goto_138
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_13a
    move-exception v1

    monitor-exit v0
    :try_end_13c
    .catchall {:try_start_3 .. :try_end_13c} :catchall_13a

    throw v1
.end method

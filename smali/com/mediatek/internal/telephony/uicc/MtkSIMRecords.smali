.class public Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
.super Lcom/android/internal/telephony/uicc/SIMRecords;
.source "MtkSIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;,
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;,
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;,
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;,
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;,
        Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    }
.end annotation


# static fields
.field public static final ATT_OPID:Ljava/lang/String; = "7"

.field public static final CRICKET_OPID:Ljava/lang/String; = "145"

.field public static final EF_RAT_FOR_OTHER_CASE:I = 0x200

.field public static final EF_RAT_NOT_EXIST_IN_USIM:I = 0x100

.field public static final EF_RAT_UNDEFINED:I = -0x100

.field protected static final ENGDEBUG:Z

.field private static final EVENT_CFU_IND:I = 0x3fd

.field private static final EVENT_DELAYED_SEND_PHB_CHANGE:I = 0x402

.field private static final EVENT_DUAL_IMSI_READY:I = 0x3ec

.field private static final EVENT_EF_CSP_PLMN_MODE_BIT_CHANGED:I = 0x3f5

.field private static final EVENT_GET_ALL_OPL5G_DONE:I = 0x406

.field private static final EVENT_GET_ALL_OPL_DONE:I = 0x3f0

.field private static final EVENT_GET_ALL_PNN_DONE:I = 0x404

.field private static final EVENT_GET_CPHSONS_DONE:I = 0x3f1

.field private static final EVENT_GET_EF_ICCID_DONE:I = 0x400

.field private static final EVENT_GET_GBABP_DONE:I = 0x3fb

.field private static final EVENT_GET_GBANL_DONE:I = 0x3fc

.field private static final EVENT_GET_NEW_MSISDN_DONE:I = 0x3f8

.field private static final EVENT_GET_PSISMSC_DONE:I = 0x3f9

.field private static final EVENT_GET_RAT_DONE:I = 0x3f6

.field private static final EVENT_GET_SHORT_CPHSONS_DONE:I = 0x3f2

.field private static final EVENT_GET_SMSP_DONE:I = 0x3fa

.field private static final EVENT_IMSI_REFRESH_QUERY:I = 0x3fe

.field private static final EVENT_IMSI_REFRESH_QUERY_DONE:I = 0x3ff

.field public static final EVENT_MSISDN:I = 0x64

.field public static final EVENT_OPL:I = 0x65

.field public static final EVENT_OPL5G:I = 0x67

.field private static final EVENT_PHB_READY:I = 0x403

.field public static final EVENT_PNN:I = 0x66

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x3f3

.field private static final EVENT_QUERY_ICCID_DONE_FOR_HOT_SWAP:I = 0x3f7

.field private static final EVENT_QUERY_MENU_TITLE_DONE:I = 0x3ed

.field private static final EVENT_RADIO_AVAILABLE:I = 0x3e9

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x3f4

.field private static final EVENT_RSU_SIM_LOCK_CHANGED:I = 0x405

.field private static final GSM_PHB_NOT_READY:I = 0x0

.field private static final GSM_PHB_READY:I = 0x1

.field private static final KEY_SIM_ID:Ljava/lang/String; = "SIM_ID"

.field private static final LANGUAGE_CODE_FOR_LP:[Ljava/lang/String;

.field protected static final LOG_TAG_EX:Ljava/lang/String; = "MtkSIMRecords"

.field private static final MTK_SIM_RECORD_EVENT_BASE:I = 0x3e8

.field private static final SIMRECORD_PROPERTY_RIL_PHB_READY:Ljava/lang/String; = "vendor.gsm.sim.ril.phbready"

.field static final SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

.field protected static final USERDEBUG:Z

.field private static final simServiceNumber:[I

.field private static final usimServiceNumber:[I


# instance fields
.field private SIM_RECORDS_PROPERTY_MCC_MNC:[Ljava/lang/String;

.field cphsOnsl:Ljava/lang/String;

.field cphsOnss:Ljava/lang/String;

.field private efLanguageToLoad:I

.field private hasQueryIccId:Z

.field private iccIdQueryState:I

.field private isDispose:Z

.field private isValidMBI:Z

.field private m5gsOperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;",
            ">;"
        }
    .end annotation
.end field

.field private mEfELP:[B

.field private mEfGbanlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mEfPsismsc:[B

.field private mEfRat:[B

.field private mEfRatLoaded:Z

.field private mEfSST:[B

.field private mEfSmsp:[B

.field private mGbabp:Ljava/lang/String;

.field private mGbanl:[Ljava/lang/String;

.field private mIsPhbEfResetDone:Z

.field private mMenuTitleFromEf:Ljava/lang/String;

.field private mMtkSimHandler:Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;

.field protected mOldMccMnc:Ljava/lang/String;

.field private mOldOperatorDefaultName:Ljava/lang/String;

.field private mOperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPhbNotify:Z

.field private mPhbReady:Z

.field private mPhbReceiver:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;

.field private mPhbWaitSub:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPnnNetworkNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;",
            ">;"
        }
    .end annotation
.end field

.field private mReadingOpl:Z

.field private mSimImsi:Ljava/lang/String;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field protected mSlotId:I

.field private mSpNameInEfSpn:Ljava/lang/String;

.field private mSpnOverride:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

.field private mSubId:I

.field private mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .registers 33

    .line 119
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->ENGDEBUG:Z

    .line 120
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->USERDEBUG:Z

    .line 188
    const-string v1, "de"

    const-string v2, "en"

    const-string v3, "it"

    const-string v4, "fr"

    const-string v5, "es"

    const-string v6, "nl"

    const-string v7, "sv"

    const-string v8, "da"

    const-string v9, "pt"

    const-string v10, "fi"

    const-string v11, "no"

    const-string v12, "el"

    const-string v13, "tr"

    const-string v14, "hu"

    const-string v15, "pl"

    const-string v16, ""

    const-string v17, "cs"

    const-string v18, "he"

    const-string v19, "ar"

    const-string v20, "ru"

    const-string v21, "is"

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    const-string v28, ""

    const-string v29, ""

    const-string v30, ""

    const-string v31, ""

    const-string v32, ""

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->LANGUAGE_CODE_FOR_LP:[Ljava/lang/String;

    .line 208
    const-string v0, "vendor.gsm.sim.retry.puk1"

    const-string v1, "vendor.gsm.sim.retry.puk1.2"

    const-string v2, "vendor.gsm.sim.retry.puk1.3"

    const-string v3, "vendor.gsm.sim.retry.puk1.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

    .line 262
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_7a

    sput-object v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->simServiceNumber:[I

    .line 266
    new-array v0, v0, [I

    fill-array-data v0, :array_98

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->usimServiceNumber:[I

    return-void

    nop

    :array_7a
    .array-data 4
        0x1
        0x11
        0x33
        0x34
        0x36
        0x37
        0x38
        0x0
        0xc
        0x3
        0x7
        0x0
        0x0
    .end array-data

    :array_98
    .array-data 4
        0x0
        0x13
        0x2d
        0x2e
        0x30
        0x31
        0x33
        0x47
        0xc
        0x2
        0x0
        0x2a
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 10
    .param p1, "app"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 173
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbWaitSub:Z

    .line 174
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    .line 177
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    .line 182
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isValidMBI:Z

    .line 185
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRatLoaded:Z

    .line 186
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    .line 198
    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->iccIdQueryState:I

    .line 201
    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->efLanguageToLoad:I

    .line 202
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimImsi:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    .line 204
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfELP:[B

    .line 205
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfPsismsc:[B

    .line 206
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSmsp:[B

    .line 215
    const-string v0, "vendor.gsm.ril.uicc.mccmnc"

    const-string v3, "vendor.gsm.ril.uicc.mccmnc.1"

    const-string v4, "vendor.gsm.ril.uicc.mccmnc.2"

    const-string v5, "vendor.gsm.ril.uicc.mccmnc.3"

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->SIM_RECORDS_PROPERTY_MCC_MNC:[Ljava/lang/String;

    .line 250
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    .line 252
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    .line 254
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    .line 256
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    .line 258
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    .line 261
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isDispose:Z

    .line 280
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpnOverride:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    .line 281
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 282
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMtkSimHandler:Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;

    .line 292
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldMccMnc:Ljava/lang/String;

    .line 298
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldOperatorDefaultName:Ljava/lang/String;

    .line 1656
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    .line 302
    const-string v0, "MtkSIMRecords constructor"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    .line 305
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 306
    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUiccCard Instance = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 310
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpnOverride:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    .line 312
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 313
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnss:Ljava/lang/String;

    .line 314
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->hasQueryIccId:Z

    .line 316
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x3fd

    invoke-virtual {v0, p0, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCallForwardingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x3f4

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x3e9

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x3fe

    invoke-virtual {v0, p0, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForImsiRefreshDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 323
    invoke-static {p2}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 324
    if-eqz v0, :cond_c4

    .line 326
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeMtkSimHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMtkSimHandler:Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;

    .line 327
    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-interface {v0, v3}, Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;->setPhoneId(I)V

    .line 330
    :cond_c4
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$SIMBroadCastReceiver;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4, p3, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 336
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x403

    invoke-virtual {v3, p0, v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;

    invoke-direct {v3, p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReceiver:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;

    .line 338
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v3, "phbFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReceiver:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    const-string v4, "SIMRecords updateIccRecords"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 348
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_128

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    if-eqz v4, :cond_128

    .line 349
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 354
    :cond_128
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPhbReady()Z

    move-result v4

    if-eqz v4, :cond_139

    .line 355
    const-string v4, "Phonebook is ready."

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 356
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 357
    invoke-direct {p0, v4, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 362
    :cond_139
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x405

    invoke-virtual {v1, p0, v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForRsuSimLockChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 364
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 117
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/RegistrantList;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 117
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 117
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbWaitSub:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbWaitSub:Z

    return p1
.end method

.method private boradcastEfRatContentNotify(I)V
    .registers 5
    .param p1, "item"    # I

    .line 1906
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_EF_RAT_CONTENT_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1907
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ef_rat_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1908
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    const-string v2, "slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_EF_RAT_CONTENT_NOTIFY: item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1911
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1912
    return-void
.end method

.method private broadcastPhbStateChangedIntent(ZZ)V
    .registers 11
    .param p1, "isReady"    # Z
    .param p2, "isForceSendIntent"    # Z

    .line 2368
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isDispose:Z

    if-eqz v0, :cond_11

    if-eqz p1, :cond_19

    .line 2370
    :cond_11
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    .line 2371
    const-string v0, "broadcastPhbStateChangedIntent, No active Phone, will notfiy when dispose"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2372
    return-void

    .line 2375
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPhbStateChangedIntent, mPhbReady "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2376
    if-ne p1, v1, :cond_76

    .line 2377
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    .line 2379
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    .line 2380
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 2382
    .local v0, "curSimState":I
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    if-lez v2, :cond_55

    if-nez v0, :cond_54

    goto :goto_55

    .line 2388
    .end local v0    # "curSimState":I
    :cond_54
    goto :goto_8e

    .line 2383
    .restart local v0    # "curSimState":I
    :cond_55
    :goto_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastPhbStateChangedIntent, mSubId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sim state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2385
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbWaitSub:Z

    .line 2386
    return-void

    .line 2389
    .end local v0    # "curSimState":I
    :cond_76
    if-ne p2, v1, :cond_84

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    if-ne v0, v1, :cond_84

    .line 2390
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    .line 2392
    :cond_84
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    if-gtz v0, :cond_8e

    .line 2393
    const-string v0, "broadcastPhbStateChangedIntent, isReady == false and mSubId <= 0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2394
    return-void

    .line 2397
    :cond_8e
    :goto_8e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2398
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    .line 2399
    .local v2, "isUnlock":Z
    const-string v3, "sys.boot_completed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_118

    if-nez v2, :cond_ad

    goto :goto_118

    .line 2404
    :cond_ad
    new-instance v1, Landroid/content/Intent;

    const-string v3, "mediatek.intent.action.PHB_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2405
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "ready"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2406
    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    const-string v6, "subscription"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting intent ACTION_PHB_STATE_CHANGED "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " sub id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " phoneId "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2408
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2407
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2409
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2411
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 2412
    .local v3, "bootIntent":Landroid/content/Intent;
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2413
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2414
    const-string v4, "com.mediatek.simprocessor"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2416
    const-string v4, "Broadcasting ACTION_PHB_STATE_CHANGED to package: simprocessor"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2418
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2420
    if-nez p1, :cond_117

    .line 2421
    const/4 v4, -0x1

    iput v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSubId:I

    .line 2423
    :cond_117
    return-void

    .line 2400
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "bootIntent":Landroid/content/Intent;
    :cond_118
    :goto_118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastPhbStateChangedIntent, boot not completed, isUnlock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2401
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    .line 2402
    return-void
.end method

.method public static convertMccmncAsAospConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "mccmnc"    # Ljava/lang/String;

    .line 2711
    const/4 v0, 0x0

    .line 2714
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_29

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_d

    goto :goto_29

    .line 2718
    :cond_d
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_21

    aget-object v5, v1, v4

    .line 2719
    .local v5, "mm":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 2720
    move-object v0, p0

    .line 2721
    goto :goto_21

    .line 2718
    .end local v5    # "mm":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2726
    :cond_21
    :goto_21
    if-nez v0, :cond_2a

    .line 2727
    const/4 v1, 0x5

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 2715
    :cond_29
    :goto_29
    move-object v0, p0

    .line 2731
    :cond_2a
    :goto_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertMccmncAsAospConfig: mccmnc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIMRecords"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    return-object v0
.end method

.method private convertNumberIfContainsPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "dialNumber"    # Ljava/lang/String;

    .line 2573
    move-object v0, p1

    .line 2574
    .local v0, "r":Ljava/lang/String;
    if-eqz p1, :cond_3d

    .line 2575
    const-string v1, "tel:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2576
    const-string v1, "sip:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2577
    const-string v1, "sips:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2578
    :cond_1b
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertNumberIfContainsPrefix: dialNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIMRecords"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_3d
    return-object v0
.end method

.method private fetchCPHSOns()V
    .registers 4

    .line 1939
    const-string v0, "fetchCPHSOns()"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 1941
    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnss:Ljava/lang/String;

    .line 1942
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 1943
    const/16 v1, 0x3f1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1942
    const/16 v2, 0x6f14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1944
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 1945
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1944
    const/16 v2, 0x6f18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1946
    return-void
.end method

.method private fetchGbaRecords()V
    .registers 4

    .line 1789
    const-string v0, "fetchGbaRecords"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1791
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_3c

    .line 1792
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->GBA:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1793
    const-string v0, "GBA support."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1794
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fd6

    const/16 v2, 0x3fb

    .line 1795
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1794
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1797
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fda

    const/16 v2, 0x3fc

    .line 1798
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1797
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1801
    :cond_3c
    return-void
.end method

.method private fetchMbiRecords()V
    .registers 5

    .line 1804
    const-string v0, "fetchMbiRecords"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1806
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_34

    .line 1807
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->MBDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1808
    const-string v0, "MBI/MBDN support."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1809
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1810
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1813
    :cond_34
    return-void
.end method

.method private fetchMwisRecords()V
    .registers 5

    .line 1816
    const-string v0, "fetchMwisRecords"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1818
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_34

    .line 1819
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->MWI_STATUS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1820
    const-string v0, "MWIS support."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1822
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1825
    :cond_34
    return-void
.end method

.method private fetchOpl5g()V
    .registers 4

    .line 2736
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x406

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x4f08

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 2737
    return-void
.end method

.method private fetchPnnAndOpl()V
    .registers 8

    .line 1659
    const-string v0, "fetchPnnAndOpl()"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1661
    const/4 v0, 0x0

    .line 1662
    .local v0, "bPnnActive":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    .line 1664
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    if-eqz v2, :cond_57

    .line 1665
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_37

    .line 1666
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v3, v2

    const/4 v5, 0x6

    if-lt v3, v5, :cond_57

    .line 1667
    const/4 v3, 0x5

    aget-byte v5, v2, v3

    const/16 v6, 0x10

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_28

    move v5, v4

    goto :goto_29

    :cond_28
    move v5, v1

    :goto_29
    move v0, v5

    .line 1668
    if-eqz v0, :cond_57

    .line 1669
    aget-byte v2, v2, v3

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_34

    move v1, v4

    :cond_34
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    goto :goto_57

    .line 1672
    :cond_37
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v3, v2

    const/16 v5, 0xd

    if-lt v3, v5, :cond_57

    .line 1673
    const/16 v3, 0xc

    aget-byte v5, v2, v3

    const/16 v6, 0x30

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_49

    move v5, v4

    goto :goto_4a

    :cond_49
    move v5, v1

    :goto_4a
    move v0, v5

    .line 1674
    if-eqz v0, :cond_57

    .line 1675
    aget-byte v2, v2, v3

    const/16 v3, 0xc0

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_55

    move v1, v4

    :cond_55
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    .line 1679
    :cond_57
    :goto_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bPnnActive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bOplActive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1681
    if-eqz v0, :cond_95

    .line 1682
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fc5

    const/16 v3, 0x404

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1683
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    if-eqz v1, :cond_95

    .line 1684
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fc6

    const/16 v3, 0x3f0

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1687
    :cond_95
    return-void
.end method

.method private fetchRatBalancing()V
    .registers 4

    .line 1950
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isFetchRatBalancingAndEnsFile(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1951
    const-string v0, "Not support MTK_RAT_BALANCING"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1952
    return-void

    .line 1954
    :cond_e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_2b

    .line 1955
    const-string v0, "start loading EF_RAT"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1956
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f36

    const/16 v2, 0x3f6

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_4b

    .line 1958
    :cond_2b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_46

    .line 1960
    const-string v0, "loading EF_RAT fail, because of SIM"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRatLoaded:Z

    .line 1962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    .line 1963
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->boradcastEfRatContentNotify(I)V

    goto :goto_4b

    .line 1966
    :cond_46
    const-string v0, "loading EF_RAT fail, because of +EUSIM"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1968
    :goto_4b
    return-void
.end method

.method private fetchSmsp()V
    .registers 5

    .line 1769
    const-string v0, "fetchSmsp()"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1772
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_4c

    .line 1773
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_SERVICE_PARAMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1774
    const-string v0, "SMSP support."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1775
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f42

    const/16 v2, 0x3fa

    .line 1776
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1775
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1778
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_OVER_IP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1779
    const-string v0, "PSISMSP support."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1780
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fe5

    const/16 v2, 0x3f9

    .line 1781
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1780
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1786
    :cond_4c
    return-void
.end method

.method private fetchSpn()V
    .registers 6

    .line 1690
    const-string v0, "fetchSpn()"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1691
    const/4 v0, 0x0

    .line 1693
    .local v0, "bSpnActive":Z
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->SPN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    move-result-object v1

    .line 1695
    .local v1, "iccSerStatus":Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    if-ne v1, v2, :cond_28

    .line 1696
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 1697
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f46

    const/16 v4, 0xc

    .line 1698
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1697
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1699
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    goto :goto_2d

    .line 1701
    :cond_28
    const-string v2, "[SIMRecords] SPN service is not activated  "

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1703
    :goto_2d
    return-void
.end method

.method private findBestLanguage([B)Ljava/lang/String;
    .registers 11
    .param p1, "languages"    # [B

    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, "bestMatch":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    .line 1287
    .local v1, "locales":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p1, :cond_71

    if-nez v1, :cond_11

    goto :goto_71

    .line 1290
    :cond_11
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    add-int/lit8 v4, v3, 0x1

    array-length v5, p1

    if-ge v4, v5, :cond_70

    .line 1292
    :try_start_17
    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    const/4 v6, 0x2

    invoke-direct {v4, p1, v3, v6, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1293
    .local v4, "lang":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "languages from sim = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1294
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_34
    array-length v7, v1

    if-ge v5, v7, :cond_54

    .line 1295
    aget-object v7, v1, v5

    if-eqz v7, :cond_51

    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v6, :cond_51

    aget-object v7, v1, v5

    const/4 v8, 0x0

    .line 1296
    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_4e} :catch_58

    if-eqz v7, :cond_51

    .line 1297
    return-object v4

    .line 1294
    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 1300
    .end local v5    # "j":I
    :cond_54
    if-eqz v0, :cond_57

    goto :goto_70

    .line 1303
    .end local v4    # "lang":Ljava/lang/String;
    :cond_57
    goto :goto_6d

    .line 1301
    :catch_58
    move-exception v4

    .line 1302
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse USIM language records"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1290
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_6d
    add-int/lit8 v3, v3, 0x2

    goto :goto_12

    .line 1306
    .end local v3    # "i":I
    :cond_70
    :goto_70
    return-object v2

    .line 1287
    :cond_71
    :goto_71
    return-object v2
.end method

.method private isMatchingPlmnForEfOpl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "simPlmn"    # Ljava/lang/String;
    .param p2, "bcchPlmn"    # Ljava/lang/String;

    .line 1981
    const/4 v0, 0x0

    if-eqz p1, :cond_95

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    if-eqz p2, :cond_95

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_95

    .line 1984
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMatchingPlmnForEfOpl(): simPlmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bcchPlmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1992
    .local v1, "simPlmnLen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1993
    .local v2, "bcchPlmnLen":I
    const/4 v3, 0x5

    if-lt v1, v3, :cond_94

    if-ge v2, v3, :cond_3f

    goto :goto_94

    .line 1996
    :cond_3f
    const/4 v4, 0x0

    .line 1997
    .local v4, "i":I
    const/4 v4, 0x0

    :goto_41
    const/16 v5, 0x64

    if-ge v4, v3, :cond_5a

    .line 1998
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_4c

    .line 1999
    goto :goto_57

    .line 2000
    :cond_4c
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_57

    .line 2001
    return v0

    .line 1997
    :cond_57
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 2004
    :cond_5a
    const/4 v6, 0x1

    const/4 v7, 0x6

    if-ne v1, v7, :cond_73

    if-ne v2, v7, :cond_73

    .line 2005
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v5, :cond_72

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v5, v3, :cond_71

    goto :goto_72

    .line 2008
    :cond_71
    return v0

    .line 2006
    :cond_72
    :goto_72
    return v6

    .line 2010
    :cond_73
    const/16 v8, 0x30

    if-ne v2, v7, :cond_84

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v8, :cond_84

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v5, :cond_84

    .line 2011
    return v0

    .line 2012
    :cond_84
    if-ne v1, v7, :cond_93

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_93

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_93

    .line 2013
    return v0

    .line 2016
    :cond_93
    return v6

    .line 1994
    .end local v4    # "i":I
    :cond_94
    :goto_94
    return v0

    .line 1982
    .end local v1    # "simPlmnLen":I
    .end local v2    # "bcchPlmnLen":I
    :cond_95
    :goto_95
    return v0
.end method

.method private isPlmnEqualsSimNumeric(Ljava/lang/String;)Z
    .registers 8
    .param p1, "plmn"    # Ljava/lang/String;

    .line 2020
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2021
    .local v0, "mccmnc":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 2023
    :cond_8
    if-eqz v0, :cond_35

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_35

    .line 2028
    :cond_13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    .line 2029
    return v3

    .line 2031
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_34

    .line 2032
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2033
    return v3

    .line 2036
    :cond_34
    return v1

    .line 2024
    :cond_35
    :goto_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlmnEqualsSimNumeric: getOperatorNumeric error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2025
    return v1
.end method

.method private mtkLog(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    return-void
.end method

.method private mtkLoge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    return-void
.end method

.method private mtkLogv(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    return-void
.end method

.method private mtkLogw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSIMRecords"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2622
    return-void
.end method

.method private parseEFopl(Ljava/util/ArrayList;)V
    .registers 12
    .param p1, "messages"    # Ljava/util/ArrayList;

    .line 1831
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1832
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseEFopl(): opl has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1834
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    .line 1835
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v0, :cond_cb

    .line 1836
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1838
    .local v2, "data":[B
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;-><init>()V

    .line 1840
    .local v3, "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v2, v4, v5}, Lcom/mediatek/internal/telephony/MtkIccUtils;->parsePlmnToStringForEfOpl([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    .line 1842
    const/4 v6, 0x2

    new-array v7, v6, [B

    .line 1843
    .local v7, "minLac":[B
    aget-byte v5, v2, v5

    aput-byte v5, v7, v4

    .line 1844
    const/4 v5, 0x4

    aget-byte v5, v2, v5

    const/4 v8, 0x1

    aput-byte v5, v7, v8

    .line 1845
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x10

    invoke-static {v5, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMinLAC:I

    .line 1847
    new-array v5, v6, [B

    .line 1848
    .local v5, "maxLAC":[B
    const/4 v6, 0x5

    aget-byte v6, v2, v6

    aput-byte v6, v5, v4

    .line 1849
    const/4 v6, 0x6

    aget-byte v6, v2, v6

    aput-byte v6, v5, v8

    .line 1850
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMaxLAC:I

    .line 1852
    new-array v6, v8, [B

    .line 1853
    .local v6, "pnnRecordIndex":[B
    const/4 v8, 0x7

    aget-byte v8, v2, v8

    aput-byte v8, v6, v4

    .line 1854
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nPnnIndex:I

    .line 1856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseEFopl(): record="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " content="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " sPlmn="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " nMinLAC="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMinLAC:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " nMaxLAC="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMaxLAC:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " nPnnIndex="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nPnnIndex:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1861
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    .end local v2    # "data":[B
    .end local v3    # "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;
    .end local v5    # "maxLAC":[B
    .end local v6    # "pnnRecordIndex":[B
    .end local v7    # "minLac":[B
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_25

    .line 1863
    .end local v1    # "i":I
    :cond_cb
    return-void
.end method

.method private parseEFopl5g(Ljava/util/ArrayList;)V
    .registers 13
    .param p1, "messages"    # Ljava/util/ArrayList;

    .line 1869
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1870
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseEFopl5g(): opl has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1872
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    .line 1873
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v0, :cond_d7

    .line 1874
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1876
    .local v2, "data":[B
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;-><init>()V

    .line 1878
    .local v3, "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v2, v4, v5}, Lcom/mediatek/internal/telephony/MtkIccUtils;->parsePlmnToStringForEfOpl([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->sPlmn:Ljava/lang/String;

    .line 1880
    new-array v6, v5, [B

    .line 1881
    .local v6, "minLac":[B
    aget-byte v7, v2, v5

    aput-byte v7, v6, v4

    .line 1882
    const/4 v7, 0x4

    aget-byte v7, v2, v7

    const/4 v8, 0x1

    aput-byte v7, v6, v8

    .line 1883
    const/4 v7, 0x5

    aget-byte v7, v2, v7

    const/4 v9, 0x2

    aput-byte v7, v6, v9

    .line 1884
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMinLAC:I

    .line 1886
    new-array v5, v5, [B

    .line 1887
    .local v5, "maxLAC":[B
    const/4 v7, 0x6

    aget-byte v7, v2, v7

    aput-byte v7, v5, v4

    .line 1888
    const/4 v7, 0x7

    aget-byte v7, v2, v7

    aput-byte v7, v5, v8

    .line 1889
    const/16 v7, 0x8

    aget-byte v7, v2, v7

    aput-byte v7, v5, v9

    .line 1890
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMaxLAC:I

    .line 1892
    new-array v7, v8, [B

    .line 1893
    .local v7, "pnnRecordIndex":[B
    const/16 v8, 0x9

    aget-byte v8, v2, v8

    aput-byte v8, v7, v4

    .line 1894
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nPnnIndex:I

    .line 1896
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseEFopl5g(): record="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " content="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " sPlmn="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->sPlmn:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " nMinLAC="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMinLAC:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " nMaxLAC="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMaxLAC:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " nPnnIndex="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nPnnIndex:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1901
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    .end local v2    # "data":[B
    .end local v3    # "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;
    .end local v5    # "maxLAC":[B
    .end local v6    # "minLac":[B
    .end local v7    # "pnnRecordIndex":[B
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_25

    .line 1903
    .end local v1    # "i":I
    :cond_d7
    return-void
.end method

.method private parseEFpnn(Ljava/util/ArrayList;)V
    .registers 10
    .param p1, "messages"    # Ljava/util/ArrayList;

    .line 1626
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1627
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseEFpnn(): pnn has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    .line 1630
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v0, :cond_c9

    .line 1631
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1633
    .local v2, "data":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseEFpnn(): pnn record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " content is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1633
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1637
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1638
    .local v3, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    new-instance v4, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;-><init>()V

    .line 1639
    .local v4, "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    :goto_59
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 1640
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v6

    const/16 v7, 0x43

    if-ne v6, v7, :cond_8e

    .line 1641
    nop

    .line 1642
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    array-length v7, v7

    .line 1641
    invoke-static {v6, v5, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    .line 1643
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseEFpnn(): pnn sFullName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_bc

    .line 1644
    :cond_8e
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v6

    const/16 v7, 0x45

    if-ne v6, v7, :cond_bc

    .line 1645
    nop

    .line 1646
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    array-length v7, v7

    .line 1645
    invoke-static {v6, v5, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    .line 1647
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseEFpnn(): pnn sShortName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1639
    :cond_bc
    :goto_bc
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_59

    .line 1651
    :cond_c0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    .end local v2    # "data":[B
    .end local v3    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v4    # "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_25

    .line 1653
    .end local v1    # "i":I
    :cond_c9
    return-void
.end method

.method private processEfCspPlmnModeBitUrc(I)V
    .registers 5
    .param p1, "bit"    # I

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processEfCspPlmnModeBitUrc: bit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1917
    if-nez p1, :cond_1a

    .line 1918
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCspPlmnEnabled:Z

    goto :goto_1d

    .line 1920
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCspPlmnEnabled:Z

    .line 1922
    :goto_1d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1923
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "plmn_mode_bit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1924
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    const-string v2, "slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_EF_CSP_CONTENT_NOTIFY, EXTRA_PLMN_MODE_BIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1926
    const/4 v1, -0x1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1928
    return-void
.end method

.method private setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 1375
    const-string v0, "vendor.gsm.sim.operator.default-name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1376
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldOperatorDefaultName:Ljava/lang/String;

    if-nez v0, :cond_e

    if-eqz p2, :cond_16

    :cond_e
    if-eqz v0, :cond_2b

    .line 1377
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1378
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set PROPERTY_ICC_OPERATOR_DEFAULT_NAME same value. val:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1379
    return-void

    .line 1381
    :cond_2b
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldOperatorDefaultName:Ljava/lang/String;

    .line 1384
    :cond_2d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1385
    return-void
.end method

.method private setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "phoneId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1391
    const-string v0, ""

    .line 1392
    .local v0, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1393
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1395
    .local v2, "prop":Ljava/lang/String;
    if-nez p3, :cond_b

    .line 1396
    const-string p3, ""

    .line 1398
    :cond_b
    const/16 v3, 0x2c

    const/16 v4, 0x20

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1399
    const-string v3, ","

    if-eqz v2, :cond_1a

    .line 1400
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1403
    :cond_1a
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    const-string v5, " value: "

    const-string v6, " property="

    if-nez v4, :cond_4d

    .line 1404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTelephonyProperty: invalid phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " prop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1406
    return-void

    .line 1409
    :cond_4d
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4e
    if-ge v4, p1, :cond_6e

    .line 1410
    const-string v7, ""

    .line 1411
    .local v7, "str":Ljava/lang/String;
    if-eqz v1, :cond_59

    array-length v8, v1

    if-ge v4, v8, :cond_59

    .line 1412
    aget-object v7, v1, v4

    .line 1414
    :cond_59
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1409
    .end local v7    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 1417
    .end local v4    # "i":I
    :cond_6e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1418
    if-eqz v1, :cond_9b

    .line 1419
    add-int/lit8 v4, p1, 0x1

    .restart local v4    # "i":I
    :goto_81
    array-length v7, v1

    if-ge v4, v7, :cond_9b

    .line 1420
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1419
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    .line 1424
    .end local v4    # "i":I
    :cond_9b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1426
    .local v3, "propValLen":I
    :try_start_9f
    const-string v4, "utf-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4
    :try_end_a6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9f .. :try_end_a6} :catch_a8

    move v3, v4

    .line 1429
    goto :goto_ae

    .line 1427
    :catch_a8
    move-exception v4

    .line 1428
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v7, "setTelephonyProperty: utf-8 not supported"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1430
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_ae
    const/16 v4, 0x5b

    if-le v3, v4, :cond_db

    .line 1431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTelephonyProperty: property too long phoneId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " propVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1433
    return-void

    .line 1436
    :cond_db
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    return-void
.end method

.method private updateConfiguration(Ljava/lang/String;)V
    .registers 4
    .param p1, "numeric"    # Ljava/lang/String;

    .line 1614
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldMccMnc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1615
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldMccMnc:Ljava/lang/String;

    .line 1616
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOldMccMnc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    .line 1618
    :cond_18
    const-string v0, "Do not update configuration if mcc mnc no change."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1620
    :goto_1d
    return-void
.end method

.method private updatePHBStatus(IZ)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "isSimLocked"    # Z

    .line 2522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PHBStatus] status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | isSimLocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | mPhbReady : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2524
    const/4 v0, 0x0

    .line 2526
    .local v0, "simLockedState":Z
    const-string v1, "ro.vendor.mtk_ril_mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "c6m_1rild"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2527
    const/4 v0, 0x0

    goto :goto_38

    .line 2529
    :cond_37
    move v0, p2

    .line 2532
    :goto_38
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4e

    .line 2533
    if-nez v0, :cond_48

    .line 2534
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    if-nez v3, :cond_5e

    .line 2535
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 2536
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    goto :goto_5e

    .line 2539
    :cond_48
    const-string v1, "phb ready but sim is not ready."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_5e

    .line 2541
    :cond_4e
    if-nez p1, :cond_5e

    .line 2542
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    if-ne v3, v2, :cond_5e

    .line 2543
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 2544
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 2545
    invoke-direct {p0, v1, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 2548
    :cond_5e
    :goto_5e
    return-void
.end method


# virtual methods
.method protected checkCdma3gCard()Z
    .registers 4

    .line 1368
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->checkCdma3gCard(I)I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1369
    .local v0, "result":Z
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCdma3gCard result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1371
    return v0
.end method

.method public checkEfCfis()Z
    .registers 6

    .line 423
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    array-length v0, v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 424
    .local v0, "isValid":Z
    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEfCfis is null? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    if-nez v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 425
    return v0
.end method

.method public dispose()V
    .registers 4

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing MtkSIMRecords this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isDispose:Z

    .line 372
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMtkSimHandler:Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;

    if-eqz v1, :cond_1e

    .line 373
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;->dispose()V

    .line 376
    :cond_1e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForCallForwardingInfo(Landroid/os/Handler;)V

    .line 377
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 380
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 381
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIccId:Ljava/lang/String;

    .line 382
    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 384
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForPhbReady(Landroid/os/Handler;)V

    .line 385
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReceiver:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$PhbBroadCastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 386
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbWaitSub:Z

    .line 390
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    if-eq v2, v0, :cond_4f

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    if-ne v2, v0, :cond_76

    .line 391
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkSIMRecords Disposing  set PHB unready mPendingPhbNotify="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPhbReady="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 393
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 394
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPendingPhbNotify:Z

    .line 395
    invoke-direct {p0, v1, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 399
    :cond_76
    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    .line 400
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 405
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 408
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForRsuSimLockChanged(Landroid/os/Handler;)V

    .line 410
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispose()V

    .line 411
    return-void
.end method

.method protected fetchSimRecords()V
    .registers 1

    .line 1459
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 1460
    return-void
.end method

.method public get5GEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 12
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "nLac"    # I
    .param p3, "bLongNameRequired"    # Z

    .line 2041
    const/16 v0, 0x2a

    .line 2042
    .local v0, "mask":C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2043
    .local v1, "lac_sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_28

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a

    goto :goto_28

    .line 2046
    :cond_1a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    div-int/2addr v5, v4

    if-ge v2, v5, :cond_2c

    .line 2047
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2046
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 2044
    .end local v2    # "i":I
    :cond_28
    :goto_28
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2050
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EONS get5GEonsIfExist: plmn is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nLac is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bLongNameRequired: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2050
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2053
    .end local v0    # "mask":C
    .end local v1    # "lac_sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    if-eqz p1, :cond_14e

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_14e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_63

    goto/16 :goto_14e

    .line 2057
    :cond_63
    const/4 v1, -0x1

    .line 2058
    .local v1, "nPnnIndex":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPlmnEqualsSimNumeric(Ljava/lang/String;)Z

    move-result v2

    .line 2060
    .local v2, "isHPLMN":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    if-nez v4, :cond_7b

    .line 2062
    if-eqz v2, :cond_75

    .line 2063
    const-string v0, "get5GEonsIfExist: Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2064
    const/4 v1, 0x1

    goto :goto_bc

    .line 2067
    :cond_75
    const-string v3, "get5GEonsIfExist: Plmn is not HPLMN and no mOperatorList, return null"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2069
    return-object v0

    .line 2073
    :cond_7b
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7c
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_bc

    .line 2074
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;

    .line 2076
    .local v5, "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;
    iget-object v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->sPlmn:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isMatchingPlmnForEfOpl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b9

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMinLAC:I

    if-nez v6, :cond_9f

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMaxLAC:I

    const v7, 0xfffffe

    if-eq v6, v7, :cond_a7

    :cond_9f
    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMinLAC:I

    if-gt v6, p2, :cond_b9

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nMaxLAC:I

    if-lt v6, p2, :cond_b9

    .line 2079
    :cond_a7
    const-string v6, "get5GEonsIfExist: find it in EF_5GOPL"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2080
    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nPnnIndex:I

    if-nez v6, :cond_b6

    .line 2082
    const-string v3, "get5GEonsIfExist: oplRec.nPnnIndex is 0, from other sources"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2084
    return-object v0

    .line 2086
    :cond_b6
    iget v1, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;->nPnnIndex:I

    .line 2087
    goto :goto_bc

    .line 2073
    .end local v5    # "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$Record5gopl;
    :cond_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    .line 2092
    .end local v4    # "i":I
    :cond_bc
    :goto_bc
    const/4 v0, -0x1

    if-ne v1, v0, :cond_d0

    if-eqz v2, :cond_d0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->m5gsOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_d0

    .line 2094
    const-string v0, "get5GEonsIfExist: not find it in EF_5GOPL, but Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2097
    const/4 v1, 0x1

    goto :goto_f5

    .line 2099
    :cond_d0
    if-le v1, v3, :cond_e3

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v0, :cond_e3

    if-eqz v2, :cond_e3

    .line 2101
    const-string v0, "get5GEonsIfExist: find it in EF_5GOPL, but index in EF_5GOPL > EF_PNN list length & Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2104
    const/4 v1, 0x1

    goto :goto_f5

    .line 2106
    :cond_e3
    if-le v1, v3, :cond_f5

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v0, :cond_f5

    if-nez v2, :cond_f5

    .line 2108
    const-string v0, "get5GEonsIfExist: find it in EF_5GOPL, but index in EF_5GOPL > EF_PNN list length & Plmn is not HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2111
    const/4 v1, -0x1

    .line 2114
    :cond_f5
    :goto_f5
    const/4 v0, 0x0

    .line 2115
    .local v0, "sEons":Ljava/lang/String;
    if-lt v1, v3, :cond_139

    .line 2116
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;

    .line 2117
    .local v3, "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    if-eqz p3, :cond_11e

    .line 2118
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v4, :cond_111

    .line 2119
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_139

    .line 2120
    :cond_111
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v4, :cond_139

    .line 2121
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_139

    .line 2123
    :cond_11e
    if-nez p3, :cond_139

    .line 2124
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v4, :cond_12d

    .line 2125
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_139

    .line 2126
    :cond_12d
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v4, :cond_139

    .line 2127
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 2131
    .end local v3    # "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    :cond_139
    :goto_139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get5GEonsIfExist: sEons is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2133
    return-object v0

    .line 2054
    .end local v0    # "sEons":Ljava/lang/String;
    .end local v1    # "nPnnIndex":I
    .end local v2    # "isHPLMN":Z
    :cond_14e
    :goto_14e
    return-object v0
.end method

.method public getEfGbabp()Ljava/lang/String;
    .registers 3

    .line 2294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GBABP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mGbabp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mGbabp:Ljava/lang/String;

    return-object v0
.end method

.method public getEfPsismsc()[B
    .registers 2

    .line 2318
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfPsismsc:[B

    return-object v0
.end method

.method public getEfRatBalancing()I
    .registers 3

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEfRatBalancing: iccCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEfRatLoaded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRatLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEfRat is null = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    if-nez v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1974
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_48

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRatLoaded:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    if-nez v0, :cond_48

    .line 1975
    const/16 v0, 0x100

    return v0

    .line 1977
    :cond_48
    const/16 v0, 0x200

    return v0
.end method

.method public getEfSmsp()[B
    .registers 2

    .line 2326
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSmsp:[B

    return-object v0
.end method

.method public getEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 12
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "nLac"    # I
    .param p3, "bLongNameRequired"    # Z

    .line 2139
    const/16 v0, 0x2a

    .line 2140
    .local v0, "mask":C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2141
    .local v1, "lac_sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_28

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a

    goto :goto_28

    .line 2144
    :cond_1a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    div-int/2addr v5, v4

    if-ge v2, v5, :cond_2c

    .line 2145
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 2142
    .end local v2    # "i":I
    :cond_28
    :goto_28
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2148
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EONS getEonsIfExist: plmn is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nLac is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bLongNameRequired: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2148
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2151
    .end local v0    # "mask":C
    .end local v1    # "lac_sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    if-eqz p1, :cond_14e

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_14e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_63

    goto/16 :goto_14e

    .line 2155
    :cond_63
    const/4 v1, -0x1

    .line 2156
    .local v1, "nPnnIndex":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPlmnEqualsSimNumeric(Ljava/lang/String;)Z

    move-result v2

    .line 2158
    .local v2, "isHPLMN":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    if-nez v4, :cond_7b

    .line 2160
    if-eqz v2, :cond_75

    .line 2161
    const-string v0, "getEonsIfExist: Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2162
    const/4 v1, 0x1

    goto :goto_bc

    .line 2165
    :cond_75
    const-string v3, "getEonsIfExist: Plmn is not HPLMN and no mOperatorList, return null"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2167
    return-object v0

    .line 2171
    :cond_7b
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7c
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_bc

    .line 2172
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;

    .line 2177
    .local v5, "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;
    iget-object v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isMatchingPlmnForEfOpl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b9

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMinLAC:I

    if-nez v6, :cond_9f

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMaxLAC:I

    const v7, 0xfffe

    if-eq v6, v7, :cond_a7

    :cond_9f
    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMinLAC:I

    if-gt v6, p2, :cond_b9

    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nMaxLAC:I

    if-lt v6, p2, :cond_b9

    .line 2180
    :cond_a7
    const-string v6, "getEonsIfExist: find it in EF_OPL"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2181
    iget v6, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nPnnIndex:I

    if-nez v6, :cond_b6

    .line 2183
    const-string v3, "getEonsIfExist: oplRec.nPnnIndex is 0, from other sources"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2185
    return-object v0

    .line 2187
    :cond_b6
    iget v1, v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;->nPnnIndex:I

    .line 2188
    goto :goto_bc

    .line 2171
    .end local v5    # "oplRec":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OplRecord;
    :cond_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    .line 2194
    .end local v4    # "i":I
    :cond_bc
    :goto_bc
    const/4 v0, -0x1

    if-ne v1, v0, :cond_d0

    if-eqz v2, :cond_d0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_d0

    .line 2196
    const-string v0, "getEonsIfExist: not find it in EF_OPL, but Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2199
    const/4 v1, 0x1

    goto :goto_f5

    .line 2201
    :cond_d0
    if-le v1, v3, :cond_e3

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v0, :cond_e3

    if-eqz v2, :cond_e3

    .line 2203
    const-string v0, "getEonsIfExist: find it in EF_OPL, but index in EF_OPL > EF_PNN list length & Plmn is HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2206
    const/4 v1, 0x1

    goto :goto_f5

    .line 2208
    :cond_e3
    if-le v1, v3, :cond_f5

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v0, :cond_f5

    if-nez v2, :cond_f5

    .line 2210
    const-string v0, "getEonsIfExist: find it in EF_OPL, but index in EF_OPL > EF_PNN list length & Plmn is not HPLMN, return PNN\'s first record"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2213
    const/4 v1, -0x1

    .line 2216
    :cond_f5
    :goto_f5
    const/4 v0, 0x0

    .line 2217
    .local v0, "sEons":Ljava/lang/String;
    if-lt v1, v3, :cond_139

    .line 2218
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;

    .line 2219
    .local v3, "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    if-eqz p3, :cond_11e

    .line 2220
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v4, :cond_111

    .line 2221
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_139

    .line 2222
    :cond_111
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v4, :cond_139

    .line 2223
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_139

    .line 2225
    :cond_11e
    if-nez p3, :cond_139

    .line 2226
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v4, :cond_12d

    .line 2227
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_139

    .line 2228
    :cond_12d
    iget-object v4, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v4, :cond_139

    .line 2229
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 2233
    .end local v3    # "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    :cond_139
    :goto_139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEonsIfExist: sEons is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2235
    return-object v0

    .line 2152
    .end local v0    # "sEons":Ljava/lang/String;
    .end local v1    # "nPnnIndex":I
    .end local v2    # "isHPLMN":Z
    :cond_14e
    :goto_14e
    return-object v0
.end method

.method public getFirstFullNameInEfPnn()Ljava/lang/String;
    .registers 5

    .line 1509
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_38

    .line 1514
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;

    .line 1515
    .local v0, "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirstFullNameInEfPnn(): first fullname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1516
    iget-object v2, v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v2, :cond_37

    .line 1517
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1518
    :cond_37
    return-object v1

    .line 1510
    .end local v0    # "opName":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$OperatorName;
    :cond_38
    :goto_38
    const-string v0, "getFirstFullNameInEfPnn(): empty"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1511
    return-object v1
.end method

.method public getMenuTitleFromEf()Ljava/lang/String;
    .registers 2

    .line 1935
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    return-object v0
.end method

.method public getMncLength()I
    .registers 3

    .line 2334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mncLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2335
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    return v0
.end method

.method public getMvnoMatchType()Ljava/lang/String;
    .registers 9

    .line 1531
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 1532
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v1

    .line 1533
    .local v1, "SPN":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getFirstFullNameInEfPnn()Ljava/lang/String;

    move-result-object v2

    .line 1534
    .local v2, "PNN":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v3

    .line 1535
    .local v3, "GID1":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 1537
    .local v4, "MCCMNC":Ljava/lang/String;
    sget-boolean v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->USERDEBUG:Z

    const-string v6, ", spn = "

    if-eqz v5, :cond_35

    .line 1538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMvnoMatchType(): imsi = ***, mccmnc = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_57

    .line 1541
    :cond_35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMvnoMatchType(): imsi = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mccmnc = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1546
    :goto_57
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_64

    .line 1547
    const-string v5, "spn"

    return-object v5

    .line 1549
    :cond_64
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_71

    .line 1550
    const-string v5, "imsi"

    return-object v5

    .line 1552
    :cond_71
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7e

    .line 1553
    const-string v5, "pnn"

    return-object v5

    .line 1555
    :cond_7e
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfGid1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8b

    .line 1556
    const-string v5, "gid"

    return-object v5

    .line 1558
    :cond_8b
    const-string v5, ""

    return-object v5
.end method

.method public getSIMCPHSOns()Ljava/lang/String;
    .registers 2

    .line 530
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnsl:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 531
    return-object v0

    .line 533
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnss:Ljava/lang/String;

    return-object v0
.end method

.method public getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    .registers 11
    .param p1, "enService"    # Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 1707
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->getIndex()I

    move-result v0

    .line 1708
    .local v0, "nServiceNum":I
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->UNKNOWN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 1710
    .local v1, "simServiceStatus":Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIMServiceStatus enService is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Service Index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1714
    if-ltz v0, :cond_c8

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->UNSUPPORTED_SERVICE:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 1715
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->getIndex()I

    move-result v2

    if-ge v0, v2, :cond_c8

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    if-eqz v2, :cond_c8

    .line 1717
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const-string v4, " nbit: "

    if-ne v2, v3, :cond_7d

    .line 1718
    sget-object v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->usimServiceNumber:[I

    aget v2, v2, v0

    .line 1719
    .local v2, "nUSTIndex":I
    if-gtz v2, :cond_45

    .line 1720
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_7c

    .line 1722
    :cond_45
    div-int/lit8 v3, v2, 0x8

    .line 1723
    .local v3, "nbyte":I
    rem-int/lit8 v5, v2, 0x8

    .line 1724
    .local v5, "nbit":I
    if-nez v5, :cond_4f

    .line 1725
    const/4 v5, 0x7

    .line 1726
    add-int/lit8 v3, v3, -0x1

    goto :goto_51

    .line 1728
    :cond_4f
    add-int/lit8 v5, v5, -0x1

    .line 1730
    :goto_51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSIMServiceStatus USIM nbyte: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1732
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v6, v4

    if-le v6, v3, :cond_7a

    aget-byte v4, v4, v3

    const/4 v6, 0x1

    shl-int/2addr v6, v5

    and-int/2addr v4, v6

    if-lez v4, :cond_7a

    .line 1733
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_7c

    .line 1735
    :cond_7a
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 1738
    .end local v2    # "nUSTIndex":I
    .end local v3    # "nbyte":I
    .end local v5    # "nbit":I
    :goto_7c
    goto :goto_c8

    .line 1739
    :cond_7d
    sget-object v2, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->simServiceNumber:[I

    aget v2, v2, v0

    .line 1740
    .local v2, "nSSTIndex":I
    if-gtz v2, :cond_86

    .line 1741
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_c8

    .line 1743
    :cond_86
    div-int/lit8 v3, v2, 0x4

    .line 1744
    .restart local v3    # "nbyte":I
    rem-int/lit8 v5, v2, 0x4

    .line 1745
    .restart local v5    # "nbit":I
    if-nez v5, :cond_90

    .line 1746
    const/4 v5, 0x3

    .line 1747
    add-int/lit8 v3, v3, -0x1

    goto :goto_92

    .line 1749
    :cond_90
    add-int/lit8 v5, v5, -0x1

    .line 1752
    :goto_92
    mul-int/lit8 v6, v5, 0x2

    const/4 v7, 0x2

    shl-int v6, v7, v6

    .line 1753
    .local v6, "nMask":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSIMServiceStatus SIM nbyte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " nMask: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1755
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v7, v4

    if-le v7, v3, :cond_c6

    aget-byte v4, v4, v3

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_c6

    .line 1756
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_c8

    .line 1758
    :cond_c6
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 1764
    .end local v2    # "nSSTIndex":I
    .end local v3    # "nbyte":I
    .end local v5    # "nbit":I
    .end local v6    # "nMask":I
    :cond_c8
    :goto_c8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIMServiceStatus simServiceStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1765
    return-object v1
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .registers 3

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpNameInEfSpn(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoiceMailNumber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mVoiceMailNum:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 432
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleFileUpdate(I)V
    .registers 7
    .param p1, "efid"    # I

    .line 1132
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_ec

    .line 1185
    const-string v2, "handleFileUpdate default"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1186
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->isUsimPhbEfAndNeedReset(I)Z

    move-result v2

    if-ne v2, v1, :cond_e3

    .line 1187
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    if-nez v2, :cond_e3

    .line 1188
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    .line 1189
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1190
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setPhbReady(Z)V

    goto/16 :goto_e3

    .line 1172
    :sswitch_24
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1173
    const-string v0, "SIM Refresh called for EF_CFIS"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1174
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fcb

    const/16 v3, 0x20

    .line 1175
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1174
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1176
    goto/16 :goto_eb

    .line 1134
    :sswitch_3d
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1135
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    const/4 v4, 0x6

    .line 1136
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1135
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1137
    goto/16 :goto_eb

    .line 1166
    :sswitch_59
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1167
    const-string v0, "SIM Refresh called for EF_MSISDN"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1168
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6f40

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getExtFromEf(I)I

    move-result v3

    const/16 v4, 0xa

    .line 1169
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1168
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1170
    goto :goto_eb

    .line 1150
    :sswitch_7a
    const-string v2, "SIM Refresh called for EF_FDN"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1151
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    goto :goto_cf

    .line 1139
    :sswitch_85
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1140
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/16 v4, 0xb

    .line 1141
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1140
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1142
    goto :goto_eb

    .line 1144
    :sswitch_9f
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1145
    const-string v0, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    .line 1147
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1146
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1148
    goto :goto_eb

    .line 1178
    :sswitch_b7
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 1179
    const-string v0, "SIM Refresh called for EF_CFF_CPHS"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    .line 1181
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1180
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1182
    goto :goto_eb

    .line 1157
    :goto_cf
    :sswitch_cf
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    if-nez v2, :cond_eb

    .line 1158
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    .line 1159
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1160
    const-string v1, "handleFileUpdate ADN like"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setPhbReady(Z)V

    goto :goto_eb

    .line 1194
    :cond_e3
    :goto_e3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1195
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchSimRecords()V

    .line 1198
    :cond_eb
    :goto_eb
    return-void

    :sswitch_data_ec
    .sparse-switch
        0x4f30 -> :sswitch_cf
        0x6f13 -> :sswitch_b7
        0x6f15 -> :sswitch_9f
        0x6f17 -> :sswitch_85
        0x6f3a -> :sswitch_cf
        0x6f3b -> :sswitch_7a
        0x6f40 -> :sswitch_59
        0x6f49 -> :sswitch_cf
        0x6fc7 -> :sswitch_3d
        0x6fcb -> :sswitch_24
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, "isRecordLoadResponse":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->shallIgnoreMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 547
    return-void

    .line 549
    :cond_10
    :try_start_10
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_12} :catch_72f
    .catchall {:try_start_10 .. :try_end_12} :catchall_72d

    const/16 v2, 0xb

    const/16 v3, 0x6f4a

    const/16 v4, 0x6f17

    const/16 v5, 0x65

    const-string v6, ""

    const/16 v7, 0x64

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    sparse-switch v1, :sswitch_data_740

    .line 1118
    :try_start_28
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_727

    .line 791
    :sswitch_2d
    const/4 v0, 0x0

    .line 792
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 794
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_38

    .line 795
    goto/16 :goto_727

    .line 798
    :cond_38
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->parseEFopl5g(Ljava/util/ArrayList;)V

    .line 799
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/16 v3, 0x67

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 800
    goto/16 :goto_727

    .line 1052
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_4c
    const-string v1, "[RSU-SIMLOCK] handleMessage (EVENT_RSU_SIM_LOCK_CHANGED)"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1054
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1056
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_727

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_727

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_727

    .line 1057
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1060
    .local v2, "simMelockEvent":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RSU-SIMLOCK] sim melock event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v2, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1063
    new-instance v3, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;

    invoke-direct {v3, p0, v11}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;)V

    .line 1065
    .local v3, "listener":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;
    aget v4, v2, v13

    if-nez v4, :cond_b1

    .line 1066
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Unlock Phone"

    .line 1067
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Please restart the phone now since unlock setting has changed."

    .line 1068
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    .line 1071
    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1072
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1074
    .local v4, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1075
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1077
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1079
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1081
    .end local v2    # "simMelockEvent":[I
    .end local v3    # "listener":Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$RebootClickListener;
    .end local v4    # "alertDialog":Landroid/app/AlertDialog;
    :cond_b1
    goto/16 :goto_727

    .line 699
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_b3
    const/4 v0, 0x0

    .line 701
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 706
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_be

    .line 707
    goto/16 :goto_727

    .line 711
    :cond_be
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->parseEFpnn(Ljava/util/ArrayList;)V

    .line 712
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 713
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mReadingOpl:Z

    if-nez v2, :cond_727

    .line 714
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_727

    .line 1021
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_df
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1023
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_727

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_727

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_727

    .line 1025
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1026
    .local v2, "phbReadyState":[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    .line 1027
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSimStateForSlotIndex(I)I

    move-result v3

    .line 1028
    .local v3, "curSimState":I
    const/4 v4, 0x0

    .line 1031
    .local v4, "isSimLocked":Z
    const/4 v5, 0x4

    if-eq v3, v5, :cond_103

    if-ne v3, v9, :cond_102

    goto :goto_103

    :cond_102
    move v12, v13

    :cond_103
    :goto_103
    move v4, v12

    .line 1035
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phbReadyState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",curSimState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isSimLocked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1037
    aget v5, v2, v13

    invoke-direct {p0, v5, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->updatePHBStatus(IZ)V

    .line 1038
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->updateIccFdnStatus()V

    .line 1039
    .end local v2    # "phbReadyState":[I
    .end local v3    # "curSimState":I
    .end local v4    # "isSimLocked":Z
    goto/16 :goto_727

    .line 1044
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_134
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPhbReady()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EVENT_DELAYED_SEND_PHB_CHANGE] isReady : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1046
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-direct {p0, v1, v13}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 1047
    goto/16 :goto_727

    .line 967
    :sswitch_157
    const-string v1, "handleMessage (EVENT_IMSI_REFRESH_QUERY_DONE)"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 969
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 970
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17c

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception querying IMSI, Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 972
    goto/16 :goto_727

    .line 976
    :cond_17c
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 977
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_197

    .line 978
    const-string v2, "Invalid IMSI padding digits received."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 981
    :cond_197
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 982
    iput-object v11, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 985
    :cond_1a1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_1b6

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    const-string v3, "[0-9]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b6

    .line 986
    const-string v2, "Invalid non-numeric IMSI digits received."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 987
    iput-object v11, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 993
    :cond_1b6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_1e4

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v8, :cond_1cc

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_1e4

    .line 994
    :cond_1cc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid IMSI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 995
    iput-object v11, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 998
    :cond_1e4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSI: mMncLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1000
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_22d

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v8, :cond_22d

    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v3, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    .line 1002
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1001
    invoke-static {v13, v3}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1006
    :cond_22d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->updateOperatorPlmn()V

    .line 1008
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_248

    .line 1009
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsi:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSimImsi:Ljava/lang/String;

    .line 1010
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1011
    const-string v2, "SimRecords: mImsiReadyRegistrants.notifyRegistrants"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1014
    :cond_248
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    if-nez v2, :cond_727

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsRequested:Z

    if-ne v2, v12, :cond_727

    .line 1015
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->onAllRecordsLoaded()V

    goto/16 :goto_727

    .line 958
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_255
    sget-boolean v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->USERDEBUG:Z

    if-eqz v1, :cond_25f

    .line 959
    const-string v1, "handleMessage (EVENT_IMSI_REFRESH_QUERY)"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_277

    .line 961
    :cond_25f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage (EVENT_IMSI_REFRESH_QUERY) mImsi= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 963
    :goto_277
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ff

    .line 964
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 963
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 965
    goto/16 :goto_727

    .line 948
    :sswitch_28a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 950
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_727

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_727

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_727

    .line 952
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 953
    .local v2, "cfuResult":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle EVENT_CFU_IND: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v2, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 954
    .end local v2    # "cfuResult":[I
    goto/16 :goto_727

    .line 936
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2b4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 938
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2de

    .line 939
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfGbanlList:Ljava/util/ArrayList;

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET_GBANL record count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfGbanlList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto/16 :goto_727

    .line 942
    :cond_2de
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on GET_GBANL with exp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 944
    goto/16 :goto_727

    .line 922
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2f6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 924
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_320

    .line 925
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 926
    .local v2, "data":[B
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mGbabp:Ljava/lang/String;

    .line 928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_GBABP="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mGbabp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto/16 :goto_727

    .line 930
    .end local v2    # "data":[B
    :cond_320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on GET_GBABP with exp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 932
    goto/16 :goto_727

    .line 906
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_338
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 907
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 909
    .restart local v2    # "data":[B
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_346

    .line 910
    goto/16 :goto_727

    .line 913
    :cond_346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_SMSP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 915
    if-eqz v2, :cond_727

    .line 916
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSmsp:[B

    goto/16 :goto_727

    .line 890
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "data":[B
    :sswitch_364
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 891
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 893
    .restart local v2    # "data":[B
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_372

    .line 894
    goto/16 :goto_727

    .line 897
    :cond_372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_PSISMSC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 899
    if-eqz v2, :cond_727

    .line 900
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfPsismsc:[B

    goto/16 :goto_727

    .line 838
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "data":[B
    :sswitch_390
    const-string v1, "handleMessage (EVENT_GET_RAT_DONE)"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 840
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 841
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iput-boolean v12, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRatLoaded:Z

    .line 842
    const/16 v2, 0x200

    if-eqz v1, :cond_3c6

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3c6

    .line 843
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    .line 844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load EF_RAT complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    aget-byte v4, v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 845
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->boradcastEfRatContentNotify(I)V

    goto/16 :goto_727

    .line 847
    :cond_3c6
    const-string v3, "load EF_RAT fail"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 848
    iput-object v11, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfRat:[B

    .line 849
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_3de

    .line 850
    const/16 v2, 0x100

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->boradcastEfRatContentNotify(I)V

    goto/16 :goto_727

    .line 852
    :cond_3de
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->boradcastEfRatContentNotify(I)V

    .line 855
    goto/16 :goto_727

    .line 830
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_3e3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 831
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_727

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_727

    .line 832
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    aget v2, v2, v13

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->processEfCspPlmnModeBitUrc(I)V

    goto/16 :goto_727

    .line 816
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_3f8
    const-string v1, "handleMessage (EVENT_GET_SHORT_CPHSONS_DONE)"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 817
    const/4 v0, 0x0

    .line 819
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 820
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_727

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_727

    .line 821
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 822
    .restart local v2    # "data":[B
    array-length v3, v2

    invoke-static {v2, v13, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnss:Ljava/lang/String;

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnss:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto/16 :goto_727

    .line 803
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "data":[B
    :sswitch_42b
    const-string v1, "handleMessage (EVENT_GET_CPHSONS_DONE)"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 804
    const/4 v0, 0x0

    .line 806
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 807
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_727

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_727

    .line 808
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 809
    .restart local v2    # "data":[B
    array-length v3, v2

    invoke-static {v2, v13, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN_CPHS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->cphsOnsl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto/16 :goto_727

    .line 780
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "data":[B
    :sswitch_45e
    const/4 v0, 0x0

    .line 782
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 783
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_469

    .line 784
    goto/16 :goto_727

    .line 786
    :cond_469
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->parseEFopl(Ljava/util/ArrayList;)V

    .line 787
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 788
    goto/16 :goto_727

    .line 862
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_47b
    const-string v1, "[sume receive response message"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 863
    const/4 v0, 0x1

    .line 865
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 866
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_4d4

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4d4

    .line 867
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 868
    .restart local v2    # "data":[B
    if-eqz v2, :cond_727

    array-length v3, v2

    if-lt v3, v9, :cond_727

    .line 869
    aget-byte v3, v2, v13

    and-int/2addr v3, v10

    .line 870
    .local v3, "tag":I
    aget-byte v4, v2, v12

    and-int/2addr v4, v10

    .line 871
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sume tag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 872
    invoke-static {v2, v9, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    .line 873
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sume menu title is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 874
    .end local v3    # "tag":I
    .end local v4    # "len":I
    goto/16 :goto_727

    .line 876
    .end local v2    # "data":[B
    :cond_4d4
    const-string v2, "[sume null AsyncResult or exception."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 878
    iput-object v11, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    .line 881
    goto/16 :goto_727

    .line 883
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_4dd
    iput-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdn:Ljava/lang/String;

    .line 885
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 886
    goto/16 :goto_727

    .line 555
    :sswitch_4ea
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    .line 556
    goto/16 :goto_727

    .line 551
    :sswitch_4ef
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    .line 552
    goto/16 :goto_727

    .line 636
    :sswitch_4f4
    const/4 v0, 0x0

    .line 637
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 639
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_513

    .line 640
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mNewMsisdn:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdn:Ljava/lang/String;

    .line 641
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 643
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 645
    const-string v2, "Success to update EF[MSISDN]"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 648
    :cond_513
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_727

    .line 649
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 651
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_727

    .line 757
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_52c
    const/4 v0, 0x1

    .line 759
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 761
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_537

    .line 762
    goto/16 :goto_727

    .line 765
    :cond_537
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    iput-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCphsInfo:[B

    .line 767
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iCPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCphsInfo:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 770
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isValidMBI:Z

    if-nez v5, :cond_727

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isCphsMailboxEnabled()Z

    move-result v5

    if-eqz v5, :cond_727

    .line 771
    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v5, v12

    iput v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 772
    new-instance v5, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 774
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 772
    invoke-virtual {v5, v4, v3, v12, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_727

    .line 732
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_576
    const/4 v0, 0x1

    .line 734
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 735
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 737
    .restart local v2    # "data":[B
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_585

    .line 738
    goto/16 :goto_727

    .line 741
    :cond_585
    new-instance v3, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 744
    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    .line 754
    goto/16 :goto_727

    .line 1104
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "data":[B
    :sswitch_5a6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1105
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5b3

    .line 1106
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    .line 1107
    goto/16 :goto_727

    .line 1109
    :cond_5b3
    const/4 v0, 0x1

    .line 1110
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->parseEFopl(Ljava/util/ArrayList;)V

    .line 1111
    const/4 v0, 0x0

    .line 1115
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    .line 1116
    goto/16 :goto_727

    .line 1087
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_5c1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1088
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5ce

    .line 1089
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    .line 1090
    goto/16 :goto_727

    .line 1093
    :cond_5ce
    const/4 v0, 0x1

    .line 1094
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->parseEFpnn(Ljava/util/ArrayList;)V

    .line 1095
    const/4 v0, 0x0

    .line 1099
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    .line 1100
    goto/16 :goto_727

    .line 656
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_5dc
    const/4 v0, 0x1

    .line 657
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 659
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 660
    if-eqz v1, :cond_657

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_657

    .line 661
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 662
    .restart local v2    # "data":[B
    aget-byte v3, v2, v13

    and-int/2addr v3, v10

    .line 663
    .local v3, "displayCondition":I
    iput v13, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    .line 665
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v12, :cond_5fd

    .line 666
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    or-int/2addr v4, v12

    iput v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    .line 670
    :cond_5fd
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_606

    .line 671
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    or-int/2addr v4, v9

    iput v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    .line 675
    :cond_606
    array-length v4, v2

    sub-int/2addr v4, v12

    invoke-static {v2, v12, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    .line 678
    if-eqz v4, :cond_624

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_624

    .line 680
    const-string v4, "set mSpNameInEfSpn to null as parsing result is empty"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 682
    iput-object v11, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpNameInEfSpn:Ljava/lang/String;

    .line 685
    :cond_624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load EF_SPN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " carrierNameDisplayCondition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 687
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v5

    .line 688
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    .line 687
    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 689
    .end local v3    # "displayCondition":I
    goto/16 :goto_727

    .line 690
    .end local v2    # "data":[B
    :cond_657
    const-string v2, "Read EF_SPN fail!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 693
    iput v13, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCarrierNameDisplayCondition:I

    .line 695
    goto/16 :goto_727

    .line 616
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_660
    const/4 v0, 0x1

    .line 618
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 620
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_670

    .line 621
    const-string v2, "Invalid or missing EF[MSISDN]"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 622
    goto/16 :goto_727

    .line 625
    :cond_670
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 627
    .local v2, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdn:Ljava/lang/String;

    .line 628
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 631
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSISDN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMsisdn:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 634
    goto/16 :goto_727

    .line 560
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :sswitch_6a7
    const/4 v0, 0x1

    .line 562
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 563
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 565
    .local v5, "data":[B
    const/4 v6, 0x0

    .line 566
    .local v6, "isValidMbdn":Z
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_6e2

    .line 568
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EF_MBI: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 571
    aget-byte v7, v5, v13

    and-int/2addr v7, v10

    iput v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    .line 574
    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    if-eqz v7, :cond_6e2

    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    if-eq v7, v10, :cond_6e2

    .line 575
    const-string v7, "Got valid mailbox number for MBDN"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 576
    const/4 v6, 0x1

    .line 578
    iput-boolean v12, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isValidMBI:Z

    .line 584
    :cond_6e2
    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/2addr v7, v12

    iput v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 586
    if-eqz v6, :cond_703

    .line 589
    const-string v2, "EVENT_GET_MBI_DONE, to load EF_MBDN"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 592
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x6fc7

    const/16 v4, 0x6fc8

    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    .line 593
    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 592
    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_727

    .line 595
    :cond_703
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isCphsMailboxEnabled()Z

    move-result v7

    if-eqz v7, :cond_71d

    .line 600
    const-string v7, "EVENT_GET_MBI_DONE, to load EF_MAILBOX_CPHS"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 603
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 605
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 603
    invoke-virtual {v7, v4, v3, v12, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_727

    .line 608
    :cond_71d
    const-string v2, "EVENT_GET_MBI_DONE, do nothing"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 609
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    sub-int/2addr v2, v12

    iput v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I
    :try_end_727
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_727} :catch_72f
    .catchall {:try_start_28 .. :try_end_727} :catchall_72d

    .line 1125
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "data":[B
    .end local v6    # "isValidMbdn":Z
    :cond_727
    :goto_727
    if-eqz v0, :cond_738

    .line 1126
    :goto_729
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->onRecordLoaded()V

    goto :goto_738

    .line 1125
    :catchall_72d
    move-exception v1

    goto :goto_739

    .line 1120
    :catch_72f
    move-exception v1

    .line 1122
    .local v1, "exc":Ljava/lang/RuntimeException;
    :try_start_730
    const-string v2, "Exception parsing SIM record"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLogw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_735
    .catchall {:try_start_730 .. :try_end_735} :catchall_72d

    .line 1125
    .end local v1    # "exc":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_738

    .line 1126
    goto :goto_729

    .line 1129
    :cond_738
    :goto_738
    return-void

    .line 1125
    :goto_739
    if-eqz v0, :cond_73e

    .line 1126
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->onRecordLoaded()V

    .line 1128
    :cond_73e
    throw v1

    nop

    :sswitch_data_740
    .sparse-switch
        0x5 -> :sswitch_6a7
        0xa -> :sswitch_660
        0xc -> :sswitch_5dc
        0xf -> :sswitch_5c1
        0x10 -> :sswitch_5a6
        0x11 -> :sswitch_576
        0x1a -> :sswitch_52c
        0x1e -> :sswitch_4f4
        0x101 -> :sswitch_4ef
        0x102 -> :sswitch_4ea
        0x3e9 -> :sswitch_4dd
        0x3ed -> :sswitch_47b
        0x3f0 -> :sswitch_45e
        0x3f1 -> :sswitch_42b
        0x3f2 -> :sswitch_3f8
        0x3f5 -> :sswitch_3e3
        0x3f6 -> :sswitch_390
        0x3f9 -> :sswitch_364
        0x3fa -> :sswitch_338
        0x3fb -> :sswitch_2f6
        0x3fc -> :sswitch_2b4
        0x3fd -> :sswitch_28a
        0x3fe -> :sswitch_255
        0x3ff -> :sswitch_157
        0x402 -> :sswitch_134
        0x403 -> :sswitch_df
        0x404 -> :sswitch_b3
        0x405 -> :sswitch_4c
        0x406 -> :sswitch_2d
    .end sparse-switch
.end method

.method protected handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .registers 6
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 1202
    if-nez p1, :cond_8

    .line 1203
    const-string v0, "handleSimRefresh received without input"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1204
    return-void

    .line 1207
    :cond_8
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v0, :cond_4c

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1208
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4c

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRefresh, refreshResponse.aid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mParentApp.getAid() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1214
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1213
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1216
    return-void

    .line 1219
    :cond_4c
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_ec

    .line 1276
    :pswitch_53
    const-string v0, "handleSimRefresh callback to parent"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1277
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_eb

    .line 1269
    :pswitch_5d
    const-string v0, "handleSimRefresh with REFRESH_SESSION_RESET"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    .line 1273
    goto/16 :goto_eb

    .line 1256
    :pswitch_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRefresh with REFRESH_INIT_FILE_UPDATED, EFID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1259
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    .line 1260
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    .line 1262
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_eb

    .line 1264
    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->sendMessage(Landroid/os/Message;)Z

    goto :goto_eb

    .line 1249
    :pswitch_98
    const-string v0, "handleRefresh with REFRESH_INIT_FULL_FILE_UPDATED"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setPhbReady(Z)V

    .line 1252
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    .line 1253
    goto :goto_eb

    .line 1234
    :pswitch_a4
    const-string v0, "handleRefresh with SIM_REFRESH_RESET"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1235
    const-string v0, "ro.vendor.sim_refresh_reset_by_modem"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 1236
    const-string v0, "sim_refresh_reset_by_modem false"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_ce

    .line 1238
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->restartRILD(Landroid/os/Message;)V

    goto :goto_ce

    .line 1241
    :cond_c9
    const-string v0, "Sim reset by modem!"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1243
    :cond_ce
    :goto_ce
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setPhbReady(Z)V

    .line 1244
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    .line 1245
    goto :goto_eb

    .line 1227
    :pswitch_d5
    const-string v0, "handleRefresh with SIM_REFRESH_INIT"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    .line 1231
    goto :goto_eb

    .line 1221
    :pswitch_de
    const-string v0, "handleRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1223
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->handleFileUpdate(I)V

    .line 1224
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsPhbEfResetDone:Z

    .line 1225
    nop

    .line 1280
    :cond_eb
    :goto_eb
    return-void

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_de
        :pswitch_d5
        :pswitch_a4
        :pswitch_53
        :pswitch_98
        :pswitch_67
        :pswitch_5d
    .end packed-switch
.end method

.method public isFetchRatBalancingAndEnsFile(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 2586
    const-string v0, "persist.vendor.radio.sim.opid"

    .line 2587
    .local v0, "strPropOperatorId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2589
    .local v1, "isFetch":Z
    if-lez p1, :cond_19

    .line 2590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2592
    :cond_19
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "7"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 2593
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "145"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2594
    :cond_31
    const/4 v1, 0x1

    .line 2596
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFetchRatBalancingAndEnsFile is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2597
    return v1
.end method

.method public isOperatorMvnoForEfPnn()Ljava/lang/String;
    .registers 5

    .line 1522
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1523
    .local v0, "MCCMNC":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getFirstFullNameInEfPnn()Ljava/lang/String;

    move-result-object v1

    .line 1524
    .local v1, "PNN":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOperatorMvnoForEfPnn(): mccmnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pnn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1525
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1526
    return-object v1

    .line 1527
    :cond_2f
    const/4 v2, 0x0

    return-object v2
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .registers 7

    .line 1490
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v0

    .line 1491
    .local v0, "spnOverride":Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1492
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    .line 1491
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->isOperatorMvnoForImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "imsiPattern":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1495
    .local v2, "mccmnc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOperatorMvnoForImsi(), imsiPattern: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mccmnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1498
    if-eqz v1, :cond_56

    if-nez v2, :cond_35

    goto :goto_56

    .line 1501
    :cond_35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1503
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOperatorMvnoForImsi(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1505
    return-object v3

    .line 1499
    .end local v3    # "result":Ljava/lang/String;
    :cond_56
    :goto_56
    const/4 v3, 0x0

    return-object v3
.end method

.method public isPhbReady()Z
    .registers 11

    .line 2426
    const-string v0, "false"

    .line 2427
    .local v0, "strPhbReady":Ljava/lang/String;
    const-string v1, ""

    .line 2428
    .local v1, "strAllSimState":Ljava/lang/String;
    const-string v2, ""

    .line 2429
    .local v2, "strCurSimState":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2431
    .local v3, "isSimLocked":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phbReady(): cached mPhbReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    const-string v6, "false"

    const-string v7, "true"

    if-eqz v5, :cond_1b

    move-object v5, v7

    goto :goto_1c

    :cond_1b
    move-object v5, v6

    :goto_1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2433
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v5, 0x0

    if-eqz v4, :cond_bb

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v4, :cond_31

    goto/16 :goto_bb

    .line 2437
    :cond_31
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    const-string v8, "vendor.gsm.sim.ril.phbready"

    invoke-static {v4, v8, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2440
    const-string v4, "ro.vendor.mtk_ril_mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "c6m_1rild"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "phbReady(): strPhbReady = "

    if-eqz v4, :cond_60

    .line 2442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2444
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 2446
    :cond_60
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2447
    if-eqz v1, :cond_81

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_81

    .line 2448
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2449
    .local v4, "values":[Ljava/lang/String;
    iget v8, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    if-ltz v8, :cond_81

    array-length v9, v4

    if-ge v8, v9, :cond_81

    aget-object v9, v4, v8

    if-eqz v9, :cond_81

    .line 2450
    aget-object v2, v4, v8

    .line 2453
    .end local v4    # "values":[Ljava/lang/String;
    :cond_81
    const-string v4, "NETWORK_LOCKED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_95

    .line 2454
    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    goto :goto_95

    :cond_93
    move v4, v5

    goto :goto_96

    :cond_95
    :goto_95
    move v4, v8

    :goto_96
    move v3, v4

    .line 2457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", strAllSimState = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2460
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ba

    if-nez v3, :cond_ba

    move v5, v8

    :cond_ba
    return v5

    .line 2434
    :cond_bb
    :goto_bb
    return v5
.end method

.method public isRadioAvailable()Z
    .registers 4

    .line 2354
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2355
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 2357
    :cond_10
    return v1
.end method

.method protected isSpnActive()Z
    .registers 9

    .line 1463
    const/4 v0, 0x0

    .line 1464
    .local v0, "bSpnActive":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    .line 1466
    .local v1, "spn":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_6e

    .line 1467
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const-string v4, " set bSpnActive to true"

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-ne v2, v3, :cond_45

    .line 1468
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v3, v2

    const/4 v7, 0x3

    if-lt v3, v7, :cond_6e

    aget-byte v2, v2, v5

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_6e

    .line 1469
    const/4 v0, 0x1

    .line 1470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSpnActive USIM mEfSST is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    .line 1471
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1470
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_6e

    .line 1473
    :cond_45
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    array-length v3, v2

    const/4 v7, 0x5

    if-lt v3, v7, :cond_6e

    aget-byte v2, v2, v6

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_6e

    .line 1474
    const/4 v0, 0x1

    .line 1475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSpnActive SIM mEfSST is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfSST:[B

    .line 1476
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1475
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1480
    :cond_6e
    :goto_6e
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 2640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMRecords"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2641
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .registers 7

    .line 1315
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 1321
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsRequested:Z

    .line 1323
    return-void

    .line 1326
    :cond_e
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    .line 1328
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v0, v1, :cond_96

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1329
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_26

    goto :goto_96

    .line 1337
    :cond_26
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1343
    .local v0, "operator":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAllRecordsLoaded operator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1343
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1346
    if-eqz v0, :cond_86

    .line 1347
    const/4 v1, 0x0

    .line 1348
    .local v1, "newName":Ljava/lang/String;
    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "46007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 1349
    :cond_6a
    const-string v0, "46000"

    .line 1351
    :cond_6c
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1352
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mContext:Landroid/content/Context;

    .line 1351
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1354
    const-string v2, "vendor.gsm.sim.operator.default-name"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    .end local v1    # "newName":Ljava/lang/String;
    :cond_86
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchCPHSOns()V

    .line 1359
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchRatBalancing()V

    .line 1360
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchSmsp()V

    .line 1361
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchGbaRecords()V

    .line 1362
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->fetchOpl5g()V

    .line 1364
    return-void

    .line 1331
    .end local v0    # "operator":Ljava/lang/String;
    :cond_96
    :goto_96
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsRequested:Z

    .line 1333
    return-void
.end method

.method protected onLocked()V
    .registers 3

    .line 2650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsRequested:Z

    .line 2651
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2653
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mLockedRecordsReqReason:I

    if-eqz v0, :cond_16

    .line 2654
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsToLoad:I

    .line 2655
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->onRecordLoaded()V

    .line 2656
    return-void

    .line 2659
    :cond_16
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLocked()V

    .line 2660
    return-void
.end method

.method protected resetRecords()V
    .registers 3

    .line 414
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 415
    const-string v0, "vendor.gsm.sim.operator.default-name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public setEfGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2307
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2309
    .local v0, "data":[B
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fd6

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2310
    return-void
.end method

.method public setPhbReady(Z)V
    .registers 6
    .param p1, "isReady"    # Z

    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhbReady(): isReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v1, "true"

    goto :goto_11

    :cond_f
    const-string v1, "false"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2466
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    if-eq v0, p1, :cond_40

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_40

    .line 2467
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    .line 2468
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_32

    .line 2469
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setPhonebookReady(ILandroid/os/Message;)V

    goto :goto_3b

    .line 2470
    :cond_32
    if-nez p1, :cond_3b

    .line 2471
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setPhonebookReady(ILandroid/os/Message;)V

    .line 2473
    :cond_3b
    :goto_3b
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhbReady:Z

    invoke-direct {p0, v1, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 2475
    :cond_40
    return-void
.end method

.method protected setSpnFromConfig(Ljava/lang/String;)V
    .registers 5
    .param p1, "carrier"    # Ljava/lang/String;

    .line 1441
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpnOverride:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1442
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1443
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mSpnOverride:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1442
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 1445
    :cond_23
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .registers 15
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "dialNumber"    # Ljava/lang/String;

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCallForwardingFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIMRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    return-void

    .line 455
    :cond_1a
    const/4 v2, 0x0

    if-eqz p2, :cond_1f

    move v3, v0

    goto :goto_20

    .line 456
    :cond_1f
    move v3, v2

    :goto_20
    iput v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mRecordsEventsRegistrants: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 462
    :try_start_45
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->checkEfCfis()Z

    move-result v3

    const/16 v4, 0xe

    if-eqz v3, :cond_e4

    .line 464
    if-eqz p2, :cond_58

    .line 465
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    aget-byte v5, v3, v0

    or-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    goto :goto_61

    .line 467
    :cond_58
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xfe

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 470
    :goto_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceCallForwardingFlag: enable="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mEfCfis="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    .line 471
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 475
    if-eqz p2, :cond_c4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_CFIS: updating cf number, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLogv(Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->convertNumberIfContainsPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "tmpDialNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 484
    .local v1, "bcdNumber":[B
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/4 v5, 0x3

    array-length v6, v1

    invoke-static {v1, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/4 v5, 0x2

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 487
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/4 v5, -0x1

    aput-byte v5, v3, v4

    .line 488
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/16 v6, 0xf

    aput-byte v5, v3, v6

    .line 492
    .end local v0    # "tmpDialNumber":Ljava/lang/String;
    .end local v1    # "bcdNumber":[B
    :cond_c4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_de

    .line 493
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6fcb

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    const/4 v9, 0x0

    const/16 v0, 0x6fcb

    .line 495
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 493
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_106

    .line 497
    :cond_de
    const-string v0, "setVoiceCallForwardingFlag: mFh is null, skip update EF_CFIS"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    goto :goto_106

    .line 500
    :cond_e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCallForwardingFlag: ignoring enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " invalid mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    .line 501
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 504
    :goto_106
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_142

    .line 505
    if-eqz p2, :cond_11a

    .line 506
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xf0

    or-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_127

    .line 509
    :cond_11a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xf0

    or-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 513
    :goto_127
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_13d

    .line 514
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    .line 516
    const/16 v2, 0x6f13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 514
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_142

    .line 518
    :cond_13d
    const-string v0, "setVoiceCallForwardingFlag: mFh is null, skip update EF_CFF_CPHS"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V
    :try_end_142
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_45 .. :try_end_142} :catch_143

    .line 525
    :cond_142
    :goto_142
    goto :goto_149

    .line 521
    :catch_143
    move-exception v0

    .line 522
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Error saving call forwarding flag to SIM. Probably malformed SIM record"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLogw(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_149
    return-void
.end method

.method protected setVoiceCallForwardingFlagFromSimRecords()V
    .registers 6

    .line 2555
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->checkEfCfis()Z

    move-result v0

    const/4 v1, 0x1

    .line 2558
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2555
    if-eqz v0, :cond_2e

    .line 2556
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCfis:[B

    aget-byte v0, v0, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    .line 2557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS2: callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2558
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_7c

    .line 2559
    :cond_2e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_5e

    .line 2560
    nop

    .line 2561
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xf

    const/16 v4, 0xa

    if-ne v0, v4, :cond_3f

    .line 2562
    goto :goto_40

    :cond_3f
    move v1, v3

    :goto_40
    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    .line 2563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFF2: callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2564
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_7c

    .line 2566
    :cond_5e
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    .line 2567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS and EF_CFF not valid. callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2568
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2570
    :goto_7c
    return-void
.end method

.method protected setVoiceMailByCountry(Ljava/lang/String;)V
    .registers 3
    .param p1, "spn"    # Ljava/lang/String;

    .line 1450
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1453
    const-string v0, "setVoiceMailByCountry"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 1456
    :cond_10
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceMailNumber, mIsVoiceMailFixed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mIsVoiceMailFixed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMailboxIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMailboxIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCphsMailboxEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isCphsMailboxEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alphaTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", voiceNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 445
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 446
    return-void
.end method

.method protected shallIgnoreMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2601
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "["

    const-string v2, "Received message "

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_32

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x29

    if-ne v0, v3, :cond_11

    goto :goto_32

    .line 2607
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]  while being destroyed. Ignoring."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 2609
    const/4 v0, 0x1

    return v0

    .line 2603
    :cond_32
    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]  while being destroyed. Keep going!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 2605
    const/4 v0, 0x0

    return v0
.end method

.method protected updateIccFdnStatus()V
    .registers 1

    .line 2361
    return-void
.end method

.method protected updateOperatorPlmn()V
    .registers 11

    .line 2665
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 2667
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_c5

    .line 2669
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4b

    .line 2670
    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x6

    if-lt v1, v5, :cond_4b

    .line 2671
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2672
    .local v1, "mccmncCode":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    array-length v6, v5

    move v7, v4

    :goto_25
    if-ge v7, v6, :cond_4b

    aget-object v8, v5, v7

    .line 2673
    .local v8, "mccmnc":Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 2674
    iput v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    .line 2675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: setting1 mMncLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2676
    goto :goto_4b

    .line 2672
    .end local v8    # "mccmnc":Ljava/lang/String;
    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 2682
    .end local v1    # "mccmncCode":Ljava/lang/String;
    :cond_4b
    :goto_4b
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    if-eq v1, v2, :cond_53

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    if-nez v1, :cond_8f

    .line 2684
    :cond_53
    :try_start_53
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2685
    .local v1, "mcc":I
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    .line 2686
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting2 mMncLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_77} :catch_78

    .line 2689
    .end local v1    # "mcc":I
    goto :goto_8f

    .line 2687
    :catch_78
    move-exception v1

    .line 2688
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting3 mMncLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLoge(Ljava/lang/String;)V

    .line 2692
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_8f
    :goto_8f
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    if-eqz v1, :cond_c5

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    if-eq v1, v2, :cond_c5

    .line 2693
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_c5

    .line 2694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update mccmnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mtkLog(Ljava/lang/String;)V

    .line 2698
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mMncLength:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->updateConfiguration(Ljava/lang/String;)V

    .line 2701
    :cond_c5
    return-void
.end method

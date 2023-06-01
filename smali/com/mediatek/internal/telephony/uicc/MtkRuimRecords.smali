.class public Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
.super Lcom/android/internal/telephony/uicc/RuimRecords;
.source "MtkRuimRecords.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/uicc/MtkIccConstants;


# static fields
.field public static final C2K_PHB_NOT_READY:I = 0x2

.field public static final C2K_PHB_READY:I = 0x3

.field private static final CSIM_FDN_SERVICE_MASK_ACTIVE:I = 0x1

.field private static final CSIM_FDN_SERVICE_MASK_EXIST:I = 0x2

.field private static final EVENT_DELAYED_SEND_PHB_CHANGE:I = 0x1f7

.field private static final EVENT_GET_EST_DONE:I = 0x1f5

.field private static final EVENT_PHB_READY:I = 0x1f8

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x1f6

.field public static final GSM_PHB_NOT_READY:I = 0x0

.field public static final GSM_PHB_READY:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "RuimRecords"

.field private static final MCC_LEN:I = 0x3

.field static final MTK_LOG_TAG:Ljava/lang/String; = "MtkRuimRecords"

.field public static final PHB_DELAY_SEND_TIME:I = 0x1f4

.field static final PROPERTY_RIL_C2K_PHB_READY:Ljava/lang/String; = "vendor.cdma.sim.ril.phbready"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field static final PROPERTY_RIL_GSM_PHB_READY:Ljava/lang/String; = "vendor.gsm.sim.ril.phbready"

.field private static final RUIM_FDN_SERVICE_MASK_EXIST_ACTIVE:I = 0x30

.field private static final RUIM_FDN_SERVICE_MASK_EXIST_INACTIVE:I = 0x10


# instance fields
.field private mDispose:Z

.field private mEnableService:[B

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingPhbNotify:Z

.field private mPhbReady:Z

.field private mPhbWaitSub:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private mRuimImsi:Ljava/lang/String;

.field private mSimService:[B

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 120
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 9
    .param p1, "app"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/RuimRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRuimImsi:Ljava/lang/String;

    .line 113
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    .line 118
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    .line 143
    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    .line 144
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 145
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z

    .line 146
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mDispose:Z

    .line 147
    new-instance v1, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    .line 222
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MtkRuimRecords X ctor this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 226
    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4, p3, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 227
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x1f8

    invoke-virtual {v3, p0, v4, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x1f6

    invoke-interface {v3, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    const-string v1, "updateIccRecords in IccPhoneBookeInterfaceManager"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_93

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 242
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 247
    :cond_93
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->isPhbReady()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 248
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 249
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 252
    :cond_9f
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 93
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    return v0
.end method

.method private broadcastPhbStateChangedIntent(ZZ)V
    .registers 11
    .param p1, "isReady"    # Z
    .param p2, "isForceSendIntent"    # Z

    .line 629
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mDispose:Z

    if-eqz v0, :cond_12

    if-eqz p1, :cond_1a

    .line 631
    :cond_12
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    .line 632
    const-string v0, "broadcastPhbStateChangedIntent, No active Phone will notfiy when dispose"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 633
    return-void

    .line 636
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPhbStateChangedIntent, mPhbReady "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 637
    const/4 v0, 0x0

    if-ne p1, v1, :cond_59

    .line 638
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 639
    .local v2, "subIds":[I
    if-eqz v2, :cond_4c

    array-length v3, v2

    if-lez v3, :cond_4c

    .line 640
    aget v0, v2, v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    .line 643
    :cond_4c
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    if-gtz v0, :cond_58

    .line 644
    const-string v0, "broadcastPhbStateChangedIntent, mSubId <= 0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 645
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z

    .line 646
    return-void

    .line 648
    .end local v2    # "subIds":[I
    :cond_58
    goto :goto_78

    .line 649
    :cond_59
    if-ne p2, v1, :cond_6e

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    if-ne v2, v1, :cond_6e

    .line 650
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 651
    .restart local v2    # "subIds":[I
    if-eqz v2, :cond_6e

    array-length v3, v2

    if-lez v3, :cond_6e

    .line 652
    aget v0, v2, v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    .line 655
    .end local v2    # "subIds":[I
    :cond_6e
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    if-gtz v0, :cond_78

    .line 656
    const-string v0, "broadcastPhbStateChangedIntent, isReady == false and mSubId <= 0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 657
    return-void

    .line 660
    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 661
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    .line 662
    .local v2, "isUnlock":Z
    const-string v3, "sys.boot_completed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    if-nez v2, :cond_97

    goto :goto_102

    .line 668
    :cond_97
    new-instance v1, Landroid/content/Intent;

    const-string v3, "mediatek.intent.action.PHB_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "ready"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 670
    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    const-string v6, "subscription"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting intent ACTION_PHB_STATE_CHANGED "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " sub id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " phoneId "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 672
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 671
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 673
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 675
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 676
    .local v3, "bootIntent":Landroid/content/Intent;
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    const-string v4, "com.mediatek.simprocessor"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const-string v4, "Broadcasting intent ACTION_PHB_STATE_CHANGED to package: simprocessor"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 682
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 684
    if-nez p1, :cond_101

    .line 685
    const/4 v4, -0x1

    iput v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSubId:I

    .line 687
    :cond_101
    return-void

    .line 663
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "bootIntent":Landroid/content/Intent;
    :cond_102
    :goto_102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastPhbStateChangedIntent, boot not completed, isUnlock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 664
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    .line 665
    return-void
.end method

.method private mtkLogd(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MtkRuimRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRuimRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method private mtkLoge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MtkRuimRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRuimRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method private mtkLogi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MtkRuimRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRuimRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method

.method private updatePhbStatus(IZ)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "isSimLocked"    # Z

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PhbStatus] status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSimLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPhbReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "isReady":Z
    const/4 v1, 0x0

    .line 695
    .local v1, "simLockedState":Z
    const-string v2, "ro.vendor.mtk_ril_mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c6m_1rild"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 696
    const/4 v1, 0x0

    goto :goto_39

    .line 698
    :cond_38
    move v1, p2

    .line 700
    :goto_39
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->isUsingGsmPhbReady(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_50

    .line 701
    if-ne p1, v3, :cond_46

    .line 702
    const/4 v0, 0x1

    goto :goto_59

    .line 703
    :cond_46
    if-nez p1, :cond_4a

    .line 704
    const/4 v0, 0x0

    goto :goto_59

    .line 707
    :cond_4a
    const-string v2, "[PhbStatus] not GSM PHB status"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 708
    return-void

    .line 711
    :cond_50
    const/4 v2, 0x3

    if-ne p1, v2, :cond_55

    .line 712
    const/4 v0, 0x1

    goto :goto_59

    .line 713
    :cond_55
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8a

    .line 714
    const/4 v0, 0x0

    .line 722
    :goto_59
    const/4 v2, 0x0

    if-eqz v0, :cond_77

    .line 723
    if-nez v1, :cond_6c

    .line 724
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    if-nez v4, :cond_68

    .line 725
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 726
    invoke-direct {p0, v3, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    goto :goto_89

    .line 728
    :cond_68
    invoke-direct {p0, v4, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    goto :goto_89

    .line 731
    :cond_6c
    const-string v3, "[PhbStatus] phb ready but sim is not ready."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 732
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 733
    invoke-direct {p0, v2, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    goto :goto_89

    .line 736
    :cond_77
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    if-ne v4, v3, :cond_86

    .line 737
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 738
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 739
    invoke-direct {p0, v2, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    goto :goto_89

    .line 741
    :cond_86
    invoke-direct {p0, v4, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 744
    :goto_89
    return-void

    .line 717
    :cond_8a
    const-string v2, "[PhbStatus] not C2K PHB status"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 718
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing MtkRuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mDispose:Z

    .line 259
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->isCdma4GDualModeCard()Z

    move-result v1

    if-nez v1, :cond_45

    .line 260
    const-string v1, "dispose, reset operator numeric, name and country iso"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 267
    :cond_45
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_4e

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    if-ne v1, v0, :cond_75

    .line 268
    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkRuimRecords Disposing set PHB unready mPendingPhbNotify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mPhbReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 270
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 271
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z

    .line 272
    invoke-direct {p0, v2, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 274
    :cond_75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 275
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z

    .line 276
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForPhbReady(Landroid/os/Handler;)V

    .line 278
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->dispose()V

    .line 282
    return-void
.end method

.method public getCarrierNameDisplayCondition()I
    .registers 5

    .line 432
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "spn":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    .line 434
    .local v1, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierNameDisplayCondition uiccProfile is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    if-eqz v1, :cond_1c

    move-object v3, v1

    goto :goto_1e

    :cond_1c
    const-string v3, "null"

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 437
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 439
    const-string v2, "getCarrierNameDisplayCondition, getOperatorBrandOverride is not null"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 440
    const/4 v2, 0x1

    .local v2, "rule":I
    goto :goto_5d

    .line 441
    .end local v2    # "rule":I
    :cond_37
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mCsimSpnDisplayCondition:Z

    if-nez v2, :cond_42

    .line 443
    const-string v2, "getCarrierNameDisplayCondition, no EF_SPN"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 444
    const/4 v2, 0x1

    .restart local v2    # "rule":I
    goto :goto_5d

    .line 445
    .end local v2    # "rule":I
    :cond_42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 446
    const-string v2, "getCarrierNameDisplayCondition, show spn"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 447
    const/4 v2, 0x2

    .restart local v2    # "rule":I
    goto :goto_5d

    .line 449
    .end local v2    # "rule":I
    :cond_57
    const-string v2, "getCarrierNameDisplayCondition, show plmn"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 450
    const/4 v2, 0x1

    .line 452
    .restart local v2    # "rule":I
    :goto_5d
    return v2
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .registers 6

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 294
    const/4 v1, 0x0

    return-object v1

    .line 297
    :cond_8
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMncLength:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1b

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMncLength:I

    if-eqz v1, :cond_1b

    .line 298
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMncLength:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 300
    :cond_1b
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "mcc":I
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    .registers 8
    .param p1, "enService"    # Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 479
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->UNKNOWN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 480
    .local v0, "simServiceStatus":Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v2, "getSIMServiceStatus enService: "

    if-nez v1, :cond_20

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mParentApp = null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 482
    return-object v0

    .line 484
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mParentApp.getType(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 485
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 487
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    const-string v2, "getSIMServiceStatus mSimService[0]: "

    const/4 v3, 0x0

    if-ne p1, v1, :cond_84

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 488
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v4, :cond_84

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    aget-byte v2, v1, v3

    const/16 v4, 0x30

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_77

    .line 492
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_d9

    .line 493
    :cond_77
    aget-byte v1, v1, v3

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_81

    .line 495
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_d9

    .line 498
    :cond_81
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_d9

    .line 500
    :cond_84
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    if-ne p1, v1, :cond_d9

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 501
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v4, :cond_d9

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mEnableService[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    aget-byte v2, v1, v3

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_cf

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    aget-byte v2, v2, v3

    const/4 v5, 0x1

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_cf

    .line 509
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_d9

    .line 510
    :cond_cf
    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_d7

    .line 512
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->INACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    goto :goto_d9

    .line 515
    :cond_d7
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    .line 518
    :cond_d9
    :goto_d9
    return-object v0
.end method

.method protected handleFileUpdate(I)V
    .registers 4
    .param p1, "efid"    # I

    .line 815
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 816
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleFileUpdate(I)V

    .line 817
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, "isRecordLoadResponse":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLoge(Ljava/lang/String;)V

    .line 315
    return-void

    .line 319
    :cond_2d
    :try_start_2d
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_18a

    .line 394
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_16e

    .line 369
    :sswitch_39
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 370
    .local v1, "ar":Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DBG]EVENT_PHB_READY ar:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 371
    if-eqz v1, :cond_16e

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_16e

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_16e

    .line 372
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 373
    .local v4, "phbReadyState":[I
    const/4 v5, 0x0

    .line 374
    .local v5, "isSimLocked":Z
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    .line 375
    .local v6, "phoneId":I
    const/4 v7, 0x0

    .line 376
    .local v7, "curSimState":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSimStateForSlotIndex(I)I

    move-result v8

    move v7, v8

    .line 378
    if-eq v7, v2, :cond_7a

    const/4 v2, 0x2

    if-ne v7, v2, :cond_78

    goto :goto_7a

    :cond_78
    move v2, v3

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v2, 0x1

    .line 380
    .end local v5    # "isSimLocked":Z
    .local v2, "isSimLocked":Z
    :goto_7b
    aget v3, v4, v3

    invoke-direct {p0, v3, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->updatePhbStatus(IZ)V

    .line 381
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->updateIccFdnStatus()V

    .line 382
    .end local v2    # "isSimLocked":Z
    .end local v4    # "phbReadyState":[I
    .end local v6    # "phoneId":I
    .end local v7    # "curSimState":I
    goto/16 :goto_16e

    .line 386
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_85
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->isPhbReady()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EVENT_DELAYED_SEND_PHB_CHANGE] isReady : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 388
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V

    .line 389
    goto/16 :goto_16e

    .line 354
    :sswitch_a8
    const-string v1, "Event EVENT_GET_EST_DONE Received"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 355
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 356
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_bc

    .line 357
    const-string v2, "EVENT_GET_EST_DONE failed"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogi(Ljava/lang/String;)V

    .line 358
    goto/16 :goto_16e

    .line 360
    :cond_bc
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEnableService[0]: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    aget-byte v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mEnableService.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mEnableService:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->updateIccFdnStatus()V

    .line 365
    goto/16 :goto_16e

    .line 322
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_ea
    const-string v1, "Event EVENT_GET_SST_DONE Received"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 324
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 325
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_fd

    .line 326
    const-string v2, "EVENT_GET_SST_DONE failed"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogi(Ljava/lang/String;)V

    .line 327
    goto :goto_16e

    .line 329
    :cond_fd
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimService[0]: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    aget-byte v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mSimService:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->updateIccFdnStatus()V

    .line 335
    goto :goto_16e

    .line 338
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_12a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 339
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 340
    .local v4, "localTemp":[Ljava/lang/String;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_137

    .line 341
    goto :goto_16e

    .line 344
    :cond_137
    aget-object v3, v4, v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 345
    const/4 v3, 0x3

    aget-object v3, v4, v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 346
    aget-object v2, v4, v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMyMobileNumber:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MIN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 349
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->getPrintableString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V
    :try_end_16e
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_16e} :catch_176
    .catchall {:try_start_2d .. :try_end_16e} :catchall_174

    .line 401
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "localTemp":[Ljava/lang/String;
    :cond_16e
    :goto_16e
    if-eqz v0, :cond_182

    .line 402
    :goto_170
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->onRecordLoaded()V

    goto :goto_182

    .line 401
    :catchall_174
    move-exception v1

    goto :goto_183

    .line 396
    :catch_176
    move-exception v1

    .line 398
    .local v1, "exc":Ljava/lang/RuntimeException;
    :try_start_177
    const-string v2, "RuimRecords"

    const-string v3, "Exception parsing RUIM record"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17e
    .catchall {:try_start_177 .. :try_end_17e} :catchall_174

    .line 401
    nop

    .end local v1    # "exc":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_182

    .line 402
    goto :goto_170

    .line 405
    :cond_182
    :goto_182
    return-void

    .line 401
    :goto_183
    if-eqz v0, :cond_188

    .line 402
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->onRecordLoaded()V

    .line 404
    :cond_188
    throw v1

    nop

    :sswitch_data_18a
    .sparse-switch
        0xa -> :sswitch_12a
        0x11 -> :sswitch_ea
        0x1f5 -> :sswitch_a8
        0x1f7 -> :sswitch_85
        0x1f8 -> :sswitch_39
    .end sparse-switch
.end method

.method protected handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .registers 4
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 762
    if-nez p1, :cond_8

    .line 763
    const-string v0, "handleRefresh received without input"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 764
    return-void

    .line 767
    :cond_8
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 768
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_28

    .line 772
    return-void

    .line 775
    :cond_28
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_50

    .line 793
    :pswitch_2e
    const-string v0, "handleRefresh,callback to super"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 794
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto :goto_4f

    .line 787
    :pswitch_37
    const-string v0, "handleRefresh with REFRESH_INIT_FULL_FILE_UPDATED"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->handleFileUpdate(I)V

    .line 790
    goto :goto_4f

    .line 783
    :pswitch_40
    const-string v0, "handleRefresh with SIM_REFRESH_RESET"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 784
    goto :goto_4f

    .line 777
    :pswitch_46
    const-string v0, "handleRefresh with SIM_REFRESH_INIT"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->handleFileUpdate(I)V

    .line 780
    nop

    .line 797
    :goto_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_46
        :pswitch_40
        :pswitch_2e
        :pswitch_37
    .end packed-switch
.end method

.method public isCdma4GDualModeCard()Z
    .registers 7

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "prop":Ljava/lang/String;
    const/4 v1, 0x0

    .line 555
    .local v1, "values":[Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    const/4 v3, 0x0

    if-ltz v2, :cond_6b

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v5, v4

    if-lt v2, v5, :cond_d

    goto :goto_6b

    .line 559
    :cond_d
    aget-object v2, v4, v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    .line 561
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 563
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdma4GDualModeCard PhoneId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prop value= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    if-eqz v1, :cond_41

    array-length v4, v1

    goto :goto_42

    :cond_41
    move v4, v3

    :goto_42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 565
    if-eqz v1, :cond_6a

    .line 566
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "USIM"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 567
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "CSIM"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v3, 0x1

    goto :goto_69

    :cond_68
    nop

    .line 566
    :goto_69
    return v3

    .line 569
    :cond_6a
    return v3

    .line 556
    :cond_6b
    :goto_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdma4GDualModeCard: invalid PhoneId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 557
    return v3
.end method

.method public isCdmaOnly()Z
    .registers 7

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "prop":Ljava/lang/String;
    const/4 v1, 0x0

    .line 529
    .local v1, "values":[Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    const/4 v3, 0x0

    if-ltz v2, :cond_6b

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v5, v4

    if-lt v2, v5, :cond_d

    goto :goto_6b

    .line 533
    :cond_d
    aget-object v2, v4, v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    .line 535
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 537
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaOnly PhoneId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prop value= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    if-eqz v1, :cond_41

    array-length v4, v1

    goto :goto_42

    :cond_41
    move v4, v3

    :goto_42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 539
    if-eqz v1, :cond_6a

    .line 540
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "USIM"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 541
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "SIM"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    const/4 v3, 0x1

    goto :goto_69

    :cond_68
    nop

    .line 540
    :goto_69
    return v3

    .line 543
    :cond_6a
    return v3

    .line 530
    :cond_6b
    :goto_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaOnly: invalid PhoneId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 531
    return v3
.end method

.method public isPhbReady()Z
    .registers 10

    .line 589
    const-string v0, "false"

    .line 590
    .local v0, "strPhbReady":Ljava/lang/String;
    const-string v1, ""

    .line 591
    .local v1, "strAllSimState":Ljava/lang/String;
    const-string v2, ""

    .line 592
    .local v2, "strCurSimState":Ljava/lang/String;
    const/4 v3, 0x0

    .line 594
    .local v3, "isSimLocked":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[phbReady] Start mPhbReady: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z

    const-string v6, "true"

    const-string v7, "false"

    if-eqz v5, :cond_1b

    move-object v5, v6

    goto :goto_1c

    :cond_1b
    move-object v5, v7

    :goto_1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 596
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v5, 0x0

    if-nez v4, :cond_2c

    .line 597
    return v5

    .line 599
    :cond_2c
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->isUsingGsmPhbReady(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 600
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    const-string v8, "vendor.gsm.sim.ril.phbready"

    invoke-static {v4, v8, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 603
    :cond_3d
    iget v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    const-string v8, "vendor.cdma.sim.ril.phbready"

    invoke-static {v4, v8, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    :goto_45
    const-string v4, "ro.vendor.mtk_ril_mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "c6m_1rild"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 608
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 610
    :cond_58
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    if-eqz v1, :cond_79

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_79

    .line 612
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "values":[Ljava/lang/String;
    iget v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    if-ltz v7, :cond_79

    array-length v8, v4

    if-ge v7, v8, :cond_79

    aget-object v8, v4, v7

    if-eqz v8, :cond_79

    .line 614
    aget-object v2, v4, v7

    .line 617
    .end local v4    # "values":[Ljava/lang/String;
    :cond_79
    const-string v4, "NETWORK_LOCKED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-nez v4, :cond_8d

    .line 618
    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    goto :goto_8d

    :cond_8b
    move v4, v5

    goto :goto_8e

    :cond_8d
    :goto_8d
    move v4, v7

    :goto_8e
    move v3, v4

    .line 620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[phbReady] End strPhbReady: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", strAllSimState: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    if-nez v3, :cond_b4

    move v5, v7

    :cond_b4
    return v5
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RuimRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuimRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RuimRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuimRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .registers 5

    .line 409
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onAllRecordsLoaded()V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllRecordsLoaded, mParentApp.getType() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/16 v2, 0x11

    const/16 v3, 0x6f32

    if-ne v0, v1, :cond_35

    .line 415
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_55

    .line 416
    :cond_35
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_55

    .line 417
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 418
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f75

    const/16 v2, 0x1f5

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 421
    :cond_55
    :goto_55
    return-void
.end method

.method protected onGetImsiDone(Ljava/lang/String;)V
    .registers 5
    .param p1, "imsi"    # Ljava/lang/String;

    .line 749
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_23

    .line 750
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vendor.cdma.icc.operator.mcc"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_23
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRuimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 754
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRuimImsi:Ljava/lang/String;

    .line 755
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 756
    const-string v0, "MtkRuimRecords: mImsiReadyRegistrants.notifyRegistrants"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 758
    :cond_3f
    return-void
.end method

.method protected onLocked()V
    .registers 3

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRecordsRequested:Z

    .line 802
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 804
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mLockedRecordsReqReason:I

    if-eqz v0, :cond_16

    .line 805
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mRecordsToLoad:I

    .line 806
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->onRecordLoaded()V

    .line 807
    return-void

    .line 810
    :cond_16
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onLocked()V

    .line 811
    return-void
.end method

.method protected resetRecords()V
    .registers 1

    .line 286
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 287
    return-void
.end method

.method protected updateIccFdnStatus()V
    .registers 3

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccFdnStatus mParentAPP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  getSIMServiceStatus(Phone.IccService.FDN)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 577
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  IccServiceStatus.ACTIVATE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_41

    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;->FDN:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;

    .line 581
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->getSIMServiceStatus(Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccService;)Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;->ACTIVATED:Lcom/mediatek/internal/telephony/uicc/IccServiceInfo$IccServiceStatus;

    if-ne v0, v1, :cond_41

    .line 583
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 585
    :cond_41
    return-void
.end method

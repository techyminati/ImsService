.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
.super Ljava/lang/Object;
.source "MtkDcHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_VALUE_DSDA:I = 0x1a4

.field private static final DRDSDA_STATUS_NOT_SUPPORT:I = 0x2

.field private static final DSDA_STATUS_DIVISOR:I = 0x64

.field private static final EVENT_CALL_ADDITIONAL_INFO:I = 0x46

.field private static final EVENT_DSDA_STATE_CHANGED:I = 0x32

.field private static final EVENT_ID_INTVL:I = 0xa

.field private static final EVENT_NO_CS_CALL_AFTER_SRVCC:I = 0x28

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0xa

.field private static final EVENT_SUBSCRIPTION_CHANGED:I = 0x0

.field private static final EVENT_VOICE_CALL_ENDED:I = 0x1e

.field private static final EVENT_VOICE_CALL_OFFHOOK:I = 0x3c

.field private static final EVENT_VOICE_CALL_STARTED:I = 0x14

.field private static final INVALID_ICCID:Ljava/lang/String; = "N/A"

.field private static final LOG_TAG:Ljava/lang/String; = "DcHelper"

.field private static final MAX_COUNT_PHONE_INCALL:I = 0x2

.field private static final MT_CALL_MISSED:I = 0x2

.field private static final MT_CALL_REJECTED:I = 0x1

.field private static final MT_CALL_RQ:I = 0x4

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;

.field private static final STATE_DSDA_NOT_POSSIBLE:I = 0x4

.field private static final STATE_DSDA_ONGOING:I = 0x2

.field private static final STATE_DSDA_POSSIBLE:I = 0x3

.field private static final VDBG:Z

.field private static final mOperatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field private static sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;


# instance fields
.field protected final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallingPhoneIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDsdaMode:I

.field private mGwsdDualSimStatusArray:[Z

.field private mIsPhoneOffhook:Z

.field protected mPhoneNum:I

.field protected mPhones:[Lcom/android/internal/telephony/Phone;

.field private mRspHandler:Landroid/os/Handler;

.field private mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 83
    nop

    .line 82
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->VDBG:Z

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 134
    const-string v0, "vendor.gsm.sim.ril.testsim"

    const-string v1, "vendor.gsm.sim.ril.testsim.2"

    const-string v2, "vendor.gsm.sim.ril.testsim.3"

    const-string v3, "vendor.gsm.sim.ril.testsim.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;

    .line 141
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mOperatorMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;

    .line 130
    const/16 v0, 0x1a4

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I

    .line 150
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsPhoneOffhook:Z

    .line 173
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    .line 200
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 202
    array-length v1, p2

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    .line 203
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v1, v2, :cond_3a

    .line 205
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    aput-boolean v0, v2, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 207
    .end local v1    # "i":I
    :cond_3a
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->registerEvents()V

    .line 208
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsPhoneOffhook:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 79
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    .param p1, "x1"    # I

    .line 79
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Lcom/android/internal/telephony/Call$SrvccState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Lcom/android/internal/telephony/Call$SrvccState;)Lcom/android/internal/telephony/Call$SrvccState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    .param p1, "x1"    # Lcom/android/internal/telephony/Call$SrvccState;

    .line 79
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 79
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->onVoiceCallStarted()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 79
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->onVoiceCallEnded()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 79
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isInSRVCC()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 79
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isInCallStatusInternal()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    .registers 2

    .line 357
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    if-eqz v0, :cond_5

    .line 360
    return-object v0

    .line 358
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not be called before makesMtkDcHelper"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPreferredPhoneId()I
    .registers 1

    .line 847
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 848
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    .line 850
    .local v0, "preferredDataPhoneId":I
    :goto_10
    return v0
.end method

.method public static hasVsimApn([Ljava/lang/String;)Z
    .registers 6
    .param p0, "apnTypes"    # [Ljava/lang/String;

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "hasVsimApn":Z
    const/4 v1, 0x0

    if-nez p0, :cond_a

    .line 730
    const-string v2, "hasVsimApn: apnTypes is null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->loge(Ljava/lang/String;)V

    .line 731
    return v1

    .line 733
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_e

    .line 734
    return v1

    .line 736
    :cond_e
    array-length v2, p0

    :goto_f
    if-ge v1, v2, :cond_20

    aget-object v3, p0, v1

    .line 737
    .local v3, "type":Ljava/lang/String;
    const-string v4, "vsim"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 738
    const/4 v0, 0x1

    .line 739
    goto :goto_20

    .line 736
    .end local v3    # "type":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 742
    :cond_20
    :goto_20
    return v0
.end method

.method public static isCdma3GCard(I)Z
    .registers 4
    .param p0, "phoneId"    # I

    .line 792
    const/4 v0, 0x0

    if-ltz p0, :cond_20

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt p0, v1, :cond_e

    goto :goto_20

    .line 798
    :cond_e
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v1

    .line 800
    .local v1, "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-eq v1, v2, :cond_1e

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-ne v1, v2, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    return v0

    .line 793
    .end local v1    # "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    :cond_20
    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma3GCard invalid phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 794
    return v0
.end method

.method public static isCdma3GDualModeCard(I)Z
    .registers 4
    .param p0, "phoneId"    # I

    .line 779
    const/4 v0, 0x0

    if-ltz p0, :cond_20

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt p0, v1, :cond_e

    goto :goto_20

    .line 785
    :cond_e
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v1

    .line 787
    .local v1, "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-eq v1, v2, :cond_1e

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-ne v1, v2, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    return v0

    .line 780
    .end local v1    # "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    :cond_20
    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma3GDualModeCard invalid phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 781
    return v0
.end method

.method public static isCdma4GDualModeCard(I)Z
    .registers 4
    .param p0, "phoneId"    # I

    .line 766
    const/4 v0, 0x0

    if-ltz p0, :cond_20

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt p0, v1, :cond_e

    goto :goto_20

    .line 772
    :cond_e
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v1

    .line 774
    .local v1, "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-eq v1, v2, :cond_1e

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-ne v1, v2, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    return v0

    .line 767
    .end local v1    # "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    :cond_20
    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma4GDualModeCard invalid phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 768
    return v0
.end method

.method public static isDefaultDataPhone(Lcom/android/internal/telephony/Phone;)Z
    .registers 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 870
    .local v0, "phoneId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 869
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 871
    .local v1, "defaultDataPhoneId":I
    if-ne v0, v1, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2
.end method

.method public static isImsOrEmergencyApn([Ljava/lang/String;)Z
    .registers 6
    .param p0, "apnTypes"    # [Ljava/lang/String;

    .line 691
    const/4 v0, 0x1

    .line 692
    .local v0, "isImsApn":Z
    const/4 v1, 0x0

    if-nez p0, :cond_a

    .line 693
    const-string v2, "isImsOrEmergencyApn: apnTypes is null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->loge(Ljava/lang/String;)V

    .line 694
    return v1

    .line 696
    :cond_a
    array-length v2, p0

    if-nez v2, :cond_e

    .line 697
    return v1

    .line 699
    :cond_e
    array-length v2, p0

    :goto_f
    if-ge v1, v2, :cond_28

    aget-object v3, p0, v1

    .line 700
    .local v3, "type":Ljava/lang/String;
    const-string v4, "ims"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 701
    const-string v4, "emergency"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 702
    const/4 v0, 0x0

    .line 703
    goto :goto_28

    .line 699
    .end local v3    # "type":Ljava/lang/String;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 706
    :cond_28
    :goto_28
    return v0
.end method

.method private isInCallStatusInternal()Z
    .registers 2

    .line 894
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isInSRVCC()Z
    .registers 3

    .line 762
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isPreferredDataPhone(Lcom/android/internal/telephony/Phone;)Z
    .registers 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 854
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 855
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    .line 856
    .local v0, "preferredDataPhoneId":I
    :goto_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 858
    .local v1, "curPhoneId":I
    if-eq v0, v1, :cond_34

    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current phone is not preferred phone: curPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", preferredDataPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 862
    const/4 v2, 0x0

    return v2

    .line 864
    :cond_34
    const/4 v2, 0x1

    return v2
.end method

.method protected static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 905
    const-string v0, "DcHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 911
    const-string v0, "DcHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method protected static logi(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 917
    const-string v0, "DcHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-void
.end method

.method protected static logv(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 899
    const-string v0, "DcHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    return-void
.end method

.method public static makeMtkDcHelper(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 241
    if-eqz p0, :cond_41

    if-eqz p1, :cond_41

    .line 245
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    if-nez v0, :cond_25

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeMtkDcHelper: phones.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 247
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    goto :goto_28

    .line 249
    :cond_25
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->updatePhones([Lcom/android/internal/telephony/Phone;)V

    .line 252
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makesMtkDcHelper: X sMtkDcHelper ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->sMtkDcHelper:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    return-object v0

    .line 242
    :cond_41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "param is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onVoiceCallEnded()V
    .registers 4

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v0, v1, :cond_2f

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoiceCallEnded: mPhone[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 480
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onVoiceCallEndedEx()V

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 482
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method private onVoiceCallStarted()V
    .registers 4

    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v0, v1, :cond_2f

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoiceCallStarted: mPhone[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 472
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onVoiceCallStartedEx()V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method private registerEvents()V
    .registers 6

    .line 377
    const-string v0, "registerEvents"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v0, v1, :cond_59

    .line 379
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0xa

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 383
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x14

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 385
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 389
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x46

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 392
    if-nez v0, :cond_56

    .line 393
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, v0, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDsdaStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 378
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 398
    .end local v0    # "i":I
    :cond_59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 400
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    const-string v1, "registered phone change event."

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private shouldAutoAttachForCall(I)Z
    .registers 7
    .param p1, "phoneId"    # I

    .line 816
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 817
    .local v0, "serviceState":Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v1

    .line 818
    .local v1, "phoneSwitcher":Lcom/android/internal/telephony/PhoneSwitcher;
    if-eqz v0, :cond_1d

    .line 819
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v2

    if-eq p1, v2, :cond_1d

    .line 820
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 821
    .local v2, "mAutoAttach":Z
    :goto_1e
    if-eqz v0, :cond_48

    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldAutoAttachForCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", getVoiceNetworkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 822
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 825
    :cond_48
    return v2
.end method

.method private unregisterEvents()V
    .registers 4

    .line 434
    const-string v0, "unregisterEvents"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v0, v1, :cond_41

    .line 437
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 438
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 439
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 440
    if-nez v0, :cond_3e

    .line 441
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForDsdaStateChanged(Landroid/os/Handler;)V

    .line 436
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 444
    .end local v0    # "i":I
    :cond_41
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 446
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 211
    const-string v0, "MtkDcHelper.dispose"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->unregisterEvents()V

    .line 213
    return-void
.end method

.method public getDsdaMode()I
    .registers 4

    .line 830
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    return v0

    .line 832
    :cond_6
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I

    .line 833
    .local v1, "dsdaState":I
    const/16 v2, 0x64

    if-le v0, v2, :cond_e

    .line 834
    div-int/lit8 v1, v0, 0x64

    .line 837
    :cond_e
    const/4 v0, 0x2

    if-eq v1, v0, :cond_17

    const/4 v0, 0x3

    if-ne v1, v0, :cond_15

    goto :goto_17

    .line 840
    :cond_15
    const/4 v0, 0x0

    .end local v1    # "dsdaState":I
    .local v0, "dsdaState":I
    goto :goto_18

    .line 838
    .end local v0    # "dsdaState":I
    .restart local v1    # "dsdaState":I
    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 843
    .end local v1    # "dsdaState":I
    .restart local v0    # "dsdaState":I
    :goto_18
    return v0
.end method

.method public getNonRadioCallingPhone(Ljava/util/ArrayList;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 485
    .local p1, "callingPhoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, -0x1

    .line 486
    .local v0, "nonRadioCallId":I
    if-nez p1, :cond_9

    .line 487
    const-string v1, "getNonRadioCallingPhone: no calling phone!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 488
    return v0

    .line 502
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14f

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getDsdaMode()I

    move-result v1

    if-nez v1, :cond_14f

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Global CallingPhoneIdList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, " "

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 506
    .local v3, "cid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .end local v3    # "cid":I
    goto :goto_26

    .line 508
    :cond_4b
    const/4 v2, -0x1

    .line 509
    .local v2, "rfCallId":I
    const-string v3, "Local CallingPhoneIdList:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 511
    .local v5, "callId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v6, v5

    if-nez v7, :cond_83

    goto :goto_55

    .line 513
    :cond_83
    const/4 v7, 0x0

    .line 514
    .local v7, "isRfCall":Z
    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v6

    .line 515
    .local v6, "isRinging":Z
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 516
    .local v8, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-nez v6, :cond_aa

    if-eqz v8, :cond_aa

    .line 517
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v6

    .line 519
    :cond_aa
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ringing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const/4 v9, 0x0

    if-nez v6, :cond_10b

    .line 521
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    const/4 v12, 0x1

    if-ne v10, v11, :cond_e8

    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v10, v10, v5

    .line 522
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_e6

    goto :goto_e8

    :cond_e6
    move v10, v9

    goto :goto_e9

    :cond_e8
    :goto_e8
    move v10, v12

    :goto_e9
    move v7, v10

    .line 523
    if-nez v7, :cond_10b

    if-eqz v8, :cond_10b

    .line 524
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_109

    .line 525
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_107

    goto :goto_109

    :cond_107
    move v12, v9

    goto :goto_10a

    :cond_109
    :goto_109
    nop

    :goto_10a
    move v7, v12

    .line 528
    :cond_10b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rfcall="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    if-eqz v7, :cond_124

    .line 530
    move v2, v5

    .line 531
    goto/16 :goto_55

    .line 533
    :cond_124
    if-eqz v6, :cond_139

    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;

    .line 534
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_137

    const/4 v9, -0x1

    if-eq v2, v9, :cond_139

    .line 535
    :cond_137
    move v0, v5

    .line 536
    goto :goto_13b

    .line 538
    .end local v5    # "callId":I
    .end local v6    # "isRinging":Z
    .end local v7    # "isRfCall":Z
    .end local v8    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_139
    goto/16 :goto_55

    .line 539
    :cond_13b
    :goto_13b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNonRadioCallingPhone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 542
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "rfCallId":I
    :cond_14f
    return v0
.end method

.method public isAllCallingStateIdle()Z
    .registers 6

    .line 614
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneConstants$State;

    .line 615
    .local v0, "state":[Lcom/android/internal/telephony/PhoneConstants$State;
    const/4 v1, 0x0

    .line 616
    .local v1, "allCallingState":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v2, v3, :cond_23

    .line 617
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    aput-object v3, v0, v2

    .line 619
    aget-object v3, v0, v2

    if-eqz v3, :cond_22

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_22

    .line 620
    const/4 v1, 0x1

    .line 616
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 622
    :cond_22
    const/4 v1, 0x0

    .line 627
    .end local v2    # "i":I
    :cond_23
    if-nez v1, :cond_57

    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->VDBG:Z

    if-eqz v2, :cond_57

    .line 629
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2a
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v2, v3, :cond_57

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllCallingStateIdle: state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " allCallingState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 634
    .end local v2    # "i":I
    :cond_57
    return v1
.end method

.method public isDataAllowedForConcurrent(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 716
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 717
    const-string v0, "isDataAllowedForConcurrent: invalid calling phone id"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 718
    return v1

    .line 720
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isAllCallingStateIdle()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataSupportConcurrent(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 721
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_2b

    .line 724
    :cond_2a
    return v1

    .line 722
    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    return v0
.end method

.method public isDataSupportConcurrent(I)Z
    .registers 14
    .param p1, "phoneId"    # I

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, "cpl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v1, v2, :cond_20

    .line 548
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_1d

    .line 549
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 553
    .end local v1    # "i":I
    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 554
    .local v1, "callingPhoneSize":I
    const/4 v2, 0x1

    if-nez v1, :cond_2d

    .line 555
    const-string v3, "isDataSupportConcurrent: no calling phone!"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 556
    return v2

    .line 559
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getNonRadioCallingPhone(Ljava/util/ArrayList;)I

    move-result v3

    .line 560
    .local v3, "nonRadioCallingPhone":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataSupportConcurrent: nonRadioCallingPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 561
    const/4 v4, -0x1

    if-eq v3, v4, :cond_57

    .line 562
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 564
    if-nez v1, :cond_57

    return v2

    .line 569
    :cond_57
    const/4 v4, 0x0

    if-ne v1, v2, :cond_f3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p1, v5, :cond_f3

    .line 570
    const/4 v5, 0x0

    .line 571
    .local v5, "isConcurrent":Z
    const/4 v6, 0x0

    .line 572
    .local v6, "inSrvcc":Z
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v7

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 573
    .local v7, "ct":Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 575
    .local v8, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-nez v8, :cond_7e

    .line 576
    move v9, v4

    goto :goto_82

    :cond_7e
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v9

    .line 578
    .local v9, "inPsEcc":Z
    :goto_82
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 579
    .local v10, "csCallState":Lcom/android/internal/telephony/PhoneConstants$State;
    if-eqz v7, :cond_93

    .line 580
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getHandoverConnectionSize()I

    move-result v11

    if-eqz v11, :cond_8d

    goto :goto_8e

    :cond_8d
    move v2, v4

    :goto_8e
    move v6, v2

    .line 581
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    .line 584
    :cond_93
    if-nez v9, :cond_9e

    if-nez v6, :cond_9e

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v10, v2, :cond_9c

    goto :goto_9e

    .line 593
    :cond_9c
    const/4 v2, 0x1

    .end local v5    # "isConcurrent":Z
    .local v2, "isConcurrent":Z
    goto :goto_b2

    .line 586
    .end local v2    # "isConcurrent":Z
    .restart local v5    # "isConcurrent":Z
    :cond_9e
    :goto_9e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    .line 587
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    .line 588
    .end local v5    # "isConcurrent":Z
    .restart local v2    # "isConcurrent":Z
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->shouldAutoAttachForCall(I)Z

    move-result v5

    .line 589
    .local v5, "mShouldAutoAttach":Z
    if-eqz v5, :cond_b1

    .line 590
    const/4 v2, 0x1

    .line 592
    .end local v5    # "mShouldAutoAttach":Z
    :cond_b1
    nop

    .line 596
    :goto_b2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isDataSupportConcurrent: (voice/data on the same phone) isConcurrent = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", phoneId = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", callingPhoneId = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", inPsEcc = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", inSrvcc = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", csCallState = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 600
    return v2

    .line 603
    .end local v2    # "isConcurrent":Z
    .end local v6    # "inSrvcc":Z
    .end local v7    # "ct":Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
    .end local v8    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v9    # "inPsEcc":Z
    .end local v10    # "csCallState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_f3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getDsdaMode()I

    move-result v5

    if-ne v5, v2, :cond_ff

    .line 604
    const-string v4, "DSDA mode, support concurrent"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 605
    return v2

    .line 609
    :cond_ff
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDsdalikeAvailable(I)Z

    move-result v2

    return v2
.end method

.method public isDsdalikeAvailable(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 875
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    .line 876
    .local v0, "tmEx":Lcom/mediatek/telephony/MtkTelephonyManagerEx;
    const/4 v1, 0x0

    .line 877
    .local v1, "isDsdalikeAvailable":Z
    if-eqz v0, :cond_43

    .line 878
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    aget-boolean v2, v2, p1

    .line 879
    invoke-virtual {v0, v2}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->isDataAvailableForGwsdDualSim(Z)Z

    move-result v1

    .line 880
    if-eqz v1, :cond_43

    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDsdalikeAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mGwsdDualSimStatusArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 885
    const/4 v2, 0x1

    return v2

    .line 889
    :cond_43
    const-string v2, "isDsdalikeAvailable return false."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 890
    const/4 v2, 0x0

    return v2
.end method

.method public isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z
    .registers 7
    .param p1, "opt"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;
    .param p2, "phoneId"    # I

    .line 366
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "mccMnc":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mOperatorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 369
    .local v1, "bMatched":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOperatorMccMnc: mccmnc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", bMatched="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 372
    return v1
.end method

.method public isSimInserted(I)Z
    .registers 5
    .param p1, "phoneId"    # I

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSimInserted:phoneId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 749
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getIccid()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "iccid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "N/A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    return v1
.end method

.method public isSimMeLockAllowed(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 805
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 806
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getSimLockMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 807
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getPsAllowedByPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 808
    const/4 v0, 0x0

    return v0

    .line 812
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public isTestIccCard(I)Z
    .registers 5
    .param p1, "phoneId"    # I

    .line 754
    const/4 v0, 0x0

    .line 756
    .local v0, "testCard":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->VDBG:Z

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTestIccCard: phoneId id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", iccType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 758
    :cond_2b
    if-eqz v0, :cond_37

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    return v1
.end method

.method public isWifiCallingEnabled()Z
    .registers 6

    .line 638
    const/4 v0, 0x0

    .line 640
    .local v0, "isWifiCallingEnabled":Z
    nop

    .line 641
    const-string v1, "phoneEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 640
    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 642
    .local v1, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_51

    .line 644
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    :try_start_f
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v2, v3, :cond_4c

    .line 645
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 646
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    .line 647
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 646
    invoke-interface {v1, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isWifiCallingEnabled(I)Z

    move-result v3

    move v0, v3

    .line 648
    if-eqz v0, :cond_49

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiCallingEnabled phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_48} :catch_4d

    .line 650
    goto :goto_4c

    .line 644
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 656
    .end local v2    # "i":I
    :cond_4c
    :goto_4c
    goto :goto_51

    .line 654
    :catch_4d
    move-exception v2

    .line 655
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 659
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    return v0
.end method

.method public isWifiCallingEnabled(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 667
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid phone id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->loge(Ljava/lang/String;)V

    .line 669
    return v1

    .line 672
    :cond_1c
    nop

    .line 673
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 672
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    .line 674
    .local v0, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v0, :cond_2f

    .line 675
    const-string v2, "get phoneEx service failed"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->loge(Ljava/lang/String;)V

    .line 676
    return v1

    .line 679
    :cond_2f
    const/4 v1, 0x0

    .line 681
    .local v1, "isWifiCallingEnabled":Z
    :try_start_30
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isWifiCallingEnabled(I)Z

    move-result v2

    move v1, v2

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWifiCallingEnabled phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_59} :catch_5a

    .line 685
    goto :goto_5e

    .line 683
    :catch_5a
    move-exception v2

    .line 684
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 687
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_5e
    return v1
.end method

.method public registerImsEvents(I)V
    .registers 7
    .param p1, "phoneId"    # I

    .line 408
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 409
    const-string v0, "registerImsEvents, invalid phoneId"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 410
    return-void

    .line 413
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerImsEvents, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 419
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_47

    .line 420
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 421
    .local v1, "imsCt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, 0x14

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 423
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 425
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, 0x28

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->registerForCallsDisconnectedDuringSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 427
    .end local v1    # "imsCt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    goto :goto_4c

    .line 428
    :cond_47
    const-string v1, "Not register IMS phone calling state yet."

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 430
    :goto_4c
    return-void
.end method

.method public unregisterImsEvents(I)V
    .registers 5
    .param p1, "phoneId"    # I

    .line 450
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 451
    const-string v0, "unregisterImsEvents, invalid phoneId"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 452
    return-void

    .line 456
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterImsEvents, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 458
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_40

    .line 459
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 460
    .local v1, "imsCt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 461
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 462
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->unregisterForCallsDisconnectedDuringSrvcc(Landroid/os/Handler;)V

    .line 463
    .end local v1    # "imsCt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    goto :goto_45

    .line 464
    :cond_40
    const-string v1, "Not unregister IMS phone calling state yet."

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 466
    :goto_45
    return-void
.end method

.method public updatePhones([Lcom/android/internal/telephony/Phone;)V
    .registers 8
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhones: prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 217
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    array-length v1, p1

    if-le v0, v1, :cond_25

    return-void

    .line 219
    :cond_25
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    .line 221
    .local v0, "prevPhoneNum":I
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 222
    array-length v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    .line 223
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v1, v2, :cond_3d

    .line 225
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 228
    .end local v1    # "i":I
    :cond_3d
    move v1, v0

    .restart local v1    # "i":I
    :goto_3e
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v1, v2, :cond_80

    .line 229
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0xa

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 231
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x14

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x46

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 238
    .end local v1    # "i":I
    :cond_80
    return-void
.end method

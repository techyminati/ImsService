.class public Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;
.super Landroid/os/Handler;
.source "CpaDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;,
        Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;
    }
.end annotation


# static fields
.field public static final ABORT:Ljava/lang/String; = "ABORT"

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

.field public static final CPA_DCT_STATE_APN_UPDATE:I = 0x1

.field public static final CPA_DCT_STATE_CONNECTED:I = 0x5

.field public static final CPA_DCT_STATE_CONNECTING:I = 0x4

.field public static final CPA_DCT_STATE_DISCONNECTED:I = 0x3

.field public static final CPA_DCT_STATE_DISCONNECTING:I = 0x2

.field public static final CPA_DCT_STATE_LOST_NW:I = 0x6

.field public static final CPA_DCT_STATE_NONE:I = 0x0

.field public static final CPA_DCT_STATE_RETRYING:I = 0x7

.field public static final CPA_DC_ALREADY_ACTIVE:I = 0x0

.field public static final CPA_DC_DATA_SOCKET_DISABLED:I = 0x5

.field public static final CPA_DC_REQUEST_FAILED:I = 0x3

.field public static final CPA_DC_REQUEST_NOT_AVAILABLE:I = 0x4

.field public static final CPA_DC_REQUEST_STARTED:I = 0x1

.field public static final CPA_DC_TYPE_NOT_AVAILABLE:I = 0x2

.field private static final CPA_NAVI_APN_ID:I = 0x63

.field public static final CPA_RTN_AUTHENTICATION_ERROR:I = -0x3

.field public static final CPA_RTN_PARAMTER_ERROR:I = -0x1

.field public static final CPA_RTN_RADIO_NOT_AVAILABLE:I = -0x2

.field public static final CPA_RTN_SUCCESS:I = 0x0

.field public static final CPA_RTN_UNKNOWN_ERROR:I = -0x4

.field private static final DBG:Z = true

.field public static final DEFAULT_MODE:Ljava/lang/String; = "DEFAULT"

.field public static final EVENT_ALL_DC_DISCONNECTED:I = 0x2

.field public static final EVENT_ALL_DC_DISCONNECTING:I = 0x1

.field public static final EVENT_APN_UPDATE:I = 0x0

.field public static final EVENT_CPA_DC_CONNECTED:I = 0x4

.field public static final EVENT_CPA_DC_CONNECTING:I = 0x3

.field public static final EVENT_CPA_DC_LOST_CONNECTION:I = 0x5

.field public static final EVENT_CPA_DC_PROTOCOL_ERRORS:I = 0x7

.field public static final EVENT_CPA_DC_RETRY:I = 0x6

.field public static final EXTRA_CONNECTIVITY_STATUS:Ljava/lang/String; = "connStatus"

.field public static final EXTRA_ERRNO:Ljava/lang/String; = "errno"

.field private static final LOG_TAG:Ljava/lang/String; = "CpaDct"

.field public static final MTK_CPA_SUPPORT:Z = true

.field public static final NAVI_MODE:Ljava/lang/String; = "NAVI"

.field public static final NONE:Ljava/lang/String; = "NONE"

.field public static final REQ_TO_DEFAULT:I = 0x1

.field public static final REQ_TO_NAVI:I = 0x0

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x4

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final VDBG:Z

.field private static sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

.field public mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

.field public mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

.field private mCpaDctState:I

.field private mCurrentCpaMode:Ljava/lang/String;

.field private mCurrentPhoneId:I

.field private mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPhoneId:I

.field private mRequestCpaMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 74
    nop

    .line 73
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->VDBG:Z

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 189
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentPhoneId:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    .line 84
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 86
    const-string v1, "DEFAULT"

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    .line 87
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 91
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    .line 104
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    .line 190
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 192
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhoneId:I

    .line 193
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 195
    return-void
.end method

.method private converEventIdToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "eventId"    # I

    .line 779
    packed-switch p1, :pswitch_data_2a

    .line 795
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown eventId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 793
    :pswitch_15
    const-string v0, "EVENT_CPA_DC_PROTOCOL_ERRORS"

    return-object v0

    .line 791
    :pswitch_18
    const-string v0, "EVENT_CPA_DC_LOST_CONNECTION"

    return-object v0

    .line 789
    :pswitch_1b
    const-string v0, "EVENT_CPA_DC_CONNECTED"

    return-object v0

    .line 787
    :pswitch_1e
    const-string v0, "EVENT_CPA_DC_CONNECTING"

    return-object v0

    .line 785
    :pswitch_21
    const-string v0, "EVENT_ALL_DC_DISCONNECTED"

    return-object v0

    .line 783
    :pswitch_24
    const-string v0, "EVENT_ALL_DC_DISCONNECTING"

    return-object v0

    .line 781
    :pswitch_27
    const-string v0, "EVENT_APN_UPDATE"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_3
        :pswitch_15
    .end packed-switch
.end method

.method private converToCpaDcState(Lcom/android/internal/telephony/DctConstants$State;)I
    .registers 5
    .param p1, "state"    # Lcom/android/internal/telephony/DctConstants$State;

    .line 734
    const/4 v0, 0x4

    .line 736
    .local v0, "cpaDcState":I
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    goto :goto_15

    .line 749
    :pswitch_d
    const/4 v0, 0x3

    .line 750
    goto :goto_15

    .line 746
    :pswitch_f
    const/4 v0, 0x2

    .line 747
    goto :goto_15

    .line 743
    :pswitch_11
    const/4 v0, 0x1

    .line 744
    goto :goto_15

    .line 739
    :pswitch_13
    const/4 v0, 0x4

    .line 740
    nop

    .line 755
    :goto_15
    return v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method private converToCpaReturnCode(I)I
    .registers 3
    .param p1, "cause"    # I

    .line 759
    const/4 v0, -0x4

    .line 761
    .local v0, "errorCode":I
    sparse-switch p1, :sswitch_data_c

    goto :goto_a

    .line 766
    :sswitch_5
    const/4 v0, -0x3

    .line 767
    goto :goto_a

    .line 763
    :sswitch_7
    const/4 v0, 0x0

    .line 764
    goto :goto_a

    .line 770
    :sswitch_9
    const/4 v0, -0x2

    .line 775
    :goto_a
    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        -0x5 -> :sswitch_9
        0x0 -> :sswitch_7
        0x1d -> :sswitch_5
        0x10001 -> :sswitch_9
    .end sparse-switch
.end method

.method private createCpaApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lmediatek/telephony/data/MtkApnSetting;
    .registers 43
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "authType"    # I
    .param p5, "proxyHost"    # Ljava/lang/String;
    .param p6, "proxyPort"    # Ljava/lang/String;

    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, "apnTypesBitmask":I
    const-string v2, "default"

    const-string v3, "mms"

    const-string v4, "supl"

    const-string v5, "dun"

    const-string v6, "hipri"

    const-string v7, "fota"

    const-string v8, "cbs"

    const-string v9, "ia"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 591
    .local v2, "types":[Ljava/lang/String;
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v34

    .line 592
    .local v34, "operator":Ljava/lang/String;
    const/4 v4, 0x0

    .line 595
    .local v4, "proxyPortNum":I
    :try_start_1f
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_23} :catch_25

    move v4, v0

    .line 598
    goto :goto_2e

    .line 596
    :catch_25
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 597
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "[CpaDct]proxyPort is a invalid format"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    move v0, v4

    .line 600
    .end local v4    # "proxyPortNum":I
    .local v0, "proxyPortNum":I
    :goto_2e
    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1

    .line 601
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CpaDct]createCpaApn Cpa apnTypesBitmask="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 603
    new-instance v35, Lmediatek/telephony/data/MtkApnSetting;

    const/16 v5, 0x63

    .line 607
    const-string v4, ""

    if-eqz p1, :cond_57

    move-object/from16 v8, p1

    goto :goto_58

    :cond_57
    move-object v8, v4

    .line 608
    :goto_58
    if-eqz p5, :cond_5d

    move-object/from16 v9, p5

    goto :goto_5e

    :cond_5d
    move-object v9, v4

    :goto_5e
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 612
    if-eqz p2, :cond_65

    move-object/from16 v14, p2

    goto :goto_66

    :cond_65
    move-object v14, v4

    .line 613
    :goto_66
    if-eqz p3, :cond_6b

    move-object/from16 v15, p3

    goto :goto_6c

    :cond_6b
    move-object v15, v4

    :goto_6c
    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x1

    const v21, 0x5ffff

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v7, "CPA"

    const-string v12, ""

    const-string v29, ""

    move-object/from16 v4, v35

    move-object/from16 v6, v34

    move v10, v0

    move/from16 v16, p4

    move/from16 v17, v1

    invoke-direct/range {v4 .. v33}, Lmediatek/telephony/data/MtkApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;IIII)V

    .line 603
    return-object v35
.end method

.method private createCpaConnection(Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;Landroid/telephony/data/ApnSetting;)V
    .registers 4
    .param p1, "mode"    # Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;
    .param p2, "apn"    # Landroid/telephony/data/ApnSetting;

    .line 628
    const-string v0, "[CpaDct]create mCpaConnInfo"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 630
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;-><init>(Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    .line 631
    iput-object p1, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaConnType:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    .line 632
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    iput-object p2, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    .line 633
    return-void
.end method

.method public static getCpaDcTrackerInstance()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;
    .registers 2

    .line 568
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    if-eqz v0, :cond_5

    .line 571
    return-object v0

    .line 569
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[CpaDct]Should not be called before makesCpaDcTracker"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 807
    const-string v0, "CpaDct"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 813
    const-string v0, "CpaDct"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void
.end method

.method protected static logi(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 819
    const-string v0, "CpaDct"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method

.method protected static logv(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 801
    const-string v0, "CpaDct"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method

.method public static makeCpaDcTracker(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 204
    if-eqz p0, :cond_28

    if-eqz p1, :cond_28

    .line 208
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    if-nez v0, :cond_f

    .line 209
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 212
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]makeCpaDcTracker: X sCpaDcTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    return-object v0

    .line 205
    :cond_28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "param is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V
    .registers 4
    .param p1, "state"    # Lcom/android/internal/telephony/DctConstants$State;

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]setCpaConnectionStatus() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 709
    :cond_28
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, p1, :cond_4c

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]old mCpaConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new mCpaConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 712
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    .line 715
    :cond_4c
    return-void
.end method


# virtual methods
.method public CpaChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 24
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "authType"    # I
    .param p6, "dns1"    # Ljava/lang/String;
    .param p7, "dns2"    # Ljava/lang/String;
    .param p8, "proxyHost"    # Ljava/lang/String;
    .param p9, "proxyPort"    # Ljava/lang/String;

    .line 421
    move-object v7, p0

    move-object v8, p1

    const/4 v9, 0x3

    .line 422
    .local v9, "retValue":I
    const/4 v10, 0x0

    .line 424
    .local v10, "newCpaApnSetting":Lmediatek/telephony/data/MtkApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]CpaChanged, mCurrentCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRequestCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCpaDctState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 434
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DEFAULT"

    const/4 v2, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_8c

    .line 435
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 436
    const-string v0, "[CpaDct]switch procedure is on-gonig"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 437
    const/4 v9, 0x1

    goto/16 :goto_17f

    .line 438
    :cond_5c
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 439
    const-string v0, "[CpaDct]interrupt the switching procedure!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 442
    iput-object v8, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 444
    invoke-virtual {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 445
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 446
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 447
    const/4 v9, 0x1

    .line 448
    .end local v0    # "msg":Landroid/os/Message;
    goto/16 :goto_17f

    .line 450
    :cond_85
    const-string v0, "[CpaDct]Unhandled with this case!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_17f

    .line 453
    :cond_8c
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 454
    const-string v0, "[CpaDct]cpa mode is not changed"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 455
    const/4 v9, 0x0

    goto/16 :goto_17f

    .line 458
    :cond_9c
    iget v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    sparse-switch v0, :sswitch_data_180

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]Unhandled with mCpaDctState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_17f

    .line 463
    :sswitch_b9
    iput-object v8, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 466
    const-string v0, "NAVI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, " to "

    const-string v4, "[CpaDct]Cpa changed from "

    if-eqz v0, :cond_13d

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 470
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUserDataEnabled()Z

    move-result v0

    const/4 v12, 0x2

    if-nez v0, :cond_f2

    .line 471
    const-string v0, "[CpaDct] mobile data off"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 472
    return v12

    .line 476
    :cond_f2
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v13

    .line 477
    .local v13, "serviceState":I
    if-eq v13, v2, :cond_136

    if-ne v13, v12, :cond_101

    goto :goto_136

    .line 484
    :cond_101
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->createCpaApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lmediatek/telephony/data/MtkApnSetting;

    move-result-object v10

    .line 487
    if-nez v10, :cond_11a

    .line 488
    const-string v0, "[CpaDct]Cpa APN configuration error"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 489
    return v12

    .line 493
    :cond_11a
    iget-object v0, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    if-eqz v0, :cond_124

    .line 494
    invoke-virtual {v0, v10}, Lmediatek/telephony/data/MtkApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12b

    .line 495
    :cond_124
    const-string v0, "[CpaDct]update new Cpa APN settings!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 496
    iput-object v10, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    .line 500
    :cond_12b
    invoke-virtual {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 501
    .restart local v0    # "msg":Landroid/os/Message;
    iput v11, v0, Landroid/os/Message;->arg1:I

    .line 502
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 504
    const/4 v9, 0x1

    .line 507
    .end local v0    # "msg":Landroid/os/Message;
    .end local v13    # "serviceState":I
    goto :goto_17f

    .line 479
    .restart local v13    # "serviceState":I
    :cond_136
    :goto_136
    const-string v0, "[CpaDct]radio not available"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x4

    return v0

    .line 507
    .end local v13    # "serviceState":I
    :cond_13d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 513
    .restart local v0    # "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 514
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 515
    const/4 v9, 0x1

    .line 516
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_17f

    .line 517
    :cond_16a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]paramter error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    .line 519
    nop

    .line 527
    :cond_17f
    :goto_17f
    return v9

    :sswitch_data_180
    .sparse-switch
        0x0 -> :sswitch_b9
        0x6 -> :sswitch_b9
        0x7 -> :sswitch_b9
    .end sparse-switch
.end method

.method public clearCpaConnectionInfo(Ljava/lang/String;)V
    .registers 4
    .param p1, "reson"    # Ljava/lang/String;

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]clearCpaConnectionInfo reson:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    .line 638
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 198
    const-string v0, "[CpaDct]CpaDcTracker.dispose"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 200
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v1, -0x3

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 201
    return-void
.end method

.method public getCpaApn()Landroid/telephony/data/ApnSetting;
    .registers 2

    .line 657
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getCpaApn()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public getCpaConnectionInfo()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;
    .registers 3

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]getCpaConnectionInfo, mCurrentCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRequestCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCpaDctState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    if-eqz v0, :cond_39

    .line 540
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getCpaConnectionType()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->CPA_TYPE_NAVI:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    if-ne v0, v1, :cond_39

    .line 541
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    return-object v0

    .line 543
    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpaConnectionStatus()Lcom/android/internal/telephony/DctConstants$State;
    .registers 3

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]getCpaConnectionStatus() mCpaConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method

.method public getCpaDctPhoneId()I
    .registers 2

    .line 641
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mPhoneId:I

    return v0
.end method

.method public getCpaDctState()I
    .registers 2

    .line 645
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    return v0
.end method

.method public getCpaProxyData()Landroid/net/ProxyInfo;
    .registers 4

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]getCpaProxyData, mCurrentCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRequestCpaMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCpaDctState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "proxyInfo":Landroid/net/ProxyInfo;
    const/4 v1, 0x0

    .line 554
    .local v1, "portNum":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    if-eqz v2, :cond_51

    .line 555
    iget-object v2, v2, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    .line 556
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    .line 557
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mCpaApn:Landroid/telephony/data/ApnSetting;

    .line 558
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    .line 557
    invoke-static {v2, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v0

    goto :goto_56

    .line 561
    :cond_51
    const-string v2, "[CpaDct]getCpaProxyData, mCpaConnInfo is null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    .line 564
    :cond_56
    :goto_56
    return-object v0
.end method

.method public getCurrentCpaMode()Ljava/lang/String;
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCpaMode()Ljava/lang/String;
    .registers 2

    .line 653
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "selfMsg":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]handleMessage event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->converEventIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 220
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "[CpaDct]Unhandled mRequestCpaMode: "

    const/4 v3, 0x0

    const/4 v4, 0x7

    const-string v5, "[CpaDct] mode="

    const-string v6, "NONE"

    const/4 v7, 0x1

    const-string v8, "DEFAULT"

    const-string v9, "NAVI"

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_220

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]Unhandled message with number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_21e

    .line 381
    :pswitch_46
    const-string v1, "[CpaDct] protocol error"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    :cond_5b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    .line 386
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    .line 387
    :cond_6b
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 388
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    const/16 v2, 0x6f

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 391
    const-string v1, "protocol error"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->clearCpaConnectionInfo(Ljava/lang/String;)V

    .line 395
    iput-object v9, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    .line 396
    iput-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 398
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 399
    iput v7, v0, Landroid/os/Message;->arg1:I

    .line 400
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_21e

    .line 372
    :pswitch_8b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    .line 373
    const-string v1, "[CpaDct] retry to setup CPA PDN"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 374
    iput v4, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 375
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 376
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v1, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    goto/16 :goto_21e

    .line 362
    :pswitch_ae
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    .line 363
    const-string v1, "[CpaDct] network deact"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 364
    const/4 v1, 0x6

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 365
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 366
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v1, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    goto/16 :goto_21e

    .line 338
    :pswitch_d2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f5

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    if-ne v1, v4, :cond_df

    goto :goto_f5

    .line 356
    :cond_df
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 358
    goto/16 :goto_21e

    .line 341
    :cond_f5
    :goto_f5
    const/4 v1, 0x5

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 344
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 345
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v1, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 349
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    .line 351
    iput-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 353
    iput v10, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    goto/16 :goto_21e

    .line 296
    :pswitch_10c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "apnChanged"

    if-eqz v1, :cond_131

    .line 298
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 301
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->CPA_TYPE_NAVI:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->createCpaConnection(Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;Landroid/telephony/data/ApnSetting;)V

    .line 304
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 305
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v1, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 308
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataForCpaChange(Ljava/lang/String;)V

    goto/16 :goto_21e

    .line 311
    :cond_131
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 318
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->CPA_TYPE_NONE:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->createCpaConnection(Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;Landroid/telephony/data/ApnSetting;)V

    .line 323
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataForCpaChange(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    .line 328
    iput-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    .line 330
    iput v10, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    goto/16 :goto_21e

    .line 333
    :cond_14d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    .line 335
    goto/16 :goto_21e

    .line 275
    :pswitch_163
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 278
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 281
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 282
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 283
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v2, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 287
    const-string v2, "connection disconnected"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->clearCpaConnectionInfo(Ljava/lang/String;)V

    .line 289
    :cond_182
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 290
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 292
    goto/16 :goto_21e

    .line 254
    :pswitch_18b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 257
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 260
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v2, p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;I)V

    .line 264
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    .line 265
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->setCpaConnectionStatus(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 266
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnectionStatus:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v1, v10}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V

    .line 270
    :cond_1b9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionsOnCpaChanged(ILandroid/os/Handler;)V

    .line 271
    goto :goto_21e

    .line 223
    :pswitch_1c1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 224
    iput v7, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaDctState:I

    .line 230
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f0

    .line 232
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    invoke-virtual {v1, v9, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->updateApnListForCpaConnection(Ljava/lang/String;Lmediatek/telephony/data/MtkApnSetting;)I

    .line 235
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 236
    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 237
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_21e

    .line 238
    :cond_1f0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_207

    .line 240
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mMtkDcTracker:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v1, v8, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->updateApnListForCpaConnection(Ljava/lang/String;Lmediatek/telephony/data/MtkApnSetting;)I

    .line 243
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 244
    iput v7, v0, Landroid/os/Message;->arg1:I

    .line 245
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_21e

    .line 248
    :cond_207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]Unhandled mRequestCpaMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->loge(Ljava/lang/String;)V

    .line 250
    nop

    .line 409
    :cond_21e
    :goto_21e
    return-void

    nop

    :pswitch_data_220
    .packed-switch 0x0
        :pswitch_1c1
        :pswitch_18b
        :pswitch_163
        :pswitch_10c
        :pswitch_d2
        :pswitch_ae
        :pswitch_8b
        :pswitch_46
    .end packed-switch
.end method

.method public isCapApn(I)Z
    .registers 6
    .param p1, "apnTypeBitmask"    # I

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "res":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    if-eqz v1, :cond_2d

    .line 670
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getCpaApn()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    .line 671
    .local v1, "localCapApnTypeBitmask":I
    and-int v2, v1, p1

    if-ne v2, p1, :cond_18

    .line 672
    const-string v2, "[CpaDct]isCapApn() is true!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 673
    const/4 v0, 0x1

    goto :goto_2c

    .line 675
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CpaDct]isCapApn() can\'t handle type,apnTypeBitmask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 677
    .end local v1    # "localCapApnTypeBitmask":I
    :goto_2c
    goto :goto_32

    .line 678
    :cond_2d
    const-string v1, "[CpaDct]isCapApn() mCpaConnInfo is null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 680
    :goto_32
    return v0
.end method

.method public isCapApnCanHandleType(I)Z
    .registers 6
    .param p1, "apnTypeBitmask"    # I

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "res":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaApnSetting:Lmediatek/telephony/data/MtkApnSetting;

    if-eqz v1, :cond_30

    .line 686
    invoke-virtual {v1}, Lmediatek/telephony/data/MtkApnSetting;->getApnTypeBitmask()I

    move-result v1

    .line 687
    .local v1, "capApnTypeBitmask":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CpaDct]isCapApnCanHandleType() cap_ApnTypeBitmask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "apnTypeBitmask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 689
    and-int v2, v1, p1

    if-ne v2, p1, :cond_2f

    .line 690
    const-string v2, "[CpaDct]isCapApnCanHandleType() is true!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x1

    .line 693
    .end local v1    # "capApnTypeBitmask":I
    :cond_2f
    goto :goto_35

    .line 694
    :cond_30
    const-string v1, "[CpaDct]isCapApnCanHandleType() mCpaApnSetting is null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 696
    :goto_35
    return v0
.end method

.method public notifyCpaStateChanged(Lcom/android/internal/telephony/DctConstants$State;I)V
    .registers 7
    .param p1, "state"    # Lcom/android/internal/telephony/DctConstants$State;
    .param p2, "failCause"    # I

    .line 719
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCurrentCpaMode:Ljava/lang/String;

    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mRequestCpaMode:Ljava/lang/String;

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 720
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]onNotifyCpaStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->logd(Ljava/lang/String;)V

    .line 722
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->converToCpaDcState(Lcom/android/internal/telephony/DctConstants$State;)I

    move-result v0

    .line 723
    .local v0, "cpaState":I
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->converToCpaReturnCode(I)I

    move-result v1

    .line 725
    .local v1, "cause":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "connStatus"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    const-string v3, "errno"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 731
    .end local v0    # "cpaState":I
    .end local v1    # "cause":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4e
    return-void
.end method

.method public setCpaConInfo(Ljava/net/InetAddress;[Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "localAdr"    # Ljava/net/InetAddress;
    .param p2, "dnsAdr"    # [Ljava/net/InetAddress;

    .line 661
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    if-eqz v0, :cond_a

    .line 662
    iput-object p1, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mLocalAddress:Ljava/net/InetAddress;

    .line 663
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->mCpaConnInfo:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    iput-object p2, v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->mDnsAddresses:[Ljava/net/InetAddress;

    .line 665
    :cond_a
    return-void
.end method

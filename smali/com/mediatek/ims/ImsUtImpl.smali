.class public Lcom/mediatek/ims/ImsUtImpl;
.super Landroid/telephony/ims/stub/ImsUtImplBase;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsUtImpl$ResultHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_INVALID_PHONE_ID:I = -0x1

.field static final IMS_UT_EVENT_GET_CB:I = 0x3e8

.field static final IMS_UT_EVENT_GET_CF:I = 0x3e9

.field static final IMS_UT_EVENT_GET_CF_TIME_SLOT:I = 0x4b0

.field static final IMS_UT_EVENT_GET_CLIP:I = 0x3ec

.field static final IMS_UT_EVENT_GET_CLIR:I = 0x3eb

.field static final IMS_UT_EVENT_GET_COLP:I = 0x3ee

.field static final IMS_UT_EVENT_GET_COLR:I = 0x3ed

.field static final IMS_UT_EVENT_GET_CW:I = 0x3ea

.field static final IMS_UT_EVENT_SET_CB:I = 0x3ef

.field static final IMS_UT_EVENT_SET_CF:I = 0x3f0

.field static final IMS_UT_EVENT_SET_CF_TIME_SLOT:I = 0x4b1

.field static final IMS_UT_EVENT_SET_CLIP:I = 0x3f3

.field static final IMS_UT_EVENT_SET_CLIR:I = 0x3f2

.field static final IMS_UT_EVENT_SET_COLP:I = 0x3f5

.field static final IMS_UT_EVENT_SET_COLR:I = 0x3f4

.field static final IMS_UT_EVENT_SET_CW:I = 0x3f1

.field private static final SDBG:Z

.field private static final SS_SERVICE_CLASS_PROP:Ljava/lang/String; = "vendor.gsm.radio.ss.sc"

.field private static final TAG:Ljava/lang/String; = "ImsUtImpl"

.field static final TIME_VALUE_HOUR_MAX:I = 0x17

.field static final TIME_VALUE_MIN:I = 0x0

.field static final TIME_VALUE_MINUTE_MAX:I = 0x3b

.field private static final mLock:Ljava/lang/Object;

.field private static sImsUtImpls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/ImsUtImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sRequestId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtPluginBase:Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

.field private mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mListener:Landroid/telephony/ims/ImsUtListener;

.field private mOemPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/ims/ImsUtImpl;->SDBG:Z

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    .line 119
    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 175
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 124
    iput-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mPhoneId:I

    .line 176
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 178
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsUtImplResult"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 180
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 181
    .local v1, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;-><init>(Lcom/mediatek/ims/ImsUtImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    .line 183
    iput-object p3, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 184
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v2, p2}, Lcom/mediatek/ims/ImsService;->getImsRILAdapter(I)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 185
    iput p2, p0, Lcom/mediatek/ims/ImsUtImpl;->mPhoneId:I

    .line 187
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsSSOemPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mOemPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    .line 188
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;->makeImsSSExtPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mExtPluginBase:Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsUtImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 104
    iget v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mPhoneId:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mOemPluginBase:Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mExtPluginBase:Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsUtImpl;Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;
    .param p1, "x1"    # Lcom/android/internal/telephony/CallForwardInfo;

    .line 104
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method private convertToTimeSlotArray(Ljava/lang/String;)[J
    .locals 8
    .param p1, "timeSlotString"    # Ljava/lang/String;

    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, "timeSlot":[J
    if-eqz p1, :cond_0

    .line 1028
    const/4 v1, 0x2

    const-string v2, ","

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1029
    .local v2, "timeArray":[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v1, :cond_0

    .line 1030
    new-array v0, v1, [J

    .line 1031
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1032
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1035
    :try_start_0
    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1036
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aput-wide v6, v0, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    .end local v5    # "date":Ljava/util/Date;
    nop

    .line 1031
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1037
    .restart local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 1039
    const/4 v5, 0x0

    return-object v5

    .line 1044
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v2    # "timeArray":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    return-object v0
.end method

.method public static encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1100
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    .line 1101
    .local v0, "encoder":Ljava/util/Base64$Encoder;
    const/4 v1, 0x0

    .line 1103
    .local v1, "textByte":[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1107
    goto :goto_0

    .line 1104
    :catch_0
    move-exception v2

    .line 1105
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1106
    const/4 v1, 0x0

    .line 1109
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v1, :cond_0

    const-string v2, ""

    return-object v2

    .line 1111
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 1112
    .local v2, "encryptedString":Ljava/lang/String;
    return-object v2
.end method

.method public static getAndIncreaseRequestId()I
    .locals 3

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "requestId":I
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 987
    :try_start_0
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v0, v2

    .line 988
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 989
    monitor-exit v1

    .line 990
    return v0

    .line 989
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getConditionFromCFReason(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 537
    packed-switch p0, :pswitch_data_0

    .line 556
    const/4 v0, -0x1

    return v0

    .line 551
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 549
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 547
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 545
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 543
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 541
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 539
    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFacilityFromCBType(I)Ljava/lang/String;
    .locals 1
    .param p1, "cbType"    # I

    .line 468
    packed-switch p1, :pswitch_data_0

    .line 492
    const/4 v0, 0x0

    return-object v0

    .line 490
    :pswitch_0
    const-string v0, "BS_MT"

    return-object v0

    .line 487
    :pswitch_1
    const-string v0, "AC"

    return-object v0

    .line 485
    :pswitch_2
    const-string v0, "AG"

    return-object v0

    .line 483
    :pswitch_3
    const-string v0, "AB"

    return-object v0

    .line 481
    :pswitch_4
    const-string v0, "ACR"

    return-object v0

    .line 478
    :pswitch_5
    const-string v0, "IR"

    return-object v0

    .line 476
    :pswitch_6
    const-string v0, "OX"

    return-object v0

    .line 474
    :pswitch_7
    const-string v0, "OI"

    return-object v0

    .line 472
    :pswitch_8
    const-string v0, "AO"

    return-object v0

    .line 470
    :pswitch_9
    const-string v0, "AI"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;

    .line 560
    new-instance v0, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 561
    .local v0, "imsCfInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 562
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 563
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 564
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 565
    iget-object v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 566
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 567
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsUtImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "service"    # Lcom/mediatek/ims/ImsService;

    .line 157
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsUtImpl;

    .line 160
    .local v1, "m":Lcom/mediatek/ims/ImsUtImpl;
    monitor-exit v0

    return-object v1

    .line 162
    .end local v1    # "m":Lcom/mediatek/ims/ImsUtImpl;
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/ImsUtImpl;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/ims/ImsUtImpl;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsUtImpl;

    monitor-exit v0

    return-object v1

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getServiceClass()I
    .locals 2

    .line 994
    const-string v0, "vendor.gsm.radio.ss.sc"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static resetServcieClass()V
    .locals 2

    .line 998
    const-string v0, "vendor.gsm.radio.ss.sc"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    return-void
.end method


# virtual methods
.method public getCFActionFromAction(I)I
    .locals 2
    .param p1, "cfAction"    # I

    .line 497
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 510
    return v0

    .line 503
    :cond_0
    return v1

    .line 505
    :cond_1
    return v1

    .line 501
    :cond_2
    return v1

    .line 499
    :cond_3
    return v0
.end method

.method public getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .line 514
    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    .line 533
    return v0

    .line 528
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 526
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 524
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 522
    :pswitch_3
    return v0

    .line 520
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 518
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 516
    :pswitch_6
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyUtConfigurationQueried(Landroid/os/Message;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ssInfo"    # Landroid/os/Bundle;

    .line 1010
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1011
    return-void
.end method

.method public notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1014
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1015
    return-void
.end method

.method public notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1006
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1007
    return-void
.end method

.method public notifyUtConfigurationUpdated(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1002
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    .line 1003
    return-void
.end method

.method public queryCLIP()I
    .locals 5

    .line 702
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 704
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 705
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCLIP(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3ec

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 711
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 713
    return v1

    .line 705
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCLIR()I
    .locals 5

    .line 681
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 683
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 684
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCLIR(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 690
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 692
    return v1

    .line 684
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCOLP()I
    .locals 5

    .line 744
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 746
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 747
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCOLP(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3ee

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 753
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getCOLP(Landroid/os/Message;)V

    .line 755
    return v1

    .line 747
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCOLR()I
    .locals 5

    .line 723
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 725
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 726
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCOLR(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3ed

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 732
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getCOLR(Landroid/os/Message;)V

    .line 734
    return v1

    .line 726
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCallBarring(I)I
    .locals 7
    .param p1, "cbType"    # I

    .line 579
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 581
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 582
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCallBarring(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "facility":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 589
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 591
    .local v2, "serviceClass":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v1, v4, v6}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 592
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v0, v6, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 594
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->resetServcieClass()V

    .line 595
    return v1

    .line 582
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "requestId":I
    .end local v2    # "serviceClass":I
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 608
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 610
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 611
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCallBarringForServiceClass(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "facility":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 619
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, v0, v5, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 621
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->resetServcieClass()V

    .line 622
    return v1

    .line 611
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "requestId":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 634
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 636
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 637
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCallForward(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 643
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 645
    .local v0, "serviceClass":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v1, v3, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 646
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getCFReasonFromCondition(I)I

    move-result v4

    invoke-interface {v3, v4, v0, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 649
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->resetServcieClass()V

    .line 650
    return v1

    .line 637
    .end local v0    # "serviceClass":I
    .end local v1    # "requestId":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCallWaiting()I
    .locals 6

    .line 660
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 662
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 663
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCallWaiting(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 669
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 671
    return v1

    .line 663
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 981
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 982
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 766
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 768
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 769
    monitor-exit v0

    .line 771
    return v1

    .line 769
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCLIP(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .line 918
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 920
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 921
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCLIP(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3f3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 927
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCLIP(ILandroid/os/Message;)V

    .line 929
    return v1

    .line 921
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCLIR(I)I
    .locals 5
    .param p1, "clirMode"    # I

    .line 896
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 898
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 899
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCLIR(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3f2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 905
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 907
    return v1

    .line 899
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCOLP(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .line 962
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 964
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 965
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCOLP(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3f5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 971
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCOLP(ILandroid/os/Message;)V

    .line 973
    return v1

    .line 965
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCOLR(I)I
    .locals 5
    .param p1, "presentation"    # I

    .line 940
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 942
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 943
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCOLR(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3f4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 949
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCOLR(ILandroid/os/Message;)V

    .line 951
    return v1

    .line 943
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 10
    .param p1, "cbType"    # I
    .param p2, "enable"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 785
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 787
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 788
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallBarring(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x0

    if-ne p2, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v0

    .line 795
    .local v6, "bEnable":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, "facility":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 798
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v3

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v0

    .line 800
    .local v8, "serviceClass":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v4, 0x3ef

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v0, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 801
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const-string v7, ""

    move-object v5, v2

    move-object v9, v0

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 803
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->resetServcieClass()V

    .line 805
    return v1

    .line 788
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v6    # "bEnable":Z
    .end local v8    # "serviceClass":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 10
    .param p1, "cbType"    # I
    .param p2, "enable"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 821
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 823
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 824
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallBarringForServiceClass(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v0, 0x0

    if-ne p2, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v0

    .line 830
    .local v6, "bEnable":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v2

    .line 832
    .local v2, "facility":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v4, 0x3ef

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v0, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 833
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const-string v7, ""

    move-object v5, v2

    move v8, p4

    move-object v9, v0

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 835
    return v1

    .line 824
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v6    # "bEnable":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 13
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 850
    move-object v1, p0

    sget-object v2, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 851
    :try_start_0
    sget v0, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 852
    .local v0, "requestId":I
    sget v3, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 853
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallForward(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsUtImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v2, v1, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 859
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getCFActionFromAction(I)I

    move-result v7

    .line 860
    move v3, p2

    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ImsUtImpl;->getCFReasonFromCondition(I)I

    move-result v8

    .line 859
    move/from16 v9, p4

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object v12, v2

    invoke-interface/range {v6 .. v12}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 863
    return v0

    .line 853
    .end local v0    # "requestId":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    move v3, p2

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 20
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .line 1062
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    .line 1066
    const-string v0, "ImsUtImpl"

    const-string v1, "updateCallForwardUncondTimer(): Time is all zero! use updateCallForward"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ImsUtImpl;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    return v0

    .line 1071
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1072
    :try_start_0
    sget v0, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1073
    .local v0, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1074
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForwardUncondTimer(): requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    if-ltz v8, :cond_1

    const/16 v1, 0x17

    if-gt v8, v1, :cond_1

    if-ltz v9, :cond_1

    const/16 v2, 0x3b

    if-gt v9, v2, :cond_1

    if-ltz v10, :cond_1

    if-gt v10, v1, :cond_1

    if-ltz v11, :cond_1

    if-le v11, v2, :cond_2

    .line 1083
    :cond_1
    const-string v1, "ImsUtImpl"

    const-string v2, "updateCallForwardUncondTimer(): Time is wrong! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_2
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 1087
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1086
    const-string v2, "%02d:%02d,%02d:%02d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1089
    .local v1, "timer":Ljava/lang/String;
    iget-object v2, v7, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v3, 0x4b1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1090
    .local v2, "msg":Landroid/os/Message;
    iget-object v12, v7, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move/from16 v3, p5

    invoke-virtual {v7, v3}, Lcom/mediatek/ims/ImsUtImpl;->getCFActionFromAction(I)I

    move-result v13

    .line 1091
    move/from16 v4, p6

    invoke-virtual {v7, v4}, Lcom/mediatek/ims/ImsUtImpl;->getCFReasonFromCondition(I)I

    move-result v14

    const/4 v15, 0x1

    const/16 v17, 0x0

    .line 1093
    invoke-direct {v7, v1}, Lcom/mediatek/ims/ImsUtImpl;->convertToTimeSlotArray(Ljava/lang/String;)[J

    move-result-object v18

    .line 1090
    move-object/from16 v16, p7

    move-object/from16 v19, v2

    invoke-interface/range {v12 .. v19}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    .line 1095
    return v0

    .line 1074
    .end local v0    # "requestId":I
    .end local v1    # "timer":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    move/from16 v3, p5

    move/from16 v4, p6

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public updateCallWaiting(ZI)I
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 874
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 876
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 877
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallWaiting(): requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3f1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 883
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 885
    return v1

    .line 877
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

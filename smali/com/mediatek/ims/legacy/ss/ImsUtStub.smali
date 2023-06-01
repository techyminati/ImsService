.class public Lcom/mediatek/ims/legacy/ss/ImsUtStub;
.super Landroid/telephony/ims/stub/ImsUtImplBase;
.source "ImsUtStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SUBSCRIPTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SUBSCRIPTION_PHONE_STATE"

.field private static final DBG:Z = true

.field private static final DEFAULT_INVALID_PHONE_ID:I = -0x1

.field static final HTTP_ERROR_CODE_400:I = 0x190

.field static final HTTP_ERROR_CODE_403:I = 0x193

.field static final HTTP_ERROR_CODE_404:I = 0x194

.field static final HTTP_ERROR_CODE_409:I = 0x199

.field private static final IMS_DEREG_CAUSE_BY_SS_CONFIG:I = 0x2

.field private static final IMS_DEREG_DISABLE_PROP:Ljava/lang/String; = "persist.vendor.radio.ss.imsdereg_off"

.field private static final IMS_DEREG_OFF:Ljava/lang/String; = "0"

.field private static final IMS_DEREG_ON:Ljava/lang/String; = "1"

.field private static final IMS_DEREG_PROP:Ljava/lang/String; = "vendor.gsm.radio.ss.imsdereg"

.field static final IMS_UT_EVENT_GET_CB:I = 0x3e8

.field static final IMS_UT_EVENT_GET_CF:I = 0x3e9

.field static final IMS_UT_EVENT_GET_CLIP:I = 0x3ec

.field static final IMS_UT_EVENT_GET_CLIR:I = 0x3eb

.field static final IMS_UT_EVENT_GET_COLP:I = 0x3ee

.field static final IMS_UT_EVENT_GET_COLR:I = 0x3ed

.field static final IMS_UT_EVENT_GET_CW:I = 0x3ea

.field static final IMS_UT_EVENT_IMS_DEREG:I = 0x3f6

.field static final IMS_UT_EVENT_SET_CB:I = 0x3ef

.field static final IMS_UT_EVENT_SET_CF:I = 0x3f0

.field static final IMS_UT_EVENT_SET_CLIP:I = 0x3f3

.field static final IMS_UT_EVENT_SET_CLIR:I = 0x3f2

.field static final IMS_UT_EVENT_SET_COLP:I = 0x3f5

.field static final IMS_UT_EVENT_SET_COLR:I = 0x3f4

.field static final IMS_UT_EVENT_SET_CW:I = 0x3f1

.field private static final TAG:Ljava/lang/String; = "ImsUtService"

.field private static final mLock:Ljava/lang/Object;

.field private static sImsUtStubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/legacy/ss/ImsUtStub;",
            ">;"
        }
    .end annotation
.end field

.field private static sRequestId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInVoLteCall:Z

.field private mIsNeedImsDereg:Z

.field private mListener:Landroid/telephony/ims/ImsUtListener;

.field private mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sImsUtStubs:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 183
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 116
    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    .line 119
    iput-boolean v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsInVoLteCall:Z

    .line 120
    iput-boolean v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsNeedImsDereg:Z

    .line 157
    new-instance v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$1;-><init>(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)V

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    .line 185
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->getInstance()Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 186
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->registerUtService(Landroid/content/Context;)V

    .line 188
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImsUtStubResult"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 190
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 191
    .local v2, "looper":Landroid/os/Looper;
    new-instance v3, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    invoke-direct {v3, p0, v2}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;-><init>(Lcom/mediatek/ims/legacy/ss/ImsUtStub;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    .line 193
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    iput-object p3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 198
    iput p2, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/legacy/ss/ImsUtStub;IILcom/android/internal/telephony/PhoneConstants$State;)V
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 101
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 101
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 101
    iget v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 101
    iget-boolean v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsInVoLteCall:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/ims/legacy/ss/ImsUtStub;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    .param p1, "x1"    # Z

    .line 101
    iput-boolean p1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsNeedImsDereg:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Lcom/mediatek/ims/ImsService;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 101
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mImsService:Lcom/mediatek/ims/ImsService;

    return-object v0
.end method

.method public static getAndIncreaseRequestId()I
    .registers 3

    .line 1162
    const/4 v0, 0x0

    .line 1163
    .local v0, "requestId":I
    sget-object v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1164
    :try_start_4
    sget v2, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v0, v2

    .line 1165
    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 1166
    monitor-exit v1

    .line 1167
    return v0

    .line 1166
    :catchall_d
    move-exception v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "service"    # Lcom/mediatek/ims/ImsService;

    .line 202
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sImsUtStubs:Ljava/util/HashMap;

    monitor-enter v0

    .line 203
    :try_start_3
    sget-object v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sImsUtStubs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 204
    sget-object v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sImsUtStubs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 205
    .local v1, "m":Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    monitor-exit v0

    return-object v1

    .line 207
    .end local v1    # "m":Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    :cond_1d
    sget-object v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sImsUtStubs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sImsUtStubs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    monitor-exit v0

    return-object v1

    .line 210
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "phoneType"    # I
    .param p3, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivePhoneStateChange phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIsInVoLteCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsInVoLteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUtService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    if-eq p1, v0, :cond_35

    .line 222
    return-void

    .line 225
    :cond_35
    iget-boolean v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsInVoLteCall:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    .line 226
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p3, v0, :cond_5d

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsInVoLteCall:Z

    .line 228
    iget-boolean v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsNeedImsDereg:Z

    if-eqz v1, :cond_5d

    .line 229
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v2, 0x3f6

    const/4 v3, 0x0

    .line 230
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    iput-boolean v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsNeedImsDereg:Z

    goto :goto_5d

    .line 235
    :cond_54
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p3, v0, :cond_5d

    const/4 v0, 0x5

    if-ne p2, v0, :cond_5d

    .line 237
    iput-boolean v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsInVoLteCall:Z

    .line 240
    :cond_5d
    :goto_5d
    return-void
.end method

.method static xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;I)Landroid/telephony/ims/ImsReasonInfo;
    .registers 7
    .param p0, "xcapEx"    # Lcom/mediatek/simservs/xcap/XcapException;
    .param p1, "phoneId"    # I

    .line 1133
    const-string v0, "ImsUtService"

    if-eqz p0, :cond_3c

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xcapExceptionToImsReasonInfo(): XcapException: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapException;->getExceptionCodeCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", http error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isConnectionError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_3c
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP02:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-static {v1, p1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    const v2, 0xf006

    const/4 v3, 0x0

    if-eqz v1, :cond_5b

    .line 1142
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v1

    const/16 v4, 0x190

    if-ne v1, v4, :cond_5b

    .line 1143
    const-string v1, "xcapExceptionToImsReasonInfo - translate 400 error cause to 403"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1145
    .local v0, "reason":Landroid/telephony/ims/ImsReasonInfo;
    return-object v0

    .line 1148
    .end local v0    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_5b
    if-eqz p0, :cond_6b

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_6b

    .line 1149
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .restart local v0    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_98

    .line 1150
    .end local v0    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_6b
    if-eqz p0, :cond_7e

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_7e

    .line 1151
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const v1, 0xf008

    invoke-direct {v0, v1, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .restart local v0    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_98

    .line 1152
    .end local v0    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_7e
    if-eqz p0, :cond_91

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v0

    const/16 v1, 0x199

    if-ne v0, v1, :cond_91

    .line 1153
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const v1, 0xf009

    invoke-direct {v0, v1, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .restart local v0    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_98

    .line 1155
    .end local v0    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_91
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x324

    invoke-direct {v0, v1, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1158
    .restart local v0    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_98
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 563
    return-void
.end method

.method protected getCFActionFromAction(I)I
    .registers 3
    .param p1, "cfAction"    # I

    .line 595
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_c

    .line 608
    :pswitch_4
    return v0

    .line 601
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 603
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 599
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 597
    :pswitch_b
    return v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_4
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method protected getCFReasonFromCondition(I)I
    .registers 3
    .param p1, "condition"    # I

    .line 612
    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_12

    .line 631
    return v0

    .line 626
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 624
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 622
    :pswitch_9
    const/4 v0, 0x4

    return v0

    .line 620
    :pswitch_b
    return v0

    .line 618
    :pswitch_c
    const/4 v0, 0x2

    return v0

    .line 616
    :pswitch_e
    const/4 v0, 0x1

    return v0

    .line 614
    :pswitch_10
    const/4 v0, 0x0

    return v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method protected getConditionFromCFReason(I)I
    .registers 3
    .param p1, "reason"    # I

    .line 635
    packed-switch p1, :pswitch_data_14

    .line 654
    const/4 v0, -0x1

    return v0

    .line 649
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 647
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 645
    :pswitch_9
    const/4 v0, 0x4

    return v0

    .line 643
    :pswitch_b
    const/4 v0, 0x3

    return v0

    .line 641
    :pswitch_d
    const/4 v0, 0x2

    return v0

    .line 639
    :pswitch_f
    const/4 v0, 0x1

    return v0

    .line 637
    :pswitch_11
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method protected getFacilityFromCBType(I)Ljava/lang/String;
    .registers 3
    .param p1, "cbType"    # I

    .line 566
    packed-switch p1, :pswitch_data_24

    .line 590
    const/4 v0, 0x0

    return-object v0

    .line 588
    :pswitch_5
    const-string v0, "BS_MT"

    return-object v0

    .line 585
    :pswitch_8
    const-string v0, "AC"

    return-object v0

    .line 583
    :pswitch_b
    const-string v0, "AG"

    return-object v0

    .line 581
    :pswitch_e
    const-string v0, "AB"

    return-object v0

    .line 579
    :pswitch_11
    const-string v0, "ACR"

    return-object v0

    .line 576
    :pswitch_14
    const-string v0, "IR"

    return-object v0

    .line 574
    :pswitch_17
    const-string v0, "OX"

    return-object v0

    .line 572
    :pswitch_1a
    const-string v0, "OI"

    return-object v0

    .line 570
    :pswitch_1d
    const-string v0, "AO"

    return-object v0

    .line 568
    :pswitch_20
    const-string v0, "AI"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method protected getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;
    .registers 4
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;

    .line 658
    new-instance v0, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 659
    .local v0, "imsCfInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getConditionFromCFReason(I)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 660
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 661
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 662
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 663
    iget-object v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 664
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 665
    return-object v0
.end method

.method public notifyUtConfigurationCallForwardQueried(Landroid/os/Message;[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 1187
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 1188
    return-void
.end method

.method public notifyUtConfigurationQueried(Landroid/os/Message;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ssInfo"    # Landroid/os/Bundle;

    .line 1179
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1180
    return-void
.end method

.method public notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1183
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1184
    return-void
.end method

.method public notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1175
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1176
    return-void
.end method

.method public notifyUtConfigurationUpdated(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1171
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    .line 1172
    return-void
.end method

.method public queryCLIP()I
    .registers 6

    .line 815
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 817
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 818
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3e

    .line 820
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCLIP(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v1, 0x3ec

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 825
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    .line 826
    .local v1, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 828
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->queryCLIP(Landroid/os/Message;I)V

    .line 830
    return v2

    .line 818
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v2    # "requestId":I
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public queryCLIR()I
    .registers 6

    .line 790
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 792
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 793
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3e

    .line 795
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCLIR(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v1, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 800
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    .line 801
    .local v1, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 803
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->getCLIR(Landroid/os/Message;I)V

    .line 805
    return v2

    .line 793
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v2    # "requestId":I
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public queryCOLP()I
    .registers 6

    .line 865
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 867
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 868
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3e

    .line 870
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCOLP(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v1, 0x3ee

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 875
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    .line 876
    .local v1, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 878
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->getCOLP(Landroid/os/Message;I)V

    .line 880
    return v2

    .line 868
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v2    # "requestId":I
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public queryCOLR()I
    .registers 6

    .line 840
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 841
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 842
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 843
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3e

    .line 845
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCOLR(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v1, 0x3ed

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 850
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    .line 851
    .local v1, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 853
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->getCOLR(Landroid/os/Message;I)V

    .line 855
    return v2

    .line 843
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v2    # "requestId":I
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public queryCallBarring(I)I
    .registers 13
    .param p1, "cbType"    # I

    .line 676
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 678
    .local v2, "requestId":I
    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 679
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_56

    .line 681
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallBarring(): requestId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "facility":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v2, v5, v6}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 687
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v10

    .line 688
    .local v10, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v10, v4}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 690
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getServiceClass()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_46

    .line 691
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getServiceClass()I

    move-result v3

    goto :goto_47

    :cond_46
    nop

    :goto_47
    move v7, v3

    .line 693
    .local v7, "serviceClass":I
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    const/4 v6, 0x0

    iget v9, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    move-object v5, v0

    move-object v8, v1

    invoke-virtual/range {v4 .. v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V

    .line 695
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->resetServcieClass()V

    .line 697
    return v2

    .line 679
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    .end local v7    # "serviceClass":I
    .end local v10    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public queryCallBarringForServiceClass(II)I
    .registers 13
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 708
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 710
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 711
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_45

    .line 713
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallBarringForServiceClass(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "facility":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 719
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v9

    .line 720
    .local v9, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v9, v3}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 722
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v8, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    move-object v4, v0

    move v6, p2

    move-object v7, v1

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V

    .line 724
    return v2

    .line 711
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    .end local v9    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .registers 14
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 734
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 736
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 737
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_56

    .line 739
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallForward(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v1, 0x3e9

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 744
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    .line 745
    .local v1, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 747
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getServiceClass()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_43

    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getServiceClass()I

    move-result v4

    move v7, v4

    goto :goto_44

    .line 748
    :cond_43
    move v7, v4

    :goto_44
    nop

    .line 750
    .local v7, "serviceClass":I
    iget-object v5, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v6

    iget v10, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    move-object v8, p2

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;I)V

    .line 753
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->resetServcieClass()V

    .line 755
    return v2

    .line 737
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v2    # "requestId":I
    .end local v7    # "serviceClass":I
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public queryCallWaiting()I
    .registers 7

    .line 765
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 767
    .local v2, "requestId":I
    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 768
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3e

    .line 770
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallWaiting(): requestId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v1, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 775
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    .line 776
    .local v1, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v1, v4}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 778
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v5, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v4, v3, v0, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;I)V

    .line 780
    return v2

    .line 768
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v2    # "requestId":I
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 1122
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 1123
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .registers 5
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 890
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 892
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 893
    monitor-exit v0

    .line 895
    return v2

    .line 893
    .end local v2    # "requestId":I
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public updateCLIP(Z)I
    .registers 8
    .param p1, "enable"    # Z

    .line 1047
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 1049
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 1050
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3f

    .line 1052
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIP(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    move v0, p1

    .line 1056
    .local v0, "enableClip":I
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v3, 0x3f3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1058
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v3

    .line 1059
    .local v3, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 1061
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v5, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v4, v0, v1, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->setCLIP(ILandroid/os/Message;I)V

    .line 1063
    return v2

    .line 1050
    .end local v0    # "enableClip":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    .end local v3    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public updateCLIR(I)I
    .registers 7
    .param p1, "clirMode"    # I

    .line 1022
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 1024
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 1025
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3e

    .line 1027
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIR(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v1, 0x3f2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1032
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    .line 1033
    .local v1, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 1035
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v3, p1, v0, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->setCLIR(ILandroid/os/Message;I)V

    .line 1037
    return v2

    .line 1025
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v2    # "requestId":I
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public updateCOLP(Z)I
    .registers 8
    .param p1, "enable"    # Z

    .line 1098
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1099
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 1100
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 1101
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3f

    .line 1103
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCOLP(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    move v0, p1

    .line 1107
    .local v0, "enableColp":I
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v3, 0x3f5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1109
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v3

    .line 1110
    .local v3, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 1112
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v5, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v4, v0, v1, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->setCOLP(ILandroid/os/Message;I)V

    .line 1114
    return v2

    .line 1101
    .end local v0    # "enableColp":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    .end local v3    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public updateCOLR(I)I
    .registers 7
    .param p1, "presentation"    # I

    .line 1073
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1074
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 1075
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 1076
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3e

    .line 1078
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCOLR(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v1, 0x3f4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1083
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    .line 1084
    .local v1, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 1086
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v3, p1, v0, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->setCOLR(ILandroid/os/Message;I)V

    .line 1088
    return v2

    .line 1076
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v2    # "requestId":I
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .registers 16
    .param p1, "cbType"    # I
    .param p2, "enable"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 906
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 908
    .local v2, "requestId":I
    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 909
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_5c

    .line 911
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarring(): requestId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v0, 0x0

    if-ne p2, v3, :cond_26

    move v6, v3

    goto :goto_27

    :cond_26
    move v6, v0

    .line 916
    .local v6, "bEnable":Z
    :goto_27
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "facility":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v5, 0x3ef

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v0, v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 919
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v11

    .line 920
    .local v11, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v11, v4}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 922
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getServiceClass()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4c

    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getServiceClass()I

    move-result v3

    move v8, v3

    goto :goto_4d

    .line 923
    :cond_4c
    move v8, v3

    :goto_4d
    nop

    .line 925
    .local v8, "serviceClass":I
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    const/4 v7, 0x0

    iget v10, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    move-object v5, v1

    move-object v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V

    .line 927
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->resetServcieClass()V

    .line 929
    return v2

    .line 909
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "requestId":I
    .end local v6    # "bEnable":Z
    .end local v8    # "serviceClass":I
    .end local v11    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .registers 16
    .param p1, "cbType"    # I
    .param p2, "enable"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 941
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 943
    .local v2, "requestId":I
    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 944
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4b

    .line 946
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarringForServiceClass(): requestId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x0

    if-ne p2, v3, :cond_26

    move v6, v3

    goto :goto_27

    :cond_26
    move v6, v0

    .line 951
    .local v6, "bEnable":Z
    :goto_27
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v1

    .line 952
    .local v1, "facility":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v4, 0x3ef

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 954
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v3

    .line 955
    .local v3, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 957
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    const/4 v7, 0x0

    iget v10, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    move-object v5, v1

    move v8, p4

    move-object v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V

    .line 959
    return v2

    .line 944
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "requestId":I
    .end local v3    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v6    # "bEnable":Z
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .registers 20
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 970
    move-object v1, p0

    sget-object v2, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 971
    :try_start_4
    sget v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v3, v0

    .line 972
    .local v3, "requestId":I
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 973
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_50

    .line 975
    const-string v0, "ImsUtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallForward(): requestId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v2, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 980
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v2

    .line 981
    .local v2, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v4, v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 983
    iget-object v6, v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getCFActionFromAction(I)I

    move-result v7

    .line 984
    move/from16 v4, p2

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v8

    iget v13, v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    .line 983
    move/from16 v9, p4

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object v12, v0

    invoke-virtual/range {v6 .. v13}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;I)V

    .line 987
    return v3

    .line 973
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v3    # "requestId":I
    :catchall_50
    move-exception v0

    move/from16 v4, p2

    :goto_53
    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_55

    throw v0

    :catchall_55
    move-exception v0

    goto :goto_53
.end method

.method public updateCallWaiting(ZI)I
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 997
    sget-object v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    move v2, v1

    .line 999
    .local v2, "requestId":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->sRequestId:I

    .line 1000
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3e

    .line 1002
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallWaiting(): requestId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mHandler:Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;

    const/16 v1, 0x3f1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1007
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    .line 1008
    .local v1, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/SuppSrvConfig;->update(I)V

    .line 1010
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v4, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I

    invoke-virtual {v3, p1, p2, v0, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->setCallWaiting(ZILandroid/os/Message;I)V

    .line 1012
    return v2

    .line 1000
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v2    # "requestId":I
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.class public Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;
.super Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;
.source "ImsSelfActivatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$MyHandler;
    }
.end annotation


# static fields
.field protected static final ACTION_AIRPLANE_CHANGE_DONE:Ljava/lang/String; = "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0x1

.field private static final EVENT_IMS_REGISTRATION_TIMEOUT:I = 0x2

.field protected static final EXTRA_AIRPLANE_MODE:Ljava/lang/String; = "airplaneMode"

.field private static final IMS_REG_TIMEOUT:I = 0x2710

.field private static final MTK_VZW_SUPPORT:Z

.field private static final TAG:Ljava/lang/String; = "ImsExtSelfActivatorImpl"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mContext:Landroid/content/Context;

.field private mDialString:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mIsDialed:Z

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 90
    nop

    .line 91
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, "OM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->MTK_VZW_SUPPORT:Z

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callSessionProxy"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p4, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p5, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p6, "phoneId"    # I

    .line 119
    invoke-direct/range {p0 .. p6}, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)V

    .line 102
    new-instance v0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$1;

    invoke-direct {v0, p0}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$1;-><init>(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)V

    iput-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    const-string v0, "ImsExtSelfActivatorImpl"

    const-string v1, "Construct ImsExtSelfActivatorImpl()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p1, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mContext:Landroid/content/Context;

    .line 124
    iput-object p3, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 125
    iput-object p4, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 126
    new-instance v0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$MyHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$MyHandler;-><init>(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mHandler:Landroid/os/Handler;

    .line 127
    iput p6, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mPhoneId:I

    .line 128
    iput-object p5, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    .line 76
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)Landroid/telephony/ims/ImsCallProfile;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    .line 76
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    .line 76
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    .line 76
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    .line 76
    iget v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mPhoneId:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    .line 76
    invoke-direct {p0}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->dialAnyway()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    .line 76
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dialAnyway()V
    .registers 4

    .line 240
    iget-boolean v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mIsDialed:Z

    if-eqz v0, :cond_5

    .line 241
    return-void

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mDialString:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mIsDialed:Z

    .line 245
    return-void
.end method

.method private notifySelfActivationSMBeforeDial(Z)V
    .registers 9
    .param p1, "isEcc"    # Z

    .line 182
    nop

    .line 183
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    .line 184
    .local v0, "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    const-string v1, "ImsExtSelfActivatorImpl"

    if-nez v0, :cond_15

    .line 185
    const-string v2, "Can not access ITelephonyEx"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 189
    :cond_15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v2, "extra":Landroid/os/Bundle;
    move v3, p1

    .line 191
    .local v3, "callType":I
    const-string v4, "key_mo_call_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v4, "notifySelfActivationSMBeforeDial"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :try_start_25
    iget-object v4, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v4

    .line 196
    .local v4, "imsService":Lcom/mediatek/ims/ImsService;
    iget v5, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mPhoneId:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 197
    .local v5, "subId":I
    const/4 v6, 0x1

    invoke-interface {v0, v6, v2, v5}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->selfActivationAction(ILandroid/os/Bundle;I)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_35} :catch_37

    .line 200
    nop

    .end local v4    # "imsService":Lcom/mediatek/ims/ImsService;
    .end local v5    # "subId":I
    goto :goto_3d

    .line 198
    :catch_37
    move-exception v4

    .line 199
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "RemoteException doSelfActivationDial()"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_3d
    return-void
.end method

.method private tryLeaveFlightmodeBeforeDial()Z
    .registers 7

    .line 248
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_12

    move v0, v3

    goto :goto_13

    :cond_12
    move v0, v2

    .line 250
    .local v0, "isInFlightmode":Z
    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryLeaveFlightmodeBeforeDial() isInFlightmode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsExtSelfActivatorImpl"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-nez v0, :cond_2c

    return v2

    .line 254
    :cond_2c
    iget-object v4, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "state"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    iget-object v2, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 260
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v4, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    return v3
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 204
    const-string v0, "ImsExtSelfActivatorImpl"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForImsRegistrationInfo(Landroid/os/Handler;)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 208
    iput-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 209
    iput-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 210
    iput-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 211
    return-void
.end method

.method public doSelfActivationDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Z)V
    .registers 8
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "isEcc"    # Z

    .line 166
    const-string v0, "ImsExtSelfActivatorImpl"

    const-string v1, "doSelfActivationDial()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput-object p1, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mDialString:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mIsDialed:Z

    .line 171
    invoke-direct {p0}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->tryLeaveFlightmodeBeforeDial()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 173
    return-void

    .line 176
    :cond_15
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 178
    invoke-direct {p0, p3}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->notifySelfActivationSMBeforeDial(Z)V

    .line 179
    return-void
.end method

.method public shouldProcessSelfActivation(I)Z
    .registers 8
    .param p1, "phoneId"    # I

    .line 214
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->getImsServiceState(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ImsExtSelfActivatorImpl"

    if-nez v0, :cond_11

    .line 215
    const-string v0, "shouldProcessSelfActivation() IMS is IN_SERVICE, return false"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v1

    .line 219
    :cond_11
    nop

    .line 220
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    .line 221
    .local v0, "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v0, :cond_24

    .line 222
    const-string v3, "Can not access ITelephonyEx"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v1

    .line 228
    :cond_24
    :try_start_24
    iget-object v3, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    .line 229
    .local v3, "imsService":Lcom/mediatek/ims/ImsService;
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 230
    .local v4, "subId":I
    invoke-interface {v0, v4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSelfActivateState(I)I

    move-result v5
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_32} :catch_4d

    move v3, v5

    .line 234
    .end local v4    # "subId":I
    .local v3, "selfActivateState":I
    nop

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Self Activate State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v2, 0x2

    if-ne v3, v2, :cond_4c

    const/4 v1, 0x1

    :cond_4c
    return v1

    .line 231
    .end local v3    # "selfActivateState":I
    :catch_4d
    move-exception v3

    .line 232
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v4, "RemoteException shouldProcessSelfActivation()"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v1
.end method

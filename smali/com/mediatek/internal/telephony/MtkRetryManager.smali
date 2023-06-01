.class public final Lcom/mediatek/internal/telephony/MtkRetryManager;
.super Lcom/android/internal/telephony/RetryManager;
.source "MtkRetryManager.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MtkRetryManager"


# instance fields
.field private mBcastRegistered:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

.field private mPhoneNum:I

.field private mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 107
    const/16 v0, 0x64

    sput v0, Lcom/mediatek/internal/telephony/MtkRetryManager;->DEFAULT_MAX_SAME_APN_RETRY:I

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DataThrottler;I)V
    .registers 8
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dataThrottler"    # Lcom/android/internal/telephony/dataconnection/DataThrottler;
    .param p3, "apnType"    # I

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RetryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DataThrottler;I)V

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBcastRegistered:Z

    .line 78
    new-instance v0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkRetryManager$1;-><init>(Lcom/mediatek/internal/telephony/MtkRetryManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mPhoneNum:I

    .line 123
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getInstance(Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {p3}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 128
    invoke-static {p3}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 129
    :cond_45
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBcastRegistered:Z

    if-nez v0, :cond_5a

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBcastRegistered:Z

    .line 136
    :cond_5a
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkRetryManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->getNetworkSuggestedRetryDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkRetryManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 65
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkRetryManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 65
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/MtkRetryManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/MtkRetryManager;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 65
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/MtkRetryManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 65
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/MtkRetryManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 65
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/MtkRetryManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 65
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->configureRetryOnly()V

    return-void
.end method

.method static synthetic access$802(Lcom/mediatek/internal/telephony/MtkRetryManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I

    return p1
.end method

.method static synthetic access$902(Lcom/mediatek/internal/telephony/MtkRetryManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    return p1
.end method

.method private configureRetryOnly()V
    .registers 3

    .line 180
    const-string v0, "MtkRetryManager"

    const-string v1, "configureRetryOnly"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-super {p0}, Lcom/android/internal/telephony/RetryManager;->configureRetry()V

    .line 184
    return-void
.end method


# virtual methods
.method protected configureRetry()V
    .registers 6

    .line 150
    invoke-super {p0}, Lcom/android/internal/telephony/RetryManager;->configureRetry()V

    .line 152
    const/4 v0, 0x0

    .line 157
    .local v0, "configString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5e

    .line 158
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    .line 159
    .local v1, "index":I
    if-ltz v1, :cond_1c

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1d

    .line 160
    :cond_1c
    const/4 v1, 0x0

    .line 162
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureRetry: mCurrentApnIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reset MD data count for apn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->resetMdDataRetryCount(Ljava/lang/String;Landroid/os/Message;)V

    .line 165
    .end local v1    # "index":I
    goto :goto_63

    .line 166
    :cond_5e
    const-string v1, "configureRetry: mWaitingApns is null or empty"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 171
    :goto_63
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->apnType:I

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ims"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->apnType:I

    .line 172
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "emergency"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 173
    :cond_7f
    const-string v1, "MtkRetryManager"

    const-string v2, "configureRetry: IMS/EIMS, no retry by mobile."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "max_retries=0, -1, -1, -1"

    .line 175
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->configure(Ljava/lang/String;)Z

    .line 177
    :cond_8b
    return-void
.end method

.method protected finalize()V
    .registers 3

    .line 141
    const-string v0, "RetryManager finalized"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    return-void
.end method

.method public getDelayForNextApn(Z)J
    .registers 11
    .param p1, "failFastEnabled"    # Z

    .line 195
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_101

    .line 200
    :cond_13
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->getNetworkSuggestedRetryDelay()J

    move-result-wide v3

    .line 201
    .local v3, "networkSuggestedDelay":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_21

    .line 202
    const-string v0, "Modem suggested not retrying."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 203
    return-wide v1

    .line 206
    :cond_21
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->apnType:I

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "ims"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fb

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->apnType:I

    .line 207
    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "emergency"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto/16 :goto_fb

    .line 212
    :cond_3f
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_87

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I

    sget v5, Lcom/mediatek/internal/telephony/MtkRetryManager;->DEFAULT_MAX_SAME_APN_RETRY:I

    if-ge v0, v5, :cond_87

    .line 216
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    .line 217
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->getValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_6d

    .line 218
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    if-eqz v0, :cond_6d

    .line 219
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->isNetworkOperatorForCC33()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I

    int-to-long v5, v0

    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    .line 221
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->getValue()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_6d

    .line 222
    return-wide v1

    .line 229
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network suggested retry in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 230
    return-wide v3

    .line 239
    :cond_87
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    .line 241
    .local v0, "index":I
    :cond_89
    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_94

    const/4 v0, 0x0

    .line 244
    :cond_94
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v5

    if-nez v5, :cond_e7

    .line 245
    nop

    .line 256
    iget v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I

    if-gt v0, v5, :cond_da

    .line 258
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mRetryForever:Z

    if-nez v5, :cond_cf

    iget v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mRetryCount:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mMaxRetryCount:I

    if-le v5, v6, :cond_cf

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reached maximum retry count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mMaxRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 260
    return-wide v1

    .line 262
    :cond_cf
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->getRetryTimer()J

    move-result-wide v1

    .line 263
    .local v1, "delay":J
    iget v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mRetryCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mRetryCount:I

    goto :goto_dc

    .line 266
    .end local v1    # "delay":J
    :cond_da
    iget-wide v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mInterApnDelay:J

    .line 269
    .restart local v1    # "delay":J
    :goto_dc
    if-eqz p1, :cond_e6

    iget-wide v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mFailFastInterApnDelay:J

    cmp-long v5, v1, v5

    if-lez v5, :cond_e6

    .line 274
    iget-wide v1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mFailFastInterApnDelay:J

    .line 277
    :cond_e6
    return-wide v1

    .line 249
    .end local v1    # "delay":J
    :cond_e7
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/mediatek/internal/telephony/MtkRetryManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/internal/telephony/MtkRetryManager$$ExternalSyntheticLambda0;

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 250
    const-string v5, "All APNs have permanently failed."

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 251
    return-wide v1

    .line 208
    .end local v0    # "index":I
    :cond_fb
    :goto_fb
    const-string v0, "For ims or emergency request, not trigger retry on AP side"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 209
    return-wide v1

    .line 196
    .end local v3    # "networkSuggestedDelay":J
    :cond_101
    :goto_101
    const-string v0, "Waiting APN list is null or empty."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V

    .line 197
    return-wide v1
.end method

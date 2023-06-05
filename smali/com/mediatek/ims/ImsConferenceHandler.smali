.class public Lcom/mediatek/ims/ImsConferenceHandler;
.super Lcom/mediatek/ims/DefaultConferenceHandler;
.source "ImsConferenceHandler.java"


# static fields
.field private static final ANONYMOUS_URI:Ljava/lang/String; = "sip:anonymous@anonymous.invalid"

.field private static final CEP_TIMEOUT:I = 0x1388

.field private static final CONFERENCE_STATE_ACTIVE:I = 0x1

.field private static final CONFERENCE_STATE_CLOSED:I = 0x0

.field private static final CONF_HOST:Ljava/lang/String; = "host"

.field private static final DBG:Z = true

.field private static final EVENT_CLOSE_CONFERENCE:I = 0x1

.field private static final EVENT_HANDLE_CACHED_CONFERENCE_DATA:I = 0x2

.field private static final EVENT_TRY_UPDATE_WITH_LOCAL_CACHE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConferenceHandler"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TELDBG:Z

.field private static final USER_ENTITY:Ljava/lang/String; = "user-entity"

.field private static final VDBG:Z = false

.field private static mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

.field private static mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;


# instance fields
.field private mAddingParticipant:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedConferenceData:Ljava/lang/String;

.field private mCepVersion:I

.field private mConfCallId:I

.field private mConfParticipants:Ljava/util/LinkedHashMap;

.field private mConfParticipantsAddr:Ljava/util/LinkedHashMap;

.field private mConfState:I

.field private mContext:Landroid/content/Context;

.field private mFirstMergeParticipants:Ljava/util/LinkedHashMap;

.field private mHandler:Landroid/os/Handler;

.field private mHaveUpdateConferenceWithMember:Z

.field private mHostAddr:Ljava/lang/String;

.field private mIsCepNotified:Z

.field private mIsFirstCep:Z

.field private mLatestRemovedParticipant:Ljava/lang/String;

.field private mLocalParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mRemoveParticipantsByUserEntity:Z

.field private mRemovingParticipant:Ljava/lang/String;

.field private mRestoreParticipantsAddr:Z

.field private mSupportConferenceManagement:Z

.field private mUnknowParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsConferenceHandler;->SENLOG:Z

    .line 90
    const/4 v0, 0x0

    const-string v1, "persist.vendor.log.tel_dbg"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    sput-boolean v0, Lcom/mediatek/ims/ImsConferenceHandler;->TELDBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/mediatek/ims/DefaultConferenceHandler;-><init>()V

    .line 102
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 112
    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    .line 113
    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    .line 119
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    .line 121
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    .line 122
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    .line 123
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mSupportConferenceManagement:Z

    .line 134
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    .line 135
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    .line 137
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConferenceHandler$1;-><init>(Lcom/mediatek/ims/ImsConferenceHandler;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    .line 403
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConferenceHandler$2;-><init>(Lcom/mediatek/ims/ImsConferenceHandler;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    const-string v0, "ImsConferenceHandler"

    const-string v1, "ImsConferenceHandler()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsConferenceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 81
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/ImsConferenceHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsConferenceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 81
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateConferenceStateWithLocalCache()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsConferenceHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->closeConferenceInternal(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 81
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsConferenceHandler;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConferenceHandler;->handleImsConfCallMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 81
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 81
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    return-object v0
.end method

.method private closeConferenceInternal(I)V
    .locals 4
    .param p1, "callId"    # I

    .line 211
    const-string v0, "ImsConferenceHandler"

    const-string v1, "closeConferenceInternal()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 213
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    .line 214
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 215
    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 220
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 222
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 223
    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    .line 224
    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 225
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 227
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 228
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 229
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 230
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    .line 231
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 233
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    .line 234
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    .line 235
    return-void
.end method

.method private createFakeInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;

    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 371
    .local v0, "userInfo":Landroid/os/Bundle;
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v1, "display-text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v1, "endpoint"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v1, "status"

    const-string v2, "connected"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-object v0
.end method

.method private fullUpdateParticipants(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;",
            ">;)V"
        }
    .end annotation

    .line 459
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    const-string v0, "ImsConferenceHandler"

    const-string v1, "reset all users as participants"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 461
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 463
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 464
    .local v2, "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "entity":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, "userAddr":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v5

    .line 467
    .local v5, "userInfo":Landroid/os/Bundle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " addr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 467
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 474
    :cond_0
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 471
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    const-string v6, "add unknow participants"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v2    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v3    # "entity":Ljava/lang/String;
    .end local v4    # "userAddr":Ljava/lang/String;
    .end local v5    # "userInfo":Landroid/os/Bundle;
    :goto_2
    goto :goto_0

    .line 477
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;
    .locals 1

    .line 165
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    if-nez v0, :cond_1

    .line 166
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/mediatek/ims/DefaultConferenceHandler;

    invoke-direct {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-direct {v0}, Lcom/mediatek/ims/ImsConferenceHandler;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    .line 172
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    return-object v0
.end method

.method private getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "addr"    # Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ImsConferenceHandler"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 629
    .local v1, "cache":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPairedAddressFromCache: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-object v1

    .line 634
    .end local v1    # "cache":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 638
    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPairedAddressFromLatestRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 640
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    return-object v0

    .line 643
    :cond_2
    return-object p1
.end method

.method private getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "uriString"    # Ljava/lang/String;

    .line 753
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 754
    return-object v0

    .line 757
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 762
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, "address":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 764
    return-object v0

    .line 769
    :cond_1
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 770
    .local v3, "userName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 771
    return-object v0

    .line 776
    :cond_2
    const/16 v0, 0x3b

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 777
    .local v0, "pIndex":I
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 779
    .local v4, "wIndex":I
    const/4 v5, 0x0

    if-ltz v0, :cond_3

    if-ltz v4, :cond_3

    .line 780
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 781
    :cond_3
    if-ltz v0, :cond_4

    .line 782
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 783
    :cond_4
    if-ltz v4, :cond_5

    .line 784
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 786
    :cond_5
    return-object v3
.end method

.method private handleImsConfCallMessage(ILjava/lang/String;)V
    .locals 11
    .param p1, "len"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 544
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    const/4 v1, -0x1

    const-string v2, "ImsConferenceHandler"

    if-ne v0, v1, :cond_0

    .line 545
    const-string v0, "ImsConference is closed"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void

    .line 549
    :cond_0
    if-eqz p2, :cond_d

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 554
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoLteConfCallMessage, data length = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConferenceHandler;->parseXmlPackage(ILjava/lang/String;)Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;

    move-result-object v0

    .line 557
    .local v0, "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    if-nez v0, :cond_2

    .line 558
    const-string v1, "can\'t create xmlData object, update conf state with local cache"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateConferenceStateWithLocalCache()V

    .line 560
    return-void

    .line 564
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 565
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getHostInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    .line 569
    :cond_3
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getCEPState()I

    move-result v3

    .line 570
    .local v3, "cepState":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    move v7, v4

    goto :goto_0

    :cond_4
    move v7, v5

    .line 571
    .local v7, "isPartialCEP":Z
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPartialCEP: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getVersion()I

    move-result v8

    .line 575
    .local v8, "version":I
    if-nez v7, :cond_6

    .line 576
    iget v9, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    if-le v9, v8, :cond_5

    if-eq v9, v1, :cond_5

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version is less than local version"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void

    .line 581
    :cond_5
    iput v8, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    .line 585
    :cond_6
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 588
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getUserCount()I

    move-result v10

    .line 592
    .local v10, "userCount":I
    if-eq v3, v4, :cond_a

    if-eq v3, v6, :cond_9

    .line 600
    if-eq v10, v1, :cond_8

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ne v10, v1, :cond_7

    goto :goto_1

    .line 603
    :cond_7
    invoke-direct {p0, v9}, Lcom/mediatek/ims/ImsConferenceHandler;->partialUpdateParticipants(Ljava/util/List;)V

    goto :goto_2

    .line 601
    :cond_8
    :goto_1
    invoke-direct {p0, v9}, Lcom/mediatek/ims/ImsConferenceHandler;->fullUpdateParticipants(Ljava/util/List;)V

    goto :goto_2

    .line 597
    :cond_9
    invoke-direct {p0, v9}, Lcom/mediatek/ims/ImsConferenceHandler;->partialUpdateParticipants(Ljava/util/List;)V

    .line 598
    goto :goto_2

    .line 594
    :cond_a
    invoke-direct {p0, v9}, Lcom/mediatek/ims/ImsConferenceHandler;->fullUpdateParticipants(Ljava/util/List;)V

    .line 595
    nop

    .line 610
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->isEmptyConference()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->shouldAutoTerminateConf()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    if-eqz v1, :cond_b

    .line 612
    const-string v1, "no participants, terminate the conference"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    sget-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v1, :cond_b

    .line 614
    invoke-virtual {v1}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onAutoTerminate()V

    .line 618
    :cond_b
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    if-eqz v1, :cond_c

    .line 619
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->restoreParticipantsAddressByLocalCache()V

    .line 622
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->notifyConfStateUpdate()V

    .line 623
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateLocalCache()V

    .line 624
    iput-boolean v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    .line 625
    return-void

    .line 550
    .end local v0    # "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    .end local v3    # "cepState":I
    .end local v7    # "isPartialCEP":Z
    .end local v8    # "version":I
    .end local v9    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    .end local v10    # "userCount":I
    :cond_d
    :goto_3
    const-string v0, "Failed to handleImsConfCallMessage due to data is empty"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void
.end method

.method private isEmptyConference()Z
    .locals 7

    .line 513
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 515
    .local v0, "userCount":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 516
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 517
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 518
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 519
    .local v3, "userHandle":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 520
    .local v4, "confInfo":Landroid/os/Bundle;
    const-string v5, "status"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, "status":Ljava/lang/String;
    const-string v6, "disconnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 522
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->isSelfAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 525
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v3    # "userHandle":Ljava/lang/String;
    .end local v4    # "confInfo":Landroid/os/Bundle;
    .end local v5    # "status":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 527
    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 528
    return v2

    .line 530
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    if-nez v3, :cond_4

    .line 531
    const-string v3, "ImsConferenceHandler"

    const-string v4, "Set mHaveUpdateConferenceWithMember = true"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    .line 534
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private isSelfAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    const-string v0, "ImsConferenceHandler"

    const-string v1, "isSelfAddress(): true, meet host info in xml"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v0, 0x1

    return v0

    .line 799
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isSelfAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 242
    const-string v0, ""

    const-string v1, "*31#"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#31#"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyConfStateUpdate()V
    .locals 8

    .line 379
    const-string v0, "ImsConferenceHandler"

    const-string v1, "notifyConfStateUpdate()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v1, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v1}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 383
    .local v1, "confState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 384
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 386
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v4, v1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit participants: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    goto :goto_0

    .line 390
    :cond_0
    const/4 v3, 0x0

    .line 391
    .local v3, "key":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 392
    .local v5, "userInfo":Landroid/os/Bundle;
    iget-object v6, v1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "submit unknow participants: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 393
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    nop

    .end local v5    # "userInfo":Landroid/os/Bundle;
    add-int/lit8 v3, v3, 0x1

    .line 396
    goto :goto_1

    .line 398
    :cond_1
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v0, :cond_2

    .line 399
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onParticipantsUpdate(Landroid/telephony/ims/ImsConferenceState;)V

    .line 401
    :cond_2
    return-void
.end method

.method private packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;
    .locals 5
    .param p1, "user"    # Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 447
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "entity":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "userAddr":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v2, "userInfo":Landroid/os/Bundle;
    const-string v3, "user"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "display-text"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEndPoint()Ljava/lang/String;

    move-result-object v3

    const-string v4, "endpoint"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v3, "user-entity"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-object v2
.end method

.method private parseXmlPackage(ILjava/lang/String;)Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    .locals 4
    .param p1, "len"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 429
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 430
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 431
    .local v0, "inStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 432
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 433
    .local v2, "saxParse":Ljavax/xml/parsers/SAXParser;
    new-instance v3, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;

    invoke-direct {v3}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;-><init>()V

    .line 434
    .local v3, "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    nop

    .line 437
    invoke-virtual {v2, v0, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    return-object v3

    .line 439
    .end local v0    # "inStream":Ljava/io/InputStream;
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "saxParse":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    :catch_0
    move-exception v0

    .line 440
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConferenceHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateConferenceStateWithLocalCache()V

    .line 442
    const/4 v1, 0x0

    return-object v1
.end method

.method private partialUpdateParticipants(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;",
            ">;)V"
        }
    .end annotation

    .line 480
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    const-string v0, "ImsConferenceHandler"

    const-string v1, "partial update participants"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 482
    .local v2, "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "entity":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "userAddr":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    if-eqz v5, :cond_0

    .line 485
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v5

    .line 488
    .local v5, "userInfo":Landroid/os/Bundle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " addr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 488
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "status":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 505
    :cond_1
    const-string v7, "dialing-out"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 506
    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 494
    :cond_2
    :goto_1
    const-string v7, "connected"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 495
    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v7, "add unknow participants"

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 497
    :cond_3
    const-string v7, "disconnected"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 499
    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 500
    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 501
    const-string v7, "remove unknow participants"

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v2    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v3    # "entity":Ljava/lang/String;
    .end local v4    # "userAddr":Ljava/lang/String;
    .end local v5    # "userInfo":Landroid/os/Bundle;
    .end local v6    # "status":Ljava/lang/String;
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 510
    :cond_5
    return-void
.end method

.method private restoreParticipantsAddressByLocalCache()V
    .locals 19

    .line 660
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 661
    .local v1, "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 664
    .local v2, "restoreList":Ljava/util/LinkedHashMap;
    new-instance v3, Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 667
    .local v3, "participants":Ljava/util/LinkedHashMap;
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 668
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, " to: "

    const-string v7, "restore participant: "

    const-string v8, "user"

    const-string v9, "ImsConferenceHandler"

    if-eqz v5, :cond_1

    .line 669
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 670
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 671
    .local v10, "userHandle":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 672
    .local v11, "confInfo":Landroid/os/Bundle;
    invoke-direct {v0, v10}, Lcom/mediatek/ims/ImsConferenceHandler;->getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 673
    .local v12, "restoreAddr":Ljava/lang/String;
    invoke-direct {v0, v10}, Lcom/mediatek/ims/ImsConferenceHandler;->isSelfAddress(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 674
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 676
    invoke-virtual {v2, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait for restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 679
    :cond_0
    invoke-virtual {v11, v8, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v8, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-direct {v0, v10}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 682
    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v10    # "userHandle":Ljava/lang/String;
    .end local v11    # "confInfo":Landroid/os/Bundle;
    .end local v12    # "restoreAddr":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 688
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 689
    .local v5, "resIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 690
    .local v10, "restoreUnknowCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 691
    .local v11, "restoreIndex":I
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 692
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v12, v11, :cond_2

    .line 693
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_4

    .line 695
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 696
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 697
    .local v13, "userHandle":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .line 698
    .local v14, "confInfo":Landroid/os/Bundle;
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 700
    .local v15, "restoreAddr":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_3

    .line 701
    move-object/from16 v16, v1

    .end local v1    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v16, "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 700
    .end local v16    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v16, v1

    .line 703
    .end local v1    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    const-string v1, "status"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "status":Ljava/lang/String;
    move-object/from16 v17, v2

    .end local v2    # "restoreList":Ljava/util/LinkedHashMap;
    .local v17, "restoreList":Ljava/util/LinkedHashMap;
    const-string v2, "disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 707
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_2

    .line 709
    :cond_4
    iget-object v2, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v15, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-virtual {v14, v8, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v2, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v13, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    move-object/from16 v18, v1

    .end local v1    # "status":Ljava/lang/String;
    .local v18, "status":Ljava/lang/String;
    invoke-direct {v0, v13}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    invoke-static {v9, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    nop

    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v13    # "userHandle":Ljava/lang/String;
    .end local v14    # "confInfo":Landroid/os/Bundle;
    .end local v15    # "restoreAddr":Ljava/lang/String;
    .end local v18    # "status":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    .line 715
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_2

    .line 691
    .end local v16    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "restoreList":Ljava/util/LinkedHashMap;
    .local v1, "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "restoreList":Ljava/util/LinkedHashMap;
    :cond_5
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 718
    .end local v1    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "restoreList":Ljava/util/LinkedHashMap;
    .restart local v16    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "restoreList":Ljava/util/LinkedHashMap;
    :goto_4
    invoke-direct {v0, v10}, Lcom/mediatek/ims/ImsConferenceHandler;->restoreUnknowParticipants(Ljava/util/ArrayList;)V

    .line 719
    return-void
.end method

.method private restoreUnknowParticipants(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 722
    .local p1, "restoreUnknowCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 723
    .local v0, "restoredUnknowParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 724
    .local v1, "restoreIndex":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 725
    .local v3, "userInfo":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v1, :cond_0

    .line 726
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 730
    .local v4, "restoreAddr":Ljava/lang/String;
    const-string v5, "user"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 734
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 736
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restore unknow participants("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 736
    const-string v6, "ImsConferenceHandler"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    nop

    .end local v3    # "userInfo":Landroid/os/Bundle;
    .end local v4    # "restoreAddr":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 740
    goto :goto_0

    .line 742
    :cond_2
    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    .line 743
    return-void
.end method

.method private sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 791
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldAutoTerminateConf()Z
    .locals 3

    .line 747
    const/4 v0, 0x1

    .line 748
    .local v0, "shouldTerminate":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldTerminate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConferenceHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return v0
.end method

.method private updateConferenceStateWithLocalCache()V
    .locals 7

    .line 346
    const-string v0, "ImsConferenceHandler"

    const-string v1, "updateConferenceStateWithLocalCache()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->shouldAutoTerminateConf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    sget-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v1}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onAutoTerminate()V

    .line 352
    :cond_0
    const-string v1, "no participants"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    .line 356
    :cond_1
    new-instance v1, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v1}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 358
    .local v1, "confState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 359
    .local v3, "addr":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->createFakeInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 360
    .local v4, "userInfo":Landroid/os/Bundle;
    iget-object v5, v1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "submit participants:  uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v3    # "addr":Ljava/lang/String;
    .end local v4    # "userInfo":Landroid/os/Bundle;
    goto :goto_0

    .line 364
    :cond_2
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v0, :cond_3

    .line 365
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onParticipantsUpdate(Landroid/telephony/ims/ImsConferenceState;)V

    .line 367
    :cond_3
    return-void
.end method

.method private updateLocalCache()V
    .locals 6

    .line 647
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 648
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 650
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 651
    .local v2, "confInfo":Landroid/os/Bundle;
    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, "status":Ljava/lang/String;
    const-string v4, "user"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, "addr":Ljava/lang/String;
    const-string v5, "disconnected"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 654
    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 656
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v2    # "confInfo":Landroid/os/Bundle;
    .end local v3    # "status":Ljava/lang/String;
    .end local v4    # "addr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 657
    :cond_1
    return-void
.end method


# virtual methods
.method public addFirstMergeParticipant(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, "num":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    return-void
.end method

.method public addLocalCache([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .line 261
    if-nez p1, :cond_0

    .line 262
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 266
    .local v2, "participant":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v2    # "participant":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    return-void
.end method

.method public closeConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeConference() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConferenceHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void

    .line 204
    :cond_1
    :goto_0
    return-void
.end method

.method public firstMerge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callId_1"    # Ljava/lang/String;
    .param p2, "callId_2"    # Ljava/lang/String;
    .param p3, "num_1"    # Ljava/lang/String;
    .param p4, "num_2"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 248
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p3}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p4}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public getConfParticipantUri(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "isRetry"    # Z

    .line 318
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    const-string v1, " addr: "

    const-string v2, "ImsConferenceHandler"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    if-eq v0, p2, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    .local v0, "confParticipantUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeParticipants confParticipantUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object p1, v0

    .line 327
    .end local v0    # "confParticipantUri":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 328
    .local v0, "confInfo":Landroid/os/Bundle;
    if-nez v0, :cond_3

    .line 329
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    return-object p1

    .line 330
    :cond_2
    :goto_0
    const-string v1, "sip:anonymous@anonymous.invalid"

    return-object v1

    .line 334
    :cond_3
    const-string v3, "user-entity"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "participantUri":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v4, "sip:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 336
    :cond_4
    move-object v3, p1

    .line 339
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeParticipants uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-object v3
.end method

.method public isConferenceActive()Z
    .locals 2

    .line 238
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public modifyParticipantComplete()V
    .locals 7

    .line 279
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 280
    .local v0, "isFirstMerge":Z
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 281
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 285
    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 288
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 289
    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyParticipantComplete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    const-string v4, "ImsConferenceHandler"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-boolean v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mSupportConferenceManagement:Z

    if-eqz v3, :cond_4

    .line 293
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 296
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 297
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 300
    :cond_5
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    if-ne v1, v2, :cond_6

    if-ne v0, v2, :cond_6

    .line 301
    const-string v1, "CEP is notify before merge complete, notify again"

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->notifyConfStateUpdate()V

    .line 304
    :cond_6
    return-void
.end method

.method public modifyParticipantFailed()V
    .locals 2

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 308
    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 309
    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyParticipantFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 311
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    const-string v1, "ImsConferenceHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    :cond_0
    return-void
.end method

.method public startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/ims/DefaultConferenceHandler$Listener;
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 181
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    const-string v1, "ImsConferenceHandler"

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "startConference() failed, a conference is ongoing"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 185
    :cond_0
    const-string v0, "startConference()"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sput-object p2, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    .line 187
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ims.conference"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 191
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 192
    iput p4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    .line 194
    iput v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 195
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP132_Peru:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 196
    invoke-static {v1, v2}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    .line 197
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP151:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 198
    invoke-static {v1, v2}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mSupportConferenceManagement:Z

    .line 199
    return-void
.end method

.method public tryAddParticipant(Ljava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .line 271
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public tryRemoveParticipant(Ljava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .line 275
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 276
    return-void
.end method

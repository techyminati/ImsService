.class public Lcom/mediatek/ims/ImsServiceCallTracker;
.super Ljava/lang/Object;
.source "ImsServiceCallTracker.java"


# static fields
.field private static final CALL_MSG_TYPE_ACTIVE:I = 0x84

.field private static final CALL_MSG_TYPE_ALERT:I = 0x2

.field private static final CALL_MSG_TYPE_DISCONNECTED:I = 0x85

.field private static final CALL_MSG_TYPE_HELD:I = 0x83

.field private static final CALL_MSG_TYPE_ID_ASSIGN:I = 0x82

.field private static final CALL_MSG_TYPE_MT:I = 0x0

.field private static final IMS_VIDEO:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceCT"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TELDBG:Z

.field private static mImsServiceCTs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ImsServiceCallTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ims/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableVolteForImsEcc:Z

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->SENLOG:Z

    .line 63
    const/4 v0, 0x0

    const-string v1, "persist.vendor.log.tel_dbg"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    sput-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->TELDBG:Z

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVolteForImsEcc:Z

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    iput p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    .line 100
    return-void
.end method

.method public static getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;
    .locals 2
    .param p0, "phoneId"    # I

    .line 91
    sget-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    new-instance v1, Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/ImsServiceCallTracker;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    :cond_0
    sget-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsServiceCallTracker;

    return-object v0
.end method

.method public static isEccExistOnAnySlot()Z
    .locals 4

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 239
    sget-object v1, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 240
    .local v1, "imsServiceCT":Lcom/mediatek/ims/ImsServiceCallTracker;
    const/4 v2, 0x0

    .line 242
    .local v2, "isEccExist":Z
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isEccExist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    const/4 v3, 0x1

    return v3

    .line 238
    .end local v1    # "imsServiceCT":Lcom/mediatek/ims/ImsServiceCallTracker;
    .end local v2    # "isEccExist":Z
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private logWithPhoneId(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 486
    sget-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->TELDBG:Z

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceCT"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void
.end method

.method public static sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 492
    sget-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->SENLOG:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->TELDBG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    const-string v0, "[hidden]"

    return-object v0

    .line 493
    :cond_1
    :goto_0
    const-string v0, "ImsServiceCT"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;
    .locals 5
    .param p1, "state"    # Lcom/mediatek/ims/ImsCallInfo$State;

    .line 126
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 129
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallInfo(state) : callID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " call num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 130
    invoke-static {v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " call State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 132
    iget-object v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v3, p1, :cond_0

    .line 133
    return-object v2

    .line 135
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    :cond_0
    goto :goto_0

    .line 136
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo;

    .line 114
    .local v0, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    const-string v1, "getCallInfo(callId) : callID: "

    if-eqz v0, :cond_0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " call num: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 116
    invoke-static {v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " call State: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-object v0
.end method

.method public getConferenceHostCall()Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 157
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 158
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 159
    iget-object v0, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0

    .line 161
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCallCount()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getEnableVolteForImsEcc()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVolteForImsEcc:Z

    return v0
.end method

.method public getFgCall()Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 148
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v3, v4, :cond_0

    .line 149
    iget-object v0, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0

    .line 151
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParticipantCallId(Ljava/lang/String;)I
    .locals 5
    .param p1, "callNumber"    # Ljava/lang/String;

    .line 171
    const/4 v0, -0x1

    .line 173
    .local v0, "participantCallId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 174
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ImsCallInfo;

    .line 175
    .local v3, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-object v4, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    iget-object v1, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    goto :goto_1

    .line 179
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v3    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 181
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParticipantCallId() : participantCallId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 183
    return v0
.end method

.method public getSelfAddressList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsXuiManager;->getSelfIdentifyUri(I)[Landroid/net/Uri;

    move-result-object v0

    .line 315
    .local v0, "selfUri":[Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 316
    const/4 v1, 0x0

    return-object v1

    .line 318
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v1, "selfAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 320
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "address":Ljava/lang/String;
    const-string v4, "[@;:]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "numberParts":[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 323
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSelfAddress() selfId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 324
    aget-object v5, v4, v6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "numberParts":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public isConferenceCall(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 204
    const/16 v0, 0x16

    if-eq v0, p1, :cond_1

    const/16 v0, 0x18

    if-eq v0, p1, :cond_1

    const/16 v0, 0x17

    if-eq v0, p1, :cond_1

    const/16 v0, 0x19

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isConferenceCallExist()Z
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 276
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 277
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    const/4 v0, 0x1

    return v0

    .line 280
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_1
    goto :goto_0

    .line 281
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isConferenceCallHost(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 212
    const/16 v0, 0x16

    if-eq v0, p1, :cond_1

    const/16 v0, 0x17

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isConferenceHostCallExist()Z
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 287
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 288
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    const/4 v0, 0x1

    return v0

    .line 291
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isEccExist()Z
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 254
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 255
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsEcc:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const/4 v0, 0x1

    return v0

    .line 258
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 259
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isInCall()Z
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 221
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 222
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 225
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 223
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .restart local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 226
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z
    .locals 2
    .param p1, "callInfo"    # Lcom/mediatek/ims/ImsCallInfo;

    .line 231
    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v1, p1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v1, p1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSelfAddress(Ljava/lang/String;)Z
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;

    .line 296
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsXuiManager;->getSelfIdentifyUri(I)[Landroid/net/Uri;

    move-result-object v0

    .line 297
    .local v0, "selfUri":[Landroid/net/Uri;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 298
    return v1

    .line 300
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 301
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "address":Ljava/lang/String;
    const-string v4, "[@;:]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "numberParts":[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 304
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSelfAddress() selfId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v1

    invoke-static {v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " addr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 306
    aget-object v5, v4, v1

    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 307
    const/4 v1, 0x1

    return v1

    .line 300
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "numberParts":[Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method public isVideoCall(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 196
    const/16 v0, 0x15

    if-eq v0, p1, :cond_1

    const/16 v0, 0x17

    if-eq v0, p1, :cond_1

    const/16 v0, 0x19

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoCallExist()Z
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 265
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 266
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    const/4 v0, 0x1

    return v0

    .line 269
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceCall(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 188
    const/16 v0, 0x14

    if-eq v0, p1, :cond_1

    const/16 v0, 0x16

    if-eq v0, p1, :cond_1

    const/16 v0, 0x18

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 21
    .param p1, "callInfo"    # [Ljava/lang/String;
    .param p2, "callSession"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 338
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 339
    .local v1, "callId":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 340
    .local v11, "msgType":I
    const/4 v2, 0x5

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    move v12, v2

    .line 341
    .local v12, "callMode":I
    const/4 v2, 0x6

    aget-object v13, p1, v2

    .line 343
    .local v13, "callNum":Ljava/lang/String;
    const/4 v2, 0x0

    .line 344
    .local v2, "isConference":Z
    invoke-virtual {v0, v12}, Lcom/mediatek/ims/ImsServiceCallTracker;->isConferenceCall(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    const/4 v2, 0x1

    move v14, v2

    goto :goto_1

    .line 344
    :cond_1
    move v14, v2

    .line 348
    .end local v2    # "isConference":Z
    .local v14, "isConference":Z
    :goto_1
    const/4 v2, 0x0

    .line 349
    .local v2, "isConferenceHost":Z
    invoke-virtual {v0, v12}, Lcom/mediatek/ims/ImsServiceCallTracker;->isConferenceCallHost(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    const/4 v2, 0x1

    move v15, v2

    goto :goto_2

    .line 349
    :cond_2
    move v15, v2

    .line 353
    .end local v2    # "isConferenceHost":Z
    .local v15, "isConferenceHost":Z
    :goto_2
    const/4 v2, 0x0

    .line 354
    .local v2, "isVideo":Z
    invoke-virtual {v0, v12}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCall(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 355
    const/4 v2, 0x1

    move v10, v2

    goto :goto_3

    .line 354
    :cond_3
    move v10, v2

    .line 358
    .end local v2    # "isVideo":Z
    .local v10, "isVideo":Z
    :goto_3
    const/4 v2, 0x0

    .line 359
    .local v2, "isEcc":Z
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 360
    const/4 v2, 0x1

    move v9, v2

    goto :goto_4

    .line 359
    :cond_4
    move v9, v2

    .line 363
    .end local v2    # "isEcc":Z
    .local v9, "isEcc":Z
    :goto_4
    const/16 v16, 0x0

    .line 364
    .local v16, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const-string v2, ", isEcc = "

    const-string v3, ", isVideo = "

    const-string v5, ", isConferenceHost = "

    const-string v6, ", isConference = "

    if-eqz v11, :cond_9

    const-string v7, "isEcc = "

    const-string v8, "isVideo = "

    move/from16 v17, v12

    .end local v12    # "callMode":I
    .local v17, "callMode":I
    const-string v12, "isConference = "

    if-eq v11, v4, :cond_7

    packed-switch v11, :pswitch_data_0

    move/from16 v20, v10

    move/from16 v18, v11

    move-object/from16 v19, v13

    move v12, v15

    move v15, v9

    goto/16 :goto_5

    .line 446
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCallInfoIndication() : CALL_MSG_TYPE_DISCONNECTED => callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 448
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    move/from16 v20, v10

    move/from16 v18, v11

    move-object/from16 v19, v13

    move v12, v15

    move v15, v9

    goto/16 :goto_5

    .line 434
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCallInfoIndication() : CALL_MSG_TYPE_ACTIVE => callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 436
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 437
    .end local v16    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .local v2, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v2, :cond_5

    return-void

    .line 438
    :cond_5
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 439
    iput-boolean v14, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 440
    iput-boolean v10, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 441
    iget-object v3, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    move/from16 v20, v10

    move/from16 v18, v11

    move-object/from16 v19, v13

    move v12, v15

    move v15, v9

    goto/16 :goto_6

    .line 423
    .end local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v16    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCallInfoIndication() : CALL_MSG_TYPE_HELD => callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 425
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 426
    .end local v16    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v2, :cond_6

    return-void

    .line 427
    :cond_6
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 428
    iput-boolean v14, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 429
    iget-object v3, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    move/from16 v20, v10

    move/from16 v18, v11

    move-object/from16 v19, v13

    move v12, v15

    move v15, v9

    goto/16 :goto_6

    .line 390
    .end local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v16    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processCallInfoIndication() : CALL_MSG_TYPE_ID_ASSIGN => callId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 397
    sget-object v12, Lcom/mediatek/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 398
    .local v12, "state":Lcom/mediatek/ims/ImsCallInfo$State;
    iget-object v8, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lcom/mediatek/ims/ImsCallInfo;

    move-object v2, v7

    move-object v3, v1

    move-object v4, v13

    move v5, v14

    move v6, v15

    move/from16 v18, v11

    move-object v11, v7

    .end local v11    # "msgType":I
    .local v18, "msgType":I
    move v7, v10

    move-object/from16 v19, v13

    move-object v13, v8

    .end local v13    # "callNum":Ljava/lang/String;
    .local v19, "callNum":Ljava/lang/String;
    move v8, v9

    move/from16 v20, v15

    move v15, v9

    .end local v9    # "isEcc":Z
    .local v15, "isEcc":Z
    .local v20, "isConferenceHost":Z
    move-object v9, v12

    move v0, v10

    .end local v10    # "isVideo":Z
    .local v0, "isVideo":Z
    move-object/from16 v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/mediatek/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLcom/mediatek/ims/ImsCallInfo$State;Lcom/mediatek/ims/ImsCallSessionProxy;)V

    invoke-virtual {v13, v1, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    move/from16 v12, v20

    move/from16 v20, v0

    goto/16 :goto_5

    .line 412
    .end local v0    # "isVideo":Z
    .end local v12    # "state":Lcom/mediatek/ims/ImsCallInfo$State;
    .end local v18    # "msgType":I
    .end local v19    # "callNum":Ljava/lang/String;
    .end local v20    # "isConferenceHost":Z
    .restart local v9    # "isEcc":Z
    .restart local v10    # "isVideo":Z
    .restart local v11    # "msgType":I
    .restart local v13    # "callNum":Ljava/lang/String;
    .local v15, "isConferenceHost":Z
    :cond_7
    move v0, v10

    move/from16 v18, v11

    move-object/from16 v19, v13

    move/from16 v20, v15

    move v15, v9

    .end local v9    # "isEcc":Z
    .end local v10    # "isVideo":Z
    .end local v11    # "msgType":I
    .end local v13    # "callNum":Ljava/lang/String;
    .restart local v0    # "isVideo":Z
    .local v15, "isEcc":Z
    .restart local v18    # "msgType":I
    .restart local v19    # "callNum":Ljava/lang/String;
    .restart local v20    # "isConferenceHost":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCallInfoIndication() : CALL_MSG_TYPE_ALERT => callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v11, v0

    move-object/from16 v0, p0

    .end local v0    # "isVideo":Z
    .local v11, "isVideo":Z
    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 414
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 415
    .end local v16    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v2, :cond_8

    return-void

    .line 416
    :cond_8
    iput-boolean v14, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 417
    iput-boolean v11, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 418
    iget-object v3, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    move/from16 v12, v20

    move/from16 v20, v11

    goto :goto_6

    .line 367
    .end local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v17    # "callMode":I
    .end local v18    # "msgType":I
    .end local v19    # "callNum":Ljava/lang/String;
    .end local v20    # "isConferenceHost":Z
    .restart local v9    # "isEcc":Z
    .restart local v10    # "isVideo":Z
    .local v11, "msgType":I
    .local v12, "callMode":I
    .restart local v13    # "callNum":Ljava/lang/String;
    .local v15, "isConferenceHost":Z
    .restart local v16    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_9
    move/from16 v18, v11

    move/from16 v17, v12

    move-object/from16 v19, v13

    move/from16 v20, v15

    move v15, v9

    move v11, v10

    .end local v9    # "isEcc":Z
    .end local v10    # "isVideo":Z
    .end local v12    # "callMode":I
    .end local v13    # "callNum":Ljava/lang/String;
    .local v11, "isVideo":Z
    .local v15, "isEcc":Z
    .restart local v17    # "callMode":I
    .restart local v18    # "msgType":I
    .restart local v19    # "callNum":Ljava/lang/String;
    .restart local v20    # "isConferenceHost":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processCallInfoIndication() : CALL_MSG_TYPE_MT => callId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v20

    .end local v20    # "isConferenceHost":Z
    .local v12, "isConferenceHost":Z
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 374
    sget-object v13, Lcom/mediatek/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 375
    .local v13, "state":Lcom/mediatek/ims/ImsCallInfo$State;
    iget-object v10, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Lcom/mediatek/ims/ImsCallInfo;

    move-object v2, v9

    move-object v3, v1

    move-object/from16 v4, v19

    move v5, v14

    move v6, v12

    move v7, v11

    move v8, v15

    move-object v0, v9

    move-object v9, v13

    move/from16 v20, v11

    move-object v11, v10

    .end local v11    # "isVideo":Z
    .local v20, "isVideo":Z
    move-object/from16 v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/mediatek/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLcom/mediatek/ims/ImsCallInfo$State;Lcom/mediatek/ims/ImsCallSessionProxy;)V

    invoke-virtual {v11, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    nop

    .line 454
    .end local v12    # "isConferenceHost":Z
    .end local v18    # "msgType":I
    .end local v19    # "callNum":Ljava/lang/String;
    .end local v20    # "isVideo":Z
    .restart local v9    # "isEcc":Z
    .restart local v10    # "isVideo":Z
    .local v11, "msgType":I
    .local v13, "callNum":Ljava/lang/String;
    .local v15, "isConferenceHost":Z
    :goto_5
    move-object/from16 v2, v16

    .end local v9    # "isEcc":Z
    .end local v10    # "isVideo":Z
    .end local v11    # "msgType":I
    .end local v13    # "callNum":Ljava/lang/String;
    .end local v16    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v12    # "isConferenceHost":Z
    .local v15, "isEcc":Z
    .restart local v18    # "msgType":I
    .restart local v19    # "callNum":Ljava/lang/String;
    .restart local v20    # "isVideo":Z
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processCallModeChangeIndication([Ljava/lang/String;)V
    .locals 5
    .param p1, "callModeInfo"    # [Ljava/lang/String;

    .line 463
    const/4 v0, -0x1

    .line 465
    .local v0, "callMode":I
    if-nez p1, :cond_0

    .line 466
    return-void

    .line 469
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 470
    .local v1, "callId":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 471
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 473
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCallModeChangeIndication() :callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 478
    .local v2, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v2, :cond_2

    return-void

    .line 480
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCall(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 481
    iget-object v3, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    return-void
.end method

.method public removeCallConnection(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    return-void
.end method

.method public setEnableVolteForImsEcc(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVolteForImsEcc:Z

    .line 108
    return-void
.end method

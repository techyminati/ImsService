.class public Lcom/mediatek/internal/telephony/MtkMessageBoost;
.super Ljava/lang/Object;
.source "MtkMessageBoost.java"


# static fields
.field protected static final MESSAGE_BOOT_TIME_MSEC:I = 0x2710

.field private static sMtkMessageBoost:Lcom/mediatek/internal/telephony/MtkMessageBoost;


# instance fields
.field mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

.field protected mPriorityFlag:I


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkRIL;)V
    .registers 3
    .param p1, "mtkRIL"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkMessageBoost;->mPriorityFlag:I

    .line 92
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkMessageBoost;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 93
    return-void
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/MtkMessageBoost;
    .registers 2

    .line 84
    const-class v0, Lcom/mediatek/internal/telephony/MtkMessageBoost;

    monitor-enter v0

    .line 85
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/MtkMessageBoost;->sMtkMessageBoost:Lcom/mediatek/internal/telephony/MtkMessageBoost;

    monitor-exit v0

    return-object v1

    .line 86
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static init(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/mediatek/internal/telephony/MtkMessageBoost;
    .registers 3
    .param p0, "mtkRIL"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 71
    const-class v0, Lcom/mediatek/internal/telephony/MtkMessageBoost;

    monitor-enter v0

    .line 72
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/MtkMessageBoost;->sMtkMessageBoost:Lcom/mediatek/internal/telephony/MtkMessageBoost;

    if-nez v1, :cond_e

    .line 73
    new-instance v1, Lcom/mediatek/internal/telephony/MtkMessageBoost;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkMessageBoost;-><init>(Lcom/mediatek/internal/telephony/MtkRIL;)V

    sput-object v1, Lcom/mediatek/internal/telephony/MtkMessageBoost;->sMtkMessageBoost:Lcom/mediatek/internal/telephony/MtkMessageBoost;

    .line 75
    :cond_e
    sget-object v1, Lcom/mediatek/internal/telephony/MtkMessageBoost;->sMtkMessageBoost:Lcom/mediatek/internal/telephony/MtkMessageBoost;

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static sendMessageResponseWithPriority(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 6
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 115
    if-eqz p0, :cond_14

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    .line 118
    .local v0, "boost_time":J
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 119
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 121
    .end local v0    # "boost_time":J
    :cond_14
    return-void
.end method


# virtual methods
.method public clearPriorityFlag(I)V
    .registers 4
    .param p1, "flag"    # I

    .line 101
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkMessageBoost;->mPriorityFlag:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkMessageBoost;->mPriorityFlag:I

    .line 102
    return-void
.end method

.method public getPriorityFlag(I)I
    .registers 3
    .param p1, "flag"    # I

    .line 106
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkMessageBoost;->mPriorityFlag:I

    and-int/2addr v0, p1

    return v0
.end method

.method public responseIntArrayListWithPriority(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p2, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMessageBoost;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 159
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_32

    .line 160
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 161
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 162
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 164
    .end local v2    # "i":I
    :cond_24
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_2d

    .line 165
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkMessageBoost;->sendMessageResponseWithPriority(Landroid/os/Message;Ljava/lang/Object;)V

    .line 167
    :cond_2d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkMessageBoost;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 169
    .end local v1    # "ret":[I
    :cond_32
    return-void
.end method

.method public varargs responseIntsWithPriority(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "var"    # [I

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 150
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 152
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkMessageBoost;->responseIntArrayListWithPriority(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 153
    return-void
.end method

.method public responseStringArrayListWithPriority(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/RIL;",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p3, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 135
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v0, :cond_2a

    .line 136
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 137
    .local v1, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 138
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 140
    .end local v2    # "i":I
    :cond_1e
    iget v2, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_27

    .line 141
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/MtkMessageBoost;->sendMessageResponseWithPriority(Landroid/os/Message;Ljava/lang/Object;)V

    .line 143
    :cond_27
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 145
    .end local v1    # "ret":[Ljava/lang/String;
    :cond_2a
    return-void
.end method

.method public varargs responseStringsWithPriority(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "str"    # [Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 126
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 128
    .end local v1    # "i":I
    :cond_11
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMessageBoost;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v1, p1, v0}, Lcom/mediatek/internal/telephony/MtkMessageBoost;->responseStringArrayListWithPriority(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 129
    return-void
.end method

.method public setPriorityFlag(ILcom/android/internal/telephony/Phone;)V
    .registers 4
    .param p1, "flag"    # I
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 96
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkMessageBoost;->mPriorityFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkMessageBoost;->mPriorityFlag:I

    .line 97
    return-void
.end method

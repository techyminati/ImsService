.class Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
.super Ljava/lang/Object;
.source "MMTelSSTransport.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MMTelSSReq"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mNext:Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mp:Landroid/os/Parcel;

.field requestParm:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 123
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sNextSerial:I

    .line 124
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 125
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPoolSync:Ljava/lang/Object;

    .line 126
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPool:Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 127
    sput v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .registers 6
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_4
    sget-object v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPool:Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    if-eqz v2, :cond_16

    .line 153
    move-object v0, v2

    .line 154
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mNext:Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    sput-object v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPool:Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 155
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mNext:Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 156
    sget v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPoolSize:I

    .line 158
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_59

    .line 160
    if-nez v0, :cond_21

    .line 161
    new-instance v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    invoke-direct {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;-><init>()V

    move-object v0, v1

    move-object v2, v0

    goto :goto_22

    .line 160
    :cond_21
    move-object v2, v0

    .line 164
    .end local v0    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .local v2, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    :goto_22
    sget-object v3, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v3

    .line 165
    :try_start_25
    sget v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sNextSerial:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sNextSerial:I

    iput v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mSerial:I

    .line 166
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_56

    .line 167
    iput p0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mRequest:I

    .line 168
    iput-object p1, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 171
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_41

    goto :goto_49

    .line 172
    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Message target must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_49
    :goto_49
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    iget v1, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mSerial:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return-object v2

    .line 166
    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0

    .line 158
    .end local v2    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .restart local v0    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    :catchall_59
    move-exception v2

    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v2
.end method

.method static resetSerial()V
    .registers 2

    .line 204
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    const/4 v1, 0x0

    :try_start_4
    sput v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sNextSerial:I

    .line 206
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .registers 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 233
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 235
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mRequest:I

    .line 236
    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    const-string v2, "MMTelSSReq"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3b

    .line 240
    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 241
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 244
    :cond_3b
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-eqz v1, :cond_45

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 248
    :cond_45
    return-void
.end method

.method release()V
    .registers 4

    .line 189
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    sget v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_15

    .line 191
    sget-object v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPool:Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    iput-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mNext:Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 192
    sput-object p0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPool:Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 193
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->sPoolSize:I

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    .line 196
    :cond_15
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .registers 6

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 215
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mSerial:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "sn":Ljava/lang/String;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "s":I
    :goto_17
    rsub-int/lit8 v4, v3, 0x4

    if-ge v2, v4, :cond_23

    .line 220
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 223
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

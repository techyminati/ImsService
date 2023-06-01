.class public Lcom/mediatek/net/connectivity/MtkPacketMessage;
.super Ljava/lang/Object;
.source "MtkPacketMessage.java"


# static fields
.field private static final DBG:Z

.field private static final INVALID_VALUE:I = -0x1

.field private static final NFATTR_HEADER_SIZE:I = 0x4

.field private static final NFA_ALIGN_TO:I = 0x4

.field private static final NFMSG_SIZE:I = 0x4

.field public static final NF_ACCEPT:I = 0x1

.field public static final NF_DROP:I = 0x0

.field private static final NLMSGHDR_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "[MDC]MtkPacketMessage"

.field private static final VERDICT_SIZE:I = 0x8


# instance fields
.field private final NFQA_PACKET_HDR:S

.field private final NLMSG_ERROR:S

.field private mLen:I

.field private mPacketId:I

.field private mQueueNumber:I

.field private mType:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->NLMSG_ERROR:S

    .line 38
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->NFQA_PACKET_HDR:S

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mLen:I

    .line 60
    iput-short v0, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mType:S

    .line 62
    iput v0, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mQueueNumber:I

    .line 63
    iput v0, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mPacketId:I

    .line 64
    return-void
.end method

.method public static getBindQueueMessage(I)[B
    .registers 2
    .param p0, "queueNumber"    # I

    .line 182
    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    .line 185
    .local v0, "bindMessage":[B
    invoke-static {v0, p0}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->updateQueueByte([BI)V

    .line 186
    return-object v0

    nop

    :array_c
    .array-data 1
        0x1ct
        0x0t
        0x0t
        0x0t
        0x2t
        0x3t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getReverseInt(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method private getReverseShort(Ljava/nio/ByteBuffer;)S
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 156
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public static getSetModeMessage(I)[B
    .registers 2
    .param p0, "queueNumber"    # I

    .line 198
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    .line 202
    .local v0, "modeMessage":[B
    invoke-static {v0, p0}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->updateQueueByte([BI)V

    .line 203
    return-object v0

    nop

    :array_c
    .array-data 1
        0x20t
        0x0t
        0x0t
        0x0t
        0x2t
        0x3t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xct
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getUnbindQueueMessage(I)[B
    .registers 2
    .param p0, "queueNumber"    # I

    .line 190
    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    .line 193
    .local v0, "unbindMessage":[B
    invoke-static {v0, p0}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->updateQueueByte([BI)V

    .line 194
    return-object v0

    nop

    :array_c
    .array-data 1
        0x1ct
        0x0t
        0x0t
        0x0t
        0x2t
        0x3t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getVerdictMessage(III)[B
    .registers 7
    .param p0, "queueNumber"    # I
    .param p1, "packetId"    # I
    .param p2, "response"    # I

    .line 207
    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    .line 211
    .local v0, "verdictPrefix":[B
    invoke-static {v0, p0}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->updateQueueByte([BI)V

    .line 213
    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    .line 214
    .local v1, "totalSize":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 215
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 219
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3

    nop

    :array_20
    .array-data 1
        0x20t
        0x0t
        0x0t
        0x0t
        0x1t
        0x3t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xct
        0x0t
        0x2t
        0x0t
    .end array-data
.end method

.method private isErrorMessage(Ljava/nio/ByteBuffer;)Z
    .registers 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 97
    iget-short v0, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 98
    invoke-direct {p0, p1}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->getReverseInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 99
    .local v0, "errno":I
    const-string v1, "[MDC]MtkPacketMessage"

    if-nez v0, :cond_13

    .line 100
    const-string v2, "This is ACK message "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 103
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseFromBytes errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_27
    const/4 v1, 0x1

    return v1

    .line 107
    .end local v0    # "errno":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method private parseHeader([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 111
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->getReverseInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mLen:I

    .line 113
    invoke-direct {p0, v0}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->getReverseShort(Ljava/nio/ByteBuffer;)S

    move-result v1

    iput-short v1, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mType:S

    .line 114
    return-void
.end method

.method private parsePacketId([B)V
    .registers 9
    .param p1, "bytes"    # [B

    .line 124
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 126
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_65

    .line 127
    invoke-direct {p0, v0}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->getReverseShort(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 128
    .local v1, "nfaLen":I
    invoke-direct {p0, v0}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->getReverseShort(Ljava/nio/ByteBuffer;)S

    move-result v3

    .line 129
    .local v3, "nfaType":S
    sget-boolean v4, Lcom/mediatek/net/connectivity/MtkPacketMessage;->DBG:Z

    if-eqz v4, :cond_3f

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsePacketId nfa len/type/remaining "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    const-string v5, "[MDC]MtkPacketMessage"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_3f
    rem-int/lit8 v4, v1, 0x4

    const/4 v5, 0x1

    if-lez v4, :cond_49

    .line 136
    div-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v5

    mul-int/lit8 v1, v4, 0x4

    .line 139
    :cond_49
    add-int/lit8 v2, v1, -0x4

    new-array v2, v2, [B

    .line 140
    .local v2, "nfaBytes":[B
    array-length v4, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-gt v4, v6, :cond_64

    .line 141
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 143
    if-ne v3, v5, :cond_64

    .line 144
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mPacketId:I

    .line 145
    goto :goto_65

    .line 148
    .end local v1    # "nfaLen":I
    .end local v2    # "nfaBytes":[B
    .end local v3    # "nfaType":S
    :cond_64
    goto :goto_4

    .line 149
    :cond_65
    :goto_65
    return-void
.end method

.method private parseQueueNumber([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 117
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 118
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 119
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 120
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mQueueNumber:I

    .line 121
    return-void
.end method

.method private static updateQueueByte([BI)V
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "queue"    # I

    .line 223
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 225
    .local v0, "queueBytes":[B
    array-length v1, p0

    const/16 v2, 0x14

    if-ge v1, v2, :cond_13

    .line 226
    return-void

    .line 230
    :cond_13
    const/16 v1, 0x12

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    aput-byte v2, p0, v1

    .line 231
    const/16 v1, 0x13

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    aput-byte v2, p0, v1

    .line 232
    return-void
.end method


# virtual methods
.method public getPacketId()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mPacketId:I

    return v0
.end method

.method public getQueueNumber()I
    .registers 2

    .line 168
    iget v0, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mQueueNumber:I

    return v0
.end method

.method public getType()S
    .registers 2

    .line 160
    iget-short v0, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mType:S

    return v0
.end method

.method public parseFromBytes([B)V
    .registers 8
    .param p1, "bytes"    # [B

    .line 67
    sget-boolean v0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->DBG:Z

    const-string v1, "[MDC]MtkPacketMessage"

    if-eqz v0, :cond_c

    .line 68
    const-string v0, "parseFromBytes..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 70
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseFromBytes "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_24
    array-length v0, p1

    const/16 v2, 0x14

    if-ge v0, v2, :cond_2f

    .line 74
    const-string v0, "parseFromBytes: too short NLMSG!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 78
    :cond_2f
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 80
    .local v2, "nlmsg":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 81
    invoke-direct {p0, v2}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->parseHeader([B)V

    .line 83
    invoke-direct {p0, v0}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->isErrorMessage(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 84
    return-void

    .line 87
    :cond_44
    const/4 v3, 0x4

    new-array v4, v3, [B

    .line 88
    .local v4, "nfmsg":[B
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 89
    invoke-direct {p0, v4}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->parseQueueNumber([B)V

    .line 91
    array-length v5, p1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    new-array v1, v5, [B

    .line 92
    .local v1, "nfatrr":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 93
    invoke-direct {p0, v1}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->parsePacketId([B)V

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkPacketMessage{ mLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mQueueNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mQueueNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPacketId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/net/connectivity/MtkPacketMessage;->mPacketId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
.super Ljava/lang/Object;
.source "PplMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ppl/PplMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingMessage"
.end annotation


# static fields
.field public static final ALL_SIM_ID:I = -0x2

.field public static final ANY_SIM_ID:I = -0x1

.field public static final INVALID_ID:J = -0x1L

.field public static final INVALID_SIM_ID:I = -0x3

.field public static final KEY_FIRST_TRIAL:Ljava/lang/String; = "firstTrial"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final KEY_SEGMENT_INDEX:Ljava/lang/String; = "segmentIndex"

.field public static final KEY_SIM_ID:Ljava/lang/String; = "simId"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final PENDING_MESSAGE_LENGTH:I = 0x31


# instance fields
.field public content:Ljava/lang/String;

.field public id:J

.field public number:Ljava/lang/String;

.field public simId:I

.field public type:B


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    .line 106
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    .line 108
    iput v0, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->simId:I

    .line 109
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->content:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public constructor <init>(JBLjava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "id"    # J
    .param p3, "type"    # B
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "simId"    # I
    .param p6, "content"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-wide p1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    .line 98
    iput-byte p3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    .line 99
    iput-object p4, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    .line 100
    iput p5, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->simId:I

    .line 101
    iput-object p6, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->content:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->decode([BI)V

    .line 114
    return-void
.end method

.method private static bytes2long([BI)J
    .registers 8
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .line 164
    const-wide/16 v0, 0x0

    .line 165
    .local v0, "temp":J
    const-wide/16 v2, 0x0

    .line 166
    .local v2, "res":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    const/16 v5, 0x8

    if-ge v4, v5, :cond_15

    .line 167
    shl-long/2addr v2, v5

    .line 168
    add-int v5, v4, p1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v0, v5

    .line 169
    or-long/2addr v2, v0

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 171
    .end local v4    # "i":I
    :cond_15
    return-wide v2
.end method

.method public static getNextId()J
    .registers 2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static long2bytes(J)[B
    .registers 7
    .param p0, "num"    # J

    .line 175
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 176
    .local v1, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_14

    .line 177
    mul-int/lit8 v3, v2, 0x8

    rsub-int/lit8 v3, v3, 0x38

    ushr-long v3, p0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 179
    .end local v2    # "i":I
    :cond_14
    return-object v1
.end method


# virtual methods
.method public clone()Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
    .registers 9

    .line 117
    new-instance v7, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    iget-wide v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->simId:I

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->content:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;-><init>(JBLjava/lang/String;ILjava/lang/String;)V

    return-object v7
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->clone()Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode([BI)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 151
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    aget-byte p2, p1, p2

    iput-byte p2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    .line 152
    invoke-static {p1, v0}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->bytes2long([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    .line 153
    add-int/lit8 v0, v0, 0x8

    .line 154
    move p2, v0

    .line 155
    .local p2, "j":I
    :goto_f
    add-int/lit8 v1, v0, 0x28

    if-ge p2, v1, :cond_1b

    .line 156
    aget-byte v1, p1, p2

    if-nez v1, :cond_18

    .line 157
    goto :goto_1b

    .line 155
    :cond_18
    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    .line 160
    :cond_1b
    :goto_1b
    new-instance v1, Ljava/lang/String;

    sub-int v2, p2, v0

    invoke-direct {v1, p1, v0, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public encode([BI)V
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 137
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    aput-byte v1, p1, p2

    .line 138
    iget-wide v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->long2bytes(J)[B

    move-result-object p2

    .line 139
    .local p2, "idBytes":[B
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    add-int/lit8 v0, v0, 0x8

    .line 141
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 142
    .local v1, "numberBytes":[B
    array-length v3, v1

    const/16 v4, 0x28

    if-gt v3, v4, :cond_27

    .line 145
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 147
    array-length v3, v1

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    return-void

    .line 143
    :cond_27
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Destination number is too long"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->type:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->simId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

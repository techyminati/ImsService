.class public Lcom/mediatek/internal/telephony/ppl/PplControlData;
.super Ljava/lang/Object;
.source "PplControlData.java"


# static fields
.field private static final HEADER_SIZE:I = 0x3c

.field public static final SALT_LIST_LENGTH:I = 0x28

.field public static final SALT_SIZE:I = 0x14

.field public static final SECRET_LIST_LENGTH:I = 0x28

.field public static final SECRET_SIZE:I = 0x20

.field public static final SIM_FINGERPRINT_LENGTH:I = 0x28

.field public static final STATUS_ENABLED:B = 0x2t

.field public static final STATUS_LOCKED:B = 0x4t

.field public static final STATUS_PROVISIONED:B = 0x1t

.field public static final STATUS_SIM_LOCKED:B = 0x8t

.field public static final STATUS_WIPE_REQUESTED:B = 0x10t

.field private static final TAG:Ljava/lang/String; = "PPL/ControlData"

.field public static final TRUSTED_NUMBER_LENGTH:I = 0x28

.field public static final VERSION:B = 0x1t

.field private static mSIMComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field public PendingMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;",
            ">;"
        }
    .end annotation
.end field

.field public SIMFingerprintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public TrustedNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public salt:[B

.field public secret:[B

.field public status:B

.field public version:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 328
    new-instance v0, Lcom/mediatek/internal/telephony/ppl/PplControlData$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ppl/PplControlData$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->mSIMComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 35
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 36
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    return-void
.end method

.method public static buildControlData([B)Lcom/mediatek/internal/telephony/ppl/PplControlData;
    .registers 4
    .param p0, "data"    # [B

    .line 188
    new-instance v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;-><init>()V

    .line 189
    .local v0, "result":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    if-eqz p0, :cond_e

    array-length v1, p0

    if-eqz v1, :cond_e

    .line 190
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->decode([B)V

    goto :goto_15

    .line 192
    :cond_e
    const-string v1, "PPL/ControlData"

    const-string v2, "buildControlData: data is empty, return empty instance"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_15
    return-object v0
.end method

.method public static compareSIMFingerprints([B[B)I
    .registers 5
    .param p0, "lhs"    # [B
    .param p1, "rhs"    # [B

    .line 316
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_15

    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 320
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    sub-int/2addr v1, v2

    .line 321
    .local v1, "difference":I
    if-eqz v1, :cond_10

    .line 322
    return v1

    .line 319
    .end local v1    # "difference":I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 325
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_15
    new-instance v0, Ljava/lang/Error;

    const-string v1, "The two fingerprints must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDataSize()I
    .registers 3

    .line 167
    const/16 v0, 0x3c

    .line 168
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 169
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    .line 171
    :cond_d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v1, :cond_18

    .line 172
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    .line 174
    :cond_18
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v1, :cond_23

    .line 175
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x31

    add-int/2addr v0, v1

    .line 177
    :cond_23
    return v0
.end method

.method public static sortSIMFingerprints([[B)[[B
    .registers 4
    .param p0, "input"    # [[B

    .line 307
    invoke-virtual {p0}, [[B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 308
    .local v0, "result":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 309
    aget-object v2, v0, v1

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v0, v1

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 311
    .end local v1    # "i":I
    :cond_17
    sget-object v1, Lcom/mediatek/internal/telephony/ppl/PplControlData;->mSIMComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 312
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 237
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 238
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 239
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 240
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 242
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 243
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 244
    return-void
.end method

.method public clone()Lcom/mediatek/internal/telephony/ppl/PplControlData;
    .registers 6

    .line 203
    new-instance v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;-><init>()V

    .line 204
    .local v0, "result":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    iput-byte v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 205
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    iput-byte v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 206
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    .line 207
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    .line 208
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    .line 209
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4c

    .line 211
    iget-object v3, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .end local v1    # "i":I
    :cond_4c
    goto :goto_4f

    .line 214
    :cond_4d
    iput-object v2, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 216
    :goto_4f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v1, :cond_73

    .line 218
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 219
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    .local v3, "s":Ljava/lang/String;
    iget-object v4, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_60

    :cond_72
    goto :goto_75

    .line 223
    :cond_73
    iput-object v2, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 225
    :goto_75
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v1, :cond_9d

    .line 226
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 227
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_86
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    .line 228
    .local v2, "pm":Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->clone()Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v2    # "pm":Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;
    goto :goto_86

    :cond_9c
    goto :goto_9f

    .line 231
    :cond_9d
    iput-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 233
    :goto_9f
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->clone()Lcom/mediatek/internal/telephony/ppl/PplControlData;

    move-result-object v0

    return-object v0
.end method

.method public decode([B)V
    .registers 12
    .param p1, "data"    # [B

    .line 115
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 116
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 117
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    .line 118
    .local v1, "numberOfSIMFingerprint":B
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    .line 119
    .local v2, "numberOfTrustedNumber":B
    const/4 v3, 0x4

    aget-byte v3, p1, v3

    .line 120
    .local v3, "numberOfPendingMessage":B
    const/16 v4, 0x8

    .line 121
    .local v4, "offset":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v6, v5

    invoke-static {p1, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v5, v5

    add-int/2addr v4, v5

    .line 123
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v6, v5

    invoke-static {p1, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v5, v5

    add-int/2addr v4, v5

    .line 125
    const/4 v5, 0x0

    if-eqz v1, :cond_49

    .line 126
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 127
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_34
    if-ge v6, v1, :cond_48

    .line 128
    const/16 v7, 0x28

    new-array v8, v7, [B

    .line 129
    .local v8, "fingerprint":[B
    invoke-static {p1, v4, v8, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    nop

    .end local v8    # "fingerprint":[B
    add-int/lit8 v4, v4, 0x28

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .end local v6    # "i":I
    :cond_48
    goto :goto_4b

    .line 134
    :cond_49
    iput-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 136
    :goto_4b
    if-eqz v2, :cond_77

    .line 137
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_55
    if-ge v0, v2, :cond_76

    .line 139
    move v6, v4

    .line 140
    .local v6, "j":I
    :goto_58
    add-int/lit8 v7, v4, 0x28

    if-ge v6, v7, :cond_64

    .line 141
    aget-byte v7, p1, v6

    if-nez v7, :cond_61

    .line 142
    goto :goto_64

    .line 140
    :cond_61
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    .line 145
    :cond_64
    :goto_64
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    new-instance v8, Ljava/lang/String;

    sub-int v9, v6, v4

    invoke-direct {v8, p1, v4, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    nop

    .end local v6    # "j":I
    add-int/lit8 v4, v4, 0x28

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .end local v0    # "i":I
    :cond_76
    goto :goto_79

    .line 149
    :cond_77
    iput-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 151
    :goto_79
    if-eqz v3, :cond_95

    .line 152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 153
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_83
    if-ge v0, v3, :cond_94

    .line 154
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    new-instance v6, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    invoke-direct {v6, p1, v4}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;-><init>([BI)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v4, v4, 0x31

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .end local v0    # "i":I
    :cond_94
    goto :goto_97

    .line 158
    :cond_95
    iput-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 160
    :goto_97
    return-void
.end method

.method public encode()[B
    .registers 8

    .line 66
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->getDataSize()I

    move-result v0

    new-array v0, v0, [B

    .line 67
    .local v0, "result":[B
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 68
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 69
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    if-nez v1, :cond_16

    move v1, v2

    goto :goto_1b

    :cond_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-byte v1, v1

    :goto_1b
    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 70
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-nez v3, :cond_25

    move v3, v2

    goto :goto_2a

    :cond_25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v3, v3

    :goto_2a
    aput-byte v3, v0, v1

    .line 71
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-nez v3, :cond_33

    move v3, v2

    goto :goto_38

    :cond_33
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v3, v3

    :goto_38
    aput-byte v3, v0, v1

    .line 72
    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 73
    const/4 v1, 0x6

    aput-byte v2, v0, v1

    .line 74
    const/4 v1, 0x7

    aput-byte v2, v0, v1

    .line 75
    const/16 v1, 0x8

    .line 76
    .local v1, "offset":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v4, v3

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->secret:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 78
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v4, v3

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->salt:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 80
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    const/16 v4, 0x28

    if-eqz v3, :cond_76

    .line 81
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_60
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_76

    .line 82
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    add-int/lit8 v1, v1, 0x28

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 87
    .end local v3    # "i":I
    :cond_76
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    if-eqz v3, :cond_a7

    .line 88
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7b
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_a7

    .line 89
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 90
    .local v5, "buffer":[B
    array-length v6, v5

    if-gt v6, v4, :cond_9f

    .line 93
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 95
    invoke-static {v5, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    nop

    .end local v5    # "buffer":[B
    add-int/lit8 v1, v1, 0x28

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 91
    .restart local v5    # "buffer":[B
    :cond_9f
    new-instance v2, Ljava/lang/Error;

    const-string v4, "Trusted number is too long"

    invoke-direct {v2, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v3    # "i":I
    .end local v5    # "buffer":[B
    :cond_a7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    if-eqz v2, :cond_c4

    .line 100
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_ac
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c4

    .line 101
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;

    invoke-virtual {v3, v0, v1}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;->encode([BI)V

    .line 102
    add-int/lit8 v1, v1, 0x31

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_ac

    .line 105
    .end local v2    # "i":I
    :cond_c4
    return-object v0
.end method

.method public hasWipeFlag()Z
    .registers 3

    .line 259
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isEnabled()Z
    .registers 3

    .line 247
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isLocked()Z
    .registers 3

    .line 283
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isProvisioned()Z
    .registers 3

    .line 271
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isSIMLocked()Z
    .registers 3

    .line 295
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public setEnable(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 251
    if-eqz p1, :cond_a

    .line 252
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_11

    .line 254
    :cond_a
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 256
    :goto_11
    return-void
.end method

.method public setLock(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 287
    if-eqz p1, :cond_a

    .line 288
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_11

    .line 290
    :cond_a
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 292
    :goto_11
    return-void
.end method

.method public setProvision(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 275
    if-eqz p1, :cond_a

    .line 276
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_11

    .line 278
    :cond_a
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 280
    :goto_11
    return-void
.end method

.method public setSIMLock(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 299
    if-eqz p1, :cond_a

    .line 300
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_11

    .line 302
    :cond_a
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 304
    :goto_11
    return-void
.end method

.method public setWipeFlag(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 263
    if-eqz p1, :cond_a

    .line 264
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    goto :goto_11

    .line 266
    :cond_a
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 268
    :goto_11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PplControlData "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->version:B

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->status:B

    .line 343
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->SIMFingerprintList:Ljava/util/List;

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplControlData;->PendingMessageList:Ljava/util/List;

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

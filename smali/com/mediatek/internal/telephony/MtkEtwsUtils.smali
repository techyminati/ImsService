.class public Lcom/mediatek/internal/telephony/MtkEtwsUtils;
.super Ljava/lang/Object;
.source "MtkEtwsUtils.java"


# static fields
.field public static final ETWS_PDU_LENGTH:I = 0x38


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToInt([B)I
    .registers 5
    .param p0, "values"    # [B

    .line 52
    if-eqz p0, :cond_20

    array-length v0, p0

    if-eqz v0, :cond_20

    array-length v0, p0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_20

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "ret":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 58
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_1a

    .line 59
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 60
    shl-int/lit8 v0, v0, 0x8

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 62
    .end local v2    # "i":I
    :cond_1a
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 64
    return v0

    .line 53
    .end local v0    # "ret":I
    .end local v1    # "len":I
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "valid byte array"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToBytes(I)[B
    .registers 6
    .param p0, "value"    # I

    .line 42
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 43
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_12

    .line 44
    rsub-int/lit8 v3, v2, 0x3

    and-int/lit16 v4, p0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 45
    shr-int/lit8 p0, p0, 0x8

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 48
    .end local v2    # "i":I
    :cond_12
    return-object v1
.end method

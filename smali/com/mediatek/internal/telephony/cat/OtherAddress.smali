.class public Lcom/mediatek/internal/telephony/cat/OtherAddress;
.super Ljava/lang/Object;
.source "OtherAddress.java"


# instance fields
.field public address:Ljava/net/InetAddress;

.field public addressType:I

.field public rawAddress:[B


# direct methods
.method public constructor <init>(I[BI)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "rawData"    # [B
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 47
    const-string v0, "[BIP]"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->addressType:I

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->rawAddress:[B

    .line 45
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 49
    :try_start_d
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->addressType:I

    .line 50
    const/16 v3, 0x21

    if-ne v3, p1, :cond_25

    .line 51
    const/4 v3, 0x4

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->rawAddress:[B

    .line 52
    array-length v4, v3

    invoke-static {p2, p3, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->rawAddress:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    goto :goto_66

    .line 54
    :cond_25
    const/16 v3, 0x57

    if-ne v3, p1, :cond_3c

    .line 55
    const/16 v3, 0x10

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->rawAddress:[B

    .line 56
    array-length v4, v3

    invoke-static {p2, p3, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->rawAddress:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    goto :goto_66

    .line 59
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OtherAddress: unknown type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_50} :catch_5c
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_50} :catch_51

    goto :goto_66

    .line 65
    :catch_51
    move-exception v1

    .line 66
    .local v1, "e2":Ljava/net/UnknownHostException;
    const-string v3, "OtherAddress: UnknownHostException"

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->rawAddress:[B

    .line 68
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    goto :goto_67

    .line 61
    .end local v1    # "e2":Ljava/net/UnknownHostException;
    :catch_5c
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "OtherAddress: out of bounds"

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->rawAddress:[B

    .line 64
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 69
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_66
    nop

    .line 70
    :goto_67
    return-void
.end method

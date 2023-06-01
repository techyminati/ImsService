.class Lcom/mediatek/internal/telephony/test/LineReader;
.super Ljava/lang/Object;
.source "MtkModelInterpreter.java"


# static fields
.field static final BUFFER_SIZE:I = 0x1000


# instance fields
.field mBuffer:[B

.field mInStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/InputStream;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/LineReader;->mBuffer:[B

    .line 55
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    .line 56
    return-void
.end method


# virtual methods
.method getNextLine()Ljava/lang/String;
    .registers 2

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNextLine(Z)Ljava/lang/String;
    .registers 8
    .param p1, "ctrlZ"    # Z

    .line 80
    const/4 v0, 0x0

    .line 86
    .local v0, "i":I
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/LineReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 88
    .local v2, "result":I
    if-gez v2, :cond_b

    .line 89
    return-object v1

    .line 92
    :cond_b
    if-eqz p1, :cond_12

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_12

    .line 93
    goto :goto_2b

    .line 94
    :cond_12
    const/16 v3, 0xd

    if-eq v2, v3, :cond_28

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1b

    goto :goto_28

    .line 103
    :cond_1b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/LineReader;->mBuffer:[B
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_4b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_1d} :catch_2c

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    int-to-byte v5, v2

    :try_start_20
    aput-byte v5, v3, v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_22} :catch_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_22} :catch_24

    .line 104
    .end local v2    # "result":I
    move v0, v4

    goto :goto_1

    .line 107
    :catch_24
    move-exception v0

    goto :goto_2f

    .line 105
    :catch_26
    move-exception v0

    goto :goto_4e

    .line 95
    .end local v4    # "i":I
    .restart local v0    # "i":I
    .restart local v2    # "result":I
    :cond_28
    :goto_28
    if-nez v0, :cond_2b

    .line 97
    goto :goto_1

    .line 109
    .end local v2    # "result":I
    :cond_2b
    :goto_2b
    goto :goto_37

    .line 107
    :catch_2c
    move-exception v2

    move v4, v0

    move-object v0, v2

    .line 108
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "i":I
    :goto_2f
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "ATChannel: buffer overflow"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v4

    .line 112
    .end local v4    # "i":I
    .local v0, "i":I
    :goto_37
    :try_start_37
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/LineReader;->mBuffer:[B

    const/4 v4, 0x0

    const-string v5, "US-ASCII"

    invoke-direct {v2, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_41} :catch_42

    return-object v2

    .line 113
    :catch_42
    move-exception v2

    .line 114
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "ATChannel: implausable UnsupportedEncodingException"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    return-object v1

    .line 105
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :catch_4b
    move-exception v2

    move v4, v0

    move-object v0, v2

    .line 106
    .local v0, "ex":Ljava/io/IOException;
    .restart local v4    # "i":I
    :goto_4e
    return-object v1
.end method

.method getNextLineCtrlZ()Ljava/lang/String;
    .registers 2

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/test/LineReader;->getNextLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

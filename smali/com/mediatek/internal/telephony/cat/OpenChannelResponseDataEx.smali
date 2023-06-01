.class Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;
.super Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;
.source "BipResponseData.java"


# instance fields
.field mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

.field mProtocolType:I


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;II)V
    .registers 7
    .param p1, "channelStatus"    # Lcom/mediatek/internal/telephony/cat/ChannelStatus;
    .param p2, "bearerDesc"    # Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .param p3, "bufferSize"    # I
    .param p4, "protocolType"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;I)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenChannelResponseDataEx-constructor: protocolType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput p4, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;ILcom/mediatek/internal/telephony/cat/DnsServerAddress;)V
    .registers 6
    .param p1, "channelStatus"    # Lcom/mediatek/internal/telephony/cat/ChannelStatus;
    .param p2, "bearerDesc"    # Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .param p3, "bufferSize"    # I
    .param p4, "dnsServerAddress"    # Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;I)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    .line 75
    iput-object p4, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    .line 76
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .registers 16
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .line 79
    const-string v0, "[BIP]"

    if-nez p1, :cond_a

    .line 80
    const-string v1, "OpenChannelResponseDataEx-format: buf is null"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 83
    :cond_a
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    const/16 v2, 0xb

    const/16 v3, 0x9

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v5, v1, :cond_17

    if-ne v6, v1, :cond_3e

    .line 85
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    if-nez v1, :cond_21

    .line 86
    const-string v1, "OpenChannelResponseDataEx-format: bearer null"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 88
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v1, v5, :cond_3e

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v1, v4, :cond_3e

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v1, v3, :cond_3e

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v1, v2, :cond_3e

    .line 92
    const-string v1, "OpenChannelResponseDataEx-format: bearer type is not gprs"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_3e
    const/4 v1, 0x0

    .line 97
    .local v1, "length":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const-string v8, "]"

    if-eqz v7, :cond_a2

    .line 98
    const-string v7, "OpenChannelResponseDataEx-format: Write channel status into TR"

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    .line 100
    .local v7, "tag":I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 101
    const/4 v1, 0x2

    .line 102
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 103
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelId:I

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    or-int/2addr v9, v10

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v9, v9, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatusInfo:I

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OpenChannel Channel status Rsp:tag["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "],len["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "],cId["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "],status["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 109
    .end local v7    # "tag":I
    :cond_a2
    const-string v7, "No Channel status in TR."

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_a7
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    const-string v9, ",length: "

    const-string v10, "OpenChannelResponseDataEx-format: tag: "

    if-eqz v7, :cond_385

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Write bearer description into TR. bearerType: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    .line 117
    .restart local v7    # "tag":I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    const-string v12, ",pdp type: "

    const-string v13, ",bearerType: "

    if-ne v5, v11, :cond_16e

    .line 119
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    instance-of v2, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    if-eqz v2, :cond_167

    .line 120
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    .line 121
    .local v2, "gprsBD":Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;
    const/4 v1, 0x7

    .line 122
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 123
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 124
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 125
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->delay:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 127
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->peak:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 128
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->mean:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",precedence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",delay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->delay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",reliability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",peak: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->peak:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->mean:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v2    # "gprsBD":Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;
    goto/16 :goto_38a

    .line 140
    :cond_167
    const-string v2, "Not expected GPRSBearerDesc instance"

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38a

    .line 142
    :cond_16e
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    if-ne v2, v5, :cond_234

    .line 143
    const/16 v2, 0xa

    new-array v2, v2, [I

    .line 144
    .local v2, "bufferArr":[I
    const/4 v3, 0x0

    .line 145
    .local v3, "index":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    instance-of v4, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    if-eqz v4, :cond_22d

    .line 146
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    .line 147
    .local v4, "euTranBD":Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    if-eqz v5, :cond_18d

    .line 148
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 150
    :cond_18d
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    if-eqz v5, :cond_197

    .line 151
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 153
    :cond_197
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    if-eqz v5, :cond_1a1

    .line 154
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 156
    :cond_1a1
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    if-eqz v5, :cond_1ab

    .line 157
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 159
    :cond_1ab
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    if-eqz v5, :cond_1b5

    .line 160
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 162
    :cond_1b5
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    if-eqz v5, :cond_1bf

    .line 163
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 165
    :cond_1bf
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    if-eqz v5, :cond_1c9

    .line 166
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 168
    :cond_1c9
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    if-eqz v5, :cond_1d3

    .line 169
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 171
    :cond_1d3
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    if-eqz v5, :cond_1dd

    .line 172
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 174
    :cond_1dd
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    if-eqz v5, :cond_1e7

    .line 175
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 177
    :cond_1e7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EUTranBearerDesc length: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-lez v3, :cond_203

    .line 179
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_206

    .line 181
    :cond_203
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 183
    :goto_206
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->bearerType:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 184
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20c
    if-ge v5, v3, :cond_22c

    .line 185
    aget v11, v2, v5

    invoke-virtual {p1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 186
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EUTranBearerDesc buf: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v2, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_20c

    .line 188
    .end local v4    # "euTranBD":Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;
    .end local v5    # "i":I
    :cond_22c
    goto :goto_232

    .line 189
    :cond_22d
    const-string v4, "Not expected EUTranBearerDesc instance"

    invoke-static {v0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v2    # "bufferArr":[I
    .end local v3    # "index":I
    :goto_232
    goto/16 :goto_38a

    :cond_234
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    if-ne v3, v2, :cond_372

    .line 192
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    instance-of v2, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    if-eqz v2, :cond_36c

    .line 193
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    .line 194
    .local v2, "uTranBD":Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;
    const/16 v1, 0x12

    .line 195
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 196
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->bearerType:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 197
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficClass:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 198
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_High:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 199
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_Low:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_High:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 201
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_Low:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 202
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_High:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_Low:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 204
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_High:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 205
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_Low:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 206
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOrder:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 207
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxSduSize:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 208
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->sduErrorRatio:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 209
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->residualBitErrorRadio:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 210
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOfErroneousSdus:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 211
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->transferDelay:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 212
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficHandlingPriority:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 213
    iget v3, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->pdpType:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->bearerType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",trafficClass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficClass:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",maxBitRateUL_High: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_High:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",maxBitRateUL_Low: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_Low:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",maxBitRateDL_High: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_High:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",maxBitRateDL_Low: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_Low:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",guarBitRateUL_High: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_High:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",guarBitRateUL_Low: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_Low:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",guarBitRateDL_High: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_High:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",guarBitRateDL_Low: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_Low:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",deliveryOrder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOrder:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",maxSduSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxSduSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",sduErrorRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->sduErrorRatio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",residualBitErrorRadio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->residualBitErrorRadio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",deliveryOfErroneousSdus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOfErroneousSdus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",transferDelay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->transferDelay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",trafficHandlingPriority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficHandlingPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->pdpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v2    # "uTranBD":Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;
    goto :goto_38a

    .line 235
    :cond_36c
    const-string v2, "Not expected UTranBearerDesc instance"

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38a

    .line 237
    :cond_372
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    if-ne v4, v2, :cond_38a

    .line 238
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 239
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v2, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;->bearerType:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_38a

    .line 242
    .end local v7    # "tag":I
    :cond_385
    const-string v2, "No bearer description in TR."

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_38a
    :goto_38a
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    if-ltz v2, :cond_3f3

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write buffer size into TR.["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    .line 247
    .local v2, "tag":I
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    const/4 v1, 0x2

    .line 249
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 250
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    shr-int/lit8 v3, v3, 0x8

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",buffer size(hi-byte): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    shr-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",buffer size(low-byte): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40c

    .line 257
    .end local v2    # "tag":I
    :cond_3f3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No buffer size in TR.["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_40c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseDataEx;->mDnsServerAddress:Lcom/mediatek/internal/telephony/cat/DnsServerAddress;

    if-eqz v2, :cond_469

    .line 260
    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/DnsServerAddress;->dnsAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_416
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_469

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 261
    .local v3, "addr":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 262
    .local v4, "rawAddress":[B
    if-eqz v4, :cond_468

    .line 263
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DNS_SERVER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 264
    .local v5, "tag":I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 265
    array-length v7, v4

    add-int/2addr v7, v6

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 266
    array-length v7, v4

    const/4 v8, 0x4

    const/16 v9, 0x21

    if-ne v7, v8, :cond_440

    .line 267
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_463

    .line 268
    :cond_440
    array-length v7, v4

    const/16 v8, 0x10

    if-ne v7, v8, :cond_44b

    .line 269
    const/16 v7, 0x57

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_463

    .line 271
    :cond_44b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "length error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 274
    :goto_463
    const/4 v7, 0x0

    array-length v8, v4

    invoke-virtual {p1, v4, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 276
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v4    # "rawAddress":[B
    .end local v5    # "tag":I
    :cond_468
    goto :goto_416

    .line 278
    :cond_469
    return-void
.end method

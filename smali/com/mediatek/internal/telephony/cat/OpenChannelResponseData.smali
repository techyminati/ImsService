.class Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "BipResponseData.java"


# instance fields
.field mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

.field mBufferSize:I

.field mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/ChannelStatus;Lcom/mediatek/internal/telephony/cat/BearerDesc;I)V
    .registers 7
    .param p1, "channelStatus"    # Lcom/mediatek/internal/telephony/cat/ChannelStatus;
    .param p2, "bearerDesc"    # Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .param p3, "bufferSize"    # I

    .line 287
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 283
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    .line 288
    const-string v0, "[BIP]"

    if-eqz p1, :cond_30

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenChannelResponseData-constructor: channelStatus cid/status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 292
    :cond_30
    const-string v1, "OpenChannelResponseData-constructor: channelStatus is null"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_35
    if-eqz p2, :cond_4e

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenChannelResponseData-constructor: bearerDesc bearerType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 298
    :cond_4e
    const-string v1, "OpenChannelResponseData-constructor: bearerDesc is null"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenChannelResponseData-constructor: buffer size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 304
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 305
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    .line 306
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .registers 12
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .line 310
    const-string v0, "[BIP]"

    if-nez p1, :cond_a

    .line 311
    const-string v1, "OpenChannelResponseData-format: buf is null"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void

    .line 315
    :cond_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    if-nez v1, :cond_14

    .line 316
    const-string v1, "OpenChannelResponseData-format: mBearerDesc is null"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void

    .line 320
    :cond_14
    check-cast v1, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_21

    .line 321
    const-string v1, "OpenChannelResponseData-format: bearer type is not gprs"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void

    .line 327
    :cond_21
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    if-lez v1, :cond_22a

    .line 328
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const-string v3, "OpenChannelResponseData-format: length: 2"

    const-string v4, "OpenChannelResponseData-format: tag: "

    if-eqz v1, :cond_a7

    .line 329
    const-string v1, "OpenChannelResponseData-format: Write channel status into TR"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 332
    .local v1, "tag":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 334
    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenChannelResponseData-format: channel id & isActivated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelId:I

    .line 337
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget-boolean v7, v7, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->isActivated:Z

    const/16 v8, 0x80

    const/4 v9, 0x0

    if-eqz v7, :cond_6c

    move v7, v8

    goto :goto_6d

    :cond_6c
    move v7, v9

    :goto_6d
    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelId:I

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget-boolean v6, v6, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->isActivated:Z

    if-eqz v6, :cond_83

    goto :goto_84

    :cond_83
    move v8, v9

    :goto_84
    or-int/2addr v5, v8

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenChannelResponseData-format: channel status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 344
    .end local v1    # "tag":I
    :cond_a7
    const-string v1, "Write bearer description into TR"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 346
    .restart local v1    # "tag":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    const-string v5, "OpenChannelResponseData-format: length: 7"

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenChannelResponseData-format: bearer type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenChannelResponseData-format: precedence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenChannelResponseData-format: delay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->delay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->delay:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenChannelResponseData-format: reliability: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenChannelResponseData-format: peak: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->peak:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->peak:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenChannelResponseData-format: mean: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->mean:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->mean:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenChannelResponseData-format: pdp type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    check-cast v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 372
    const-string v5, "Write buffer size into TR"

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 376
    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: length(hi-byte): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    shr-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: length(low-byte): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_22f

    .line 385
    .end local v1    # "tag":I
    :cond_22a
    const-string v1, "Miss ChannelStatus, BearerDesc or BufferSize"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :goto_22f
    return-void
.end method

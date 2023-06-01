.class Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "BipResponseData.java"


# instance fields
.field mData:[B

.field mRemainingCount:I


# direct methods
.method constructor <init>([BI)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "remaining"    # I

    .line 422
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    .line 423
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    .line 424
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    .line 425
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .registers 7
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .line 429
    if-nez p1, :cond_3

    .line 430
    return-void

    .line 435
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    const/16 v1, 0x80

    or-int/2addr v0, v1

    .line 436
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_29

    .line 439
    array-length v2, v2

    if-lt v2, v1, :cond_1c

    .line 440
    const/16 v2, 0x81

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 443
    :cond_1c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 444
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v4, v2

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2c

    .line 446
    :cond_29
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 449
    :goto_2c
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v0, v2, 0x80

    .line 450
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 451
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReceiveDataResponseData: length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    const/16 v2, 0xff

    if-lt v1, v2, :cond_5d

    .line 456
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_60

    .line 458
    :cond_5d
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 460
    :goto_60
    return-void
.end method

.class Lcom/mediatek/internal/telephony/cat/GetMultipleChannelStatusResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "BipResponseData.java"


# instance fields
.field mArrList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "arrList"    # Ljava/util/ArrayList;

    .line 466
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    .line 467
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    .line 468
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .registers 9
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .line 472
    if-nez p1, :cond_3

    .line 473
    return-void

    .line 476
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 477
    .local v0, "tag":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelStatusResp: size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lez v1, :cond_85

    .line 480
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 481
    .local v1, "iterator":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 482
    .local v4, "chStatus":Lcom/mediatek/internal/telephony/cat/ChannelStatus;
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 483
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 484
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 485
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 486
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelId:I

    and-int/lit8 v5, v5, 0x7

    iget v6, v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    or-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 487
    iget v5, v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatusInfo:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChannelStatusResp: cid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatusInfo:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 491
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v4    # "chStatus":Lcom/mediatek/internal/telephony/cat/ChannelStatus;
    :cond_84
    goto :goto_97

    .line 492
    :cond_85
    const-string v1, "ChannelStatusResp: no channel status."

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 494
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 495
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 496
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 498
    :goto_97
    return-void
.end method

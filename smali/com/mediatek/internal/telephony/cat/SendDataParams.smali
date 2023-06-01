.class Lcom/mediatek/internal/telephony/cat/SendDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "BipCommandParams.java"


# instance fields
.field channelData:[B

.field mSendDataCid:I

.field mSendMode:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[BILcom/android/internal/telephony/cat/TextMessage;I)V
    .registers 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "data"    # [B
    .param p3, "cid"    # I
    .param p4, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p5, "sendMode"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->channelData:[B

    .line 118
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->mSendDataCid:I

    .line 120
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->mSendMode:I

    .line 124
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->channelData:[B

    .line 125
    iput-object p4, p0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 126
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->mSendDataCid:I

    .line 127
    iput p5, p0, Lcom/mediatek/internal/telephony/cat/SendDataParams;->mSendMode:I

    .line 128
    return-void
.end method

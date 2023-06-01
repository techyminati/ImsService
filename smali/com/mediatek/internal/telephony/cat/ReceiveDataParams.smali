.class Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "BipCommandParams.java"


# instance fields
.field channelDataLength:I

.field mReceiveDataCid:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;IILcom/android/internal/telephony/cat/TextMessage;)V
    .registers 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "length"    # I
    .param p3, "cid"    # I
    .param p4, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    .line 105
    new-instance v1, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 106
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;->mReceiveDataCid:I

    .line 110
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    .line 111
    iput-object p4, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 112
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;->mReceiveDataCid:I

    .line 113
    return-void
.end method

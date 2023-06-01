.class Lcom/mediatek/internal/telephony/cat/CloseChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "BipCommandParams.java"


# instance fields
.field mBackToTcpListen:Z

.field mCloseCid:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TextMessage;Z)V
    .registers 6
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "cid"    # I
    .param p3, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p4, "backToTcpListen"    # Z

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 90
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    .line 92
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;->mBackToTcpListen:Z

    .line 97
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 98
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    .line 99
    iput-boolean p4, p0, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;->mBackToTcpListen:Z

    .line 100
    return-void
.end method

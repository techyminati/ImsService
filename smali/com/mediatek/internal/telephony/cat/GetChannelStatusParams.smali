.class Lcom/mediatek/internal/telephony/cat/GetChannelStatusParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "BipCommandParams.java"


# instance fields
.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V
    .registers 4
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;

    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 132
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/GetChannelStatusParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 136
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/GetChannelStatusParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 137
    return-void
.end method

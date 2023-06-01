.class Lcom/mediatek/internal/telephony/cat/OpenChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "BipCommandParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;
    }
.end annotation


# instance fields
.field public bearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

.field public bufferSize:I

.field public dataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

.field public gprsParams:Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;

.field public localAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

.field public textMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field public transportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/mediatek/internal/telephony/cat/BearerDesc;ILcom/mediatek/internal/telephony/cat/OtherAddress;Lcom/mediatek/internal/telephony/cat/TransportProtocol;Lcom/mediatek/internal/telephony/cat/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V
    .registers 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "bearerDesc"    # Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .param p3, "size"    # I
    .param p4, "localAddress"    # Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .param p5, "transportProtocol"    # Lcom/mediatek/internal/telephony/cat/TransportProtocol;
    .param p6, "address"    # Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .param p7, "apn"    # Ljava/lang/String;
    .param p8, "login"    # Ljava/lang/String;
    .param p9, "pwd"    # Ljava/lang/String;
    .param p10, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->bearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->bufferSize:I

    .line 55
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->localAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 56
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->transportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    .line 57
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->dataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 58
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 60
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;

    .line 67
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->bearerDesc:Lcom/mediatek/internal/telephony/cat/BearerDesc;

    .line 68
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->bufferSize:I

    .line 69
    iput-object p4, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->localAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 70
    iput-object p5, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->transportProtocol:Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    .line 71
    iput-object p6, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->dataDestinationAddress:Lcom/mediatek/internal/telephony/cat/OtherAddress;

    .line 72
    iput-object p10, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 73
    new-instance v0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;

    invoke-direct {v0, p0, p7, p8, p9}, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;-><init>(Lcom/mediatek/internal/telephony/cat/OpenChannelParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;

    .line 74
    return-void
.end method

.class public Lcom/mediatek/internal/telephony/cat/TransportProtocol;
.super Ljava/lang/Object;
.source "TransportProtocol.java"


# instance fields
.field public portNumber:I

.field public protocolType:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "port"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 40
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->portNumber:I

    .line 43
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 44
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->portNumber:I

    .line 45
    return-void
.end method

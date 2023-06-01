.class Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
.super Ljava/lang/Object;
.source "BipService.java"


# instance fields
.field public buffer:[B

.field public remainingCount:I

.field public requestCount:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 2735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 2737
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->requestCount:I

    .line 2738
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    return-void
.end method

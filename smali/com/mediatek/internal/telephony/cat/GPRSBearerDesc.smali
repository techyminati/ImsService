.class public Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;
.super Lcom/mediatek/internal/telephony/cat/BearerDesc;
.source "GPRSBearerDesc.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bearerService:I

.field public connectionElement:I

.field public dataCompression:I

.field public dataRate:I

.field public delay:I

.field public headerCompression:I

.field public mean:I

.field public pdpType:I

.field public peak:I

.field public precedence:I

.field public reliability:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 90
    new-instance v0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BearerDesc;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    .line 43
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->delay:I

    .line 44
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    .line 45
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->peak:I

    .line 46
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->mean:I

    .line 47
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    .line 49
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->dataCompression:I

    .line 50
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->headerCompression:I

    .line 52
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->dataRate:I

    .line 53
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerService:I

    .line 54
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->connectionElement:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BearerDesc;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    .line 43
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->delay:I

    .line 44
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    .line 45
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->peak:I

    .line 46
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->mean:I

    .line 47
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    .line 49
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->dataCompression:I

    .line 50
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->headerCompression:I

    .line 52
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->dataRate:I

    .line 53
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerService:I

    .line 54
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->connectionElement:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->delay:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->peak:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->mean:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->dataCompression:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->headerCompression:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->dataRate:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerService:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->connectionElement:I

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc$1;

    .line 41
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->delay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->peak:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->mean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->dataCompression:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->headerCompression:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->dataRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->bearerService:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->connectionElement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void
.end method

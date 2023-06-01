.class public Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;
.super Lcom/mediatek/internal/telephony/cat/BearerDesc;
.source "EUTranBearerDesc.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public QCI:I

.field public guarBitRateD:I

.field public guarBitRateDEx:I

.field public guarBitRateU:I

.field public guarBitRateUEx:I

.field public maxBitRateD:I

.field public maxBitRateDEx:I

.field public maxBitRateU:I

.field public maxBitRateUEx:I

.field public pdnType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BearerDesc;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    .line 43
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    .line 44
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    .line 45
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    .line 46
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    .line 47
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    .line 48
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    .line 49
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    .line 50
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    .line 51
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    .line 54
    const/16 v0, 0xb

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->bearerType:I

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BearerDesc;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    .line 43
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    .line 44
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    .line 45
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    .line 46
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    .line 47
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    .line 48
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    .line 49
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    .line 50
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    .line 51
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->bearerType:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc$1;

    .line 41
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->bearerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method

.class public Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;
.super Lcom/mediatek/internal/telephony/cat/BearerDesc;
.source "DefaultBearerDesc.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BearerDesc;-><init>()V

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;->bearerType:I

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BearerDesc;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;->bearerType:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc$1;

    .line 41
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 55
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;->bearerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method

.class Lcom/mediatek/internal/telephony/phb/AlphaTag$1;
.super Ljava/lang/Object;
.source "AlphaTag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/AlphaTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/internal/telephony/phb/AlphaTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/phb/AlphaTag;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "recordNumber":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .local v2, "pbrIndex":I
    new-instance v3, Lcom/mediatek/internal/telephony/phb/AlphaTag;

    invoke-direct {v3, v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/AlphaTag;-><init>(ILjava/lang/String;I)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/AlphaTag$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/phb/AlphaTag;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/phb/AlphaTag;
    .registers 3
    .param p1, "size"    # I

    .line 68
    new-array v0, p1, [Lcom/mediatek/internal/telephony/phb/AlphaTag;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/AlphaTag$1;->newArray(I)[Lcom/mediatek/internal/telephony/phb/AlphaTag;

    move-result-object p1

    return-object p1
.end method

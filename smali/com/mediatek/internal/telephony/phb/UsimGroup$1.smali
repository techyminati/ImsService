.class Lcom/mediatek/internal/telephony/phb/UsimGroup$1;
.super Ljava/lang/Object;
.source "UsimGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/UsimGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/phb/UsimGroup;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, "recordNumber":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "alphaTag":Ljava/lang/String;
    new-instance v2, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    invoke-direct {v2, v0, v1}, Lcom/mediatek/internal/telephony/phb/UsimGroup;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/UsimGroup$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/phb/UsimGroup;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/phb/UsimGroup;
    .registers 3
    .param p1, "size"    # I

    .line 75
    new-array v0, p1, [Lcom/mediatek/internal/telephony/phb/UsimGroup;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/UsimGroup$1;->newArray(I)[Lcom/mediatek/internal/telephony/phb/UsimGroup;

    move-result-object p1

    return-object p1
.end method

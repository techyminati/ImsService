.class Lcom/mediatek/internal/telephony/ims/MtkTftStatus$1;
.super Ljava/lang/Object;
.source "MtkTftStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/internal/telephony/ims/MtkTftStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 75
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    move-result-object v0

    .line 76
    .local v0, "tftStatus":Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 72
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ims/MtkTftStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    .registers 3
    .param p1, "size"    # I

    .line 81
    new-array v0, p1, [Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 72
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ims/MtkTftStatus$1;->newArray(I)[Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    move-result-object p1

    return-object p1
.end method
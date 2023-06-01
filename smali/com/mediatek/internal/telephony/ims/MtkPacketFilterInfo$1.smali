.class Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo$1;
.super Ljava/lang/Object;
.source "MtkPacketFilterInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 131
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;

    move-result-object v0

    .line 132
    .local v0, "packetFilterInfo":Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    .registers 3
    .param p1, "size"    # I

    .line 137
    new-array v0, p1, [Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo$1;->newArray(I)[Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;

    move-result-object p1

    return-object p1
.end method

.class Lcom/mediatek/internal/telephony/FemtoCellInfo$1;
.super Ljava/lang/Object;
.source "FemtoCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/FemtoCellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/internal/telephony/FemtoCellInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 229
    new-instance v9, Lcom/mediatek/internal/telephony/FemtoCellInfo;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    move v7, v0

    .line 237
    :goto_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/internal/telephony/FemtoCellInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 238
    .local v0, "femtoCellInfo":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 227
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/FemtoCellInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .registers 3
    .param p1, "size"    # I

    .line 242
    new-array v0, p1, [Lcom/mediatek/internal/telephony/FemtoCellInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 227
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo$1;->newArray(I)[Lcom/mediatek/internal/telephony/FemtoCellInfo;

    move-result-object p1

    return-object p1
.end method

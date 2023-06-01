.class Lmediatek/telephony/MtkSmsParameters$1;
.super Ljava/lang/Object;
.source "MtkSmsParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkSmsParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmediatek/telephony/MtkSmsParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Lmediatek/telephony/MtkSmsParameters$1;->createFromParcel(Landroid/os/Parcel;)Lmediatek/telephony/MtkSmsParameters;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmediatek/telephony/MtkSmsParameters;
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, "format":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "vp":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .local v2, "pid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .local v3, "dcs":I
    new-instance v4, Lmediatek/telephony/MtkSmsParameters;

    invoke-direct {v4, v0, v1, v2, v3}, Lmediatek/telephony/MtkSmsParameters;-><init>(IIII)V

    return-object v4
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Lmediatek/telephony/MtkSmsParameters$1;->newArray(I)[Lmediatek/telephony/MtkSmsParameters;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmediatek/telephony/MtkSmsParameters;
    .registers 3
    .param p1, "size"    # I

    .line 94
    new-array v0, p1, [Lmediatek/telephony/MtkSmsParameters;

    return-object v0
.end method

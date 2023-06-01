.class Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus$1;
.super Ljava/lang/Object;
.source "MtkIccSmsStorageStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .local v0, "used":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .local v1, "total":I
    new-instance v2, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    invoke-direct {v2, v0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;-><init>(II)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    .registers 3
    .param p1, "size"    # I

    .line 105
    new-array v0, p1, [Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus$1;->newArray(I)[Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object p1

    return-object p1
.end method

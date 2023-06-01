.class Lmediatek/telephony/MtkSimSmsInsertStatus$1;
.super Ljava/lang/Object;
.source "MtkSimSmsInsertStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkSimSmsInsertStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmediatek/telephony/MtkSimSmsInsertStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lmediatek/telephony/MtkSimSmsInsertStatus$1;->createFromParcel(Landroid/os/Parcel;)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "index":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    .local v1, "status":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v2, Lmediatek/telephony/MtkSimSmsInsertStatus;

    invoke-direct {v2, v1, v0}, Lmediatek/telephony/MtkSimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lmediatek/telephony/MtkSimSmsInsertStatus$1;->newArray(I)[Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmediatek/telephony/MtkSimSmsInsertStatus;
    .registers 3
    .param p1, "size"    # I

    .line 76
    new-array v0, p1, [Lmediatek/telephony/MtkSimSmsInsertStatus;

    return-object v0
.end method

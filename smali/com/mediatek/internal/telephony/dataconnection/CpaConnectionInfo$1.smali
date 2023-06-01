.class Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo$1;
.super Ljava/lang/Object;
.source "CpaConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;-><init>(Landroid/os/Parcel;Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;
    .registers 3
    .param p1, "size"    # I

    .line 89
    new-array v0, p1, [Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo$1;->newArray(I)[Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;

    move-result-object p1

    return-object p1
.end method

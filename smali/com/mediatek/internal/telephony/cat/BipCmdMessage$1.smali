.class Lcom/mediatek/internal/telephony/cat/BipCmdMessage$1;
.super Ljava/lang/Object;
.source "BipCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/internal/telephony/cat/BipCmdMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 193
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 190
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .registers 3
    .param p1, "size"    # I

    .line 198
    new-array v0, p1, [Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 190
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$1;->newArray(I)[Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    move-result-object p1

    return-object p1
.end method

.class Lcom/mediatek/powerhalmgr/DupLinkInfo$1;
.super Ljava/lang/Object;
.source "DupLinkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/powerhalmgr/DupLinkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/powerhalmgr/DupLinkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    new-instance v0, Lcom/mediatek/powerhalmgr/DupLinkInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mediatek/powerhalmgr/DupLinkInfo;-><init>(Landroid/os/Parcel;Lcom/mediatek/powerhalmgr/DupLinkInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/mediatek/powerhalmgr/DupLinkInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/powerhalmgr/DupLinkInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .registers 3
    .param p1, "size"    # I

    .line 88
    new-array v0, p1, [Lcom/mediatek/powerhalmgr/DupLinkInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/mediatek/powerhalmgr/DupLinkInfo$1;->newArray(I)[Lcom/mediatek/powerhalmgr/DupLinkInfo;

    move-result-object p1

    return-object p1
.end method

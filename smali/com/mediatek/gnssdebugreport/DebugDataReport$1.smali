.class Lcom/mediatek/gnssdebugreport/DebugDataReport$1;
.super Ljava/lang/Object;
.source "DebugDataReport.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gnssdebugreport/DebugDataReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/gnssdebugreport/DebugDataReport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/gnssdebugreport/DebugDataReport;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 186
    new-instance v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;

    invoke-direct {v0, p1}, Lcom/mediatek/gnssdebugreport/DebugDataReport;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 184
    invoke-virtual {p0, p1}, Lcom/mediatek/gnssdebugreport/DebugDataReport$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/gnssdebugreport/DebugDataReport;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/gnssdebugreport/DebugDataReport;
    .registers 3
    .param p1, "size"    # I

    .line 190
    new-array v0, p1, [Lcom/mediatek/gnssdebugreport/DebugDataReport;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 184
    invoke-virtual {p0, p1}, Lcom/mediatek/gnssdebugreport/DebugDataReport$1;->newArray(I)[Lcom/mediatek/gnssdebugreport/DebugDataReport;

    move-result-object p1

    return-object p1
.end method
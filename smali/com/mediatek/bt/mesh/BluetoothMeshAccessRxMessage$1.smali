.class Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage$1;
.super Ljava/lang/Object;
.source "BluetoothMeshAccessRxMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    new-instance v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;

    invoke-direct {v0, p1}, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    .registers 3
    .param p1, "size"    # I

    .line 86
    new-array v0, p1, [Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage$1;->newArray(I)[Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;

    move-result-object p1

    return-object p1
.end method

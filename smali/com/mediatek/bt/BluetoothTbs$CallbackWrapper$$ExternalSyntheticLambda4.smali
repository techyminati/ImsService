.class public final synthetic Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/ParcelUuid;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda4;->f$0:Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;

    iput p2, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda4;->f$2:Landroid/os/ParcelUuid;

    iput-object p4, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda4;->f$0:Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;

    iget v1, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda4;->f$2:Landroid/os/ParcelUuid;

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->lambda$onPlaceCall$4$BluetoothTbs$CallbackWrapper(ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    return-void
.end method

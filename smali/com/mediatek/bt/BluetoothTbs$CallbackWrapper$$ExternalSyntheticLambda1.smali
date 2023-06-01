.class public final synthetic Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/ParcelUuid;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;ILandroid/os/ParcelUuid;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;

    iput p2, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda1;->f$2:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;

    iget v1, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda1;->f$2:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->lambda$onHoldCall$2$BluetoothTbs$CallbackWrapper(ILandroid/os/ParcelUuid;)V

    return-void
.end method

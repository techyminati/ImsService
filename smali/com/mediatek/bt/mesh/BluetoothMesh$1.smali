.class Lcom/mediatek/bt/mesh/BluetoothMesh$1;
.super Landroid/bluetooth/BluetoothProfileConnector;
.source "BluetoothMesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/BluetoothMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;


# direct methods
.method constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/mediatek/bt/mesh/BluetoothMesh;
    .param p2, "arg0"    # Landroid/bluetooth/BluetoothProfile;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$1;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/bluetooth/BluetoothProfileConnector;-><init>(Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getServiceInterface(Landroid/os/IBinder;)Lcom/mediatek/bt/mesh/IBluetoothMesh;
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 88
    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bt/mesh/IBluetoothMesh$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/mediatek/bt/mesh/BluetoothMesh$1;->getServiceInterface(Landroid/os/IBinder;)Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Default;
.super Ljava/lang/Object;
.source "IBluetoothMeshCallback.java"

# interfaces
.implements Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdvReport(I[III[I)V
    .registers 6
    .param p1, "addr_type"    # I
    .param p2, "addr"    # [I
    .param p3, "rssi"    # I
    .param p4, "report_type"    # I
    .param p5, "data"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public onBearerGattStatus(JI)V
    .registers 4
    .param p1, "handle"    # J
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public onConfigReset()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public onEvtErrorCode(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public onFriendShipStatus(IIF)V
    .registers 4
    .param p1, "addr"    # I
    .param p2, "status"    # I
    .param p3, "timeCost"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onHeartbeat(II)V
    .registers 3
    .param p1, "address"    # I
    .param p2, "active"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public onIvUpdate(II)V
    .registers 3
    .param p1, "ivIndex"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public onKeyRefresh(II)V
    .registers 3
    .param p1, "netKeyIndex"    # I
    .param p2, "phase"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public onMeshEnabled()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V
    .registers 3
    .param p1, "modelHandle"    # I
    .param p2, "msg"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public onOtaEvent(IIJJJIIIII[I)V
    .registers 15
    .param p1, "event_id"    # I
    .param p2, "error_code"    # I
    .param p3, "serial_number"    # J
    .param p5, "firmware_id"    # J
    .param p7, "time_escaped"    # J
    .param p9, "nodes_num"    # I
    .param p10, "curr_block"    # I
    .param p11, "total_block"    # I
    .param p12, "curr_chunk"    # I
    .param p13, "chunk_mask"    # I
    .param p14, "nodes_status"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public onOtaMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V
    .registers 3
    .param p1, "modelHandle"    # I
    .param p2, "msg"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public onProvCapabilities(IIIIIIII)V
    .registers 9
    .param p1, "numberOfElements"    # I
    .param p2, "algorithms"    # I
    .param p3, "publicKeyType"    # I
    .param p4, "staticOOBType"    # I
    .param p5, "outputOobSize"    # I
    .param p6, "outputOobAction"    # I
    .param p7, "inputOobSize"    # I
    .param p8, "inputOobAction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public onProvDone(I[IZZ)V
    .registers 5
    .param p1, "address"    # I
    .param p2, "deviceKey"    # [I
    .param p3, "success"    # Z
    .param p4, "gatt_bearer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public onProvFactor(I[II)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "buf"    # [I
    .param p3, "bufLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public onProvScanComplete()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public onProvShowOobAuthValue([I)V
    .registers 2
    .param p1, "authValue"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public onProvShowOobPublicKey([I)V
    .registers 2
    .param p1, "publicKey"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public onPublishTimeoutCallback(I)V
    .registers 2
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public onRequestOobAuthValue(III)V
    .registers 4
    .param p1, "method"    # I
    .param p2, "action"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public onRequestOobPublicKey()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public onScanUnProvDevice([II[II)V
    .registers 5
    .param p1, "uuid"    # [I
    .param p2, "oobInfom"    # I
    .param p3, "uriHash"    # [I
    .param p4, "rssi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public onSeqChange(I)V
    .registers 2
    .param p1, "seqNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

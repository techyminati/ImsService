.class public Lcom/mediatek/bt/mesh/IBluetoothMesh$Default;
.super Ljava/lang/Object;
.source "IBluetoothMesh.java"

# interfaces
.implements Lcom/mediatek/bt/mesh/IBluetoothMesh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/IBluetoothMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accessModelReply(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;)I
    .registers 5
    .param p1, "modelHandle"    # I
    .param p2, "msg"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    .param p3, "reply"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public addDevKey(I[I[I)I
    .registers 5
    .param p1, "unicastAddr"    # I
    .param p2, "devicekey"    # [I
    .param p3, "uuid"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public addElement(I)I
    .registers 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public addModel(Lcom/mediatek/bt/mesh/MeshModel;)I
    .registers 3
    .param p1, "model"    # Lcom/mediatek/bt/mesh/MeshModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public bearerAdvSetParams(JIIIJII)I
    .registers 11
    .param p1, "advPeriod"    # J
    .param p3, "minInterval"    # I
    .param p4, "maxInterval"    # I
    .param p5, "resend"    # I
    .param p6, "scanPeriod"    # J
    .param p8, "scanInterval"    # I
    .param p9, "scanWindow"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public delDevKey(I)I
    .registers 3
    .param p1, "unicastAddr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public disable()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public disableMeshFilter()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public enable(Lcom/mediatek/bt/mesh/MeshInitParams;)I
    .registers 3
    .param p1, "params"    # Lcom/mediatek/bt/mesh/MeshInitParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public enableMeshFilter(ZZZZ)I
    .registers 6
    .param p1, "pbAdv"    # Z
    .param p2, "meshMessage"    # Z
    .param p3, "unprovBeacon"    # Z
    .param p4, "secureBeacon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public enableMeshFilterWithNetwork(ZZ[IZZ[I)I
    .registers 8
    .param p1, "pbAdv"    # Z
    .param p2, "meshMessageWithNID"    # Z
    .param p3, "meshMessageNetIndex"    # [I
    .param p4, "unprovBeacon"    # Z
    .param p5, "secureBeaconWithNetworkID"    # Z
    .param p6, "secureBeaconNetIndex"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public gattConnect(Ljava/lang/String;II)I
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .param p3, "serviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public gattDisconnect()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultTtl()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getDevKey(I)[I
    .registers 3
    .param p1, "unicastAddr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementAddr(I)I
    .registers 3
    .param p1, "elementIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getMeshRole()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public getMeshState()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getModelHandle(JI)I
    .registers 5
    .param p1, "modelId"    # J
    .param p3, "elementIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public inviteProvisioning([II)I
    .registers 4
    .param p1, "UUID"    # [I
    .param p2, "attentionDuration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public modelAppBind(II)I
    .registers 4
    .param p1, "handle"    # I
    .param p2, "appIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public otaGetClientModelHandle()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public otaInitiatorOperation(Lcom/mediatek/bt/mesh/OtaOperationParams;)I
    .registers 3
    .param p1, "params"    # Lcom/mediatek/bt/mesh/OtaOperationParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public publishModel(III[I)I
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "opCode"    # I
    .param p3, "companyId"    # I
    .param p4, "buffer"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public registerCallback(Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public resetData(I)Z
    .registers 3
    .param p1, "sector"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public saveData()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public sendConfigMessage(IIIIILcom/mediatek/bt/mesh/ConfigMessageParams;)I
    .registers 8
    .param p1, "dst"    # I
    .param p2, "src"    # I
    .param p3, "ttl"    # I
    .param p4, "netKeyIndex"    # I
    .param p5, "opcode"    # I
    .param p6, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public sendPacket(IIIII[I)I
    .registers 8
    .param p1, "dst"    # I
    .param p2, "src"    # I
    .param p3, "ttl"    # I
    .param p4, "netKeyIndex"    # I
    .param p5, "appKeyIndex"    # I
    .param p6, "payload"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public setAppkey(I[III)I
    .registers 6
    .param p1, "op"    # I
    .param p2, "key"    # [I
    .param p3, "netIndex"    # I
    .param p4, "appIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public setCompositionDataHeader([I)Z
    .registers 3
    .param p1, "data"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public setData()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public setDefaultTtl(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public setElementAddr(I)Z
    .registers 3
    .param p1, "addr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public setHeartbeatPeriod(IJ)I
    .registers 5
    .param p1, "num"    # I
    .param p2, "hbTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public setIv(JI)I
    .registers 5
    .param p1, "ivIndex"    # J
    .param p3, "ivPhase"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public setLogLevel(J)V
    .registers 3
    .param p1, "level"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public setMeshMode(I)I
    .registers 3
    .param p1, "on"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public setNetkey(I[II)I
    .registers 5
    .param p1, "op"    # I
    .param p2, "key"    # [I
    .param p3, "netIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public setProvisionFactor(I[I)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "buf"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public setScanParams(II)I
    .registers 4
    .param p1, "scanInterval"    # I
    .param p2, "scanWindow"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public setSpecialPktParams(ZIII)I
    .registers 6
    .param p1, "isSnIncrease"    # Z
    .param p2, "snIncreaseInterval"    # I
    .param p3, "advInterval"    # I
    .param p4, "advPeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public startProvisioning(IIIII[IIJIII)I
    .registers 14
    .param p1, "algorithm"    # I
    .param p2, "publicKey"    # I
    .param p3, "authMethod"    # I
    .param p4, "authAction"    # I
    .param p5, "authSize"    # I
    .param p6, "netkey"    # [I
    .param p7, "netkeyIndex"    # I
    .param p8, "ivIndex"    # J
    .param p10, "addr"    # I
    .param p11, "flags"    # I
    .param p12, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public unProvisionScan(ZI)V
    .registers 3
    .param p1, "start"    # Z
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public unregisterCallback()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

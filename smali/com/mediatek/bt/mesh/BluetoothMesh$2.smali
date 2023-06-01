.class Lcom/mediatek/bt/mesh/BluetoothMesh$2;
.super Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;
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
.method constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 96
    iput-object p1, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvReport(I[III[I)V
    .registers 13
    .param p1, "addrType"    # I
    .param p2, "addr"    # [I
    .param p3, "rssi"    # I
    .param p4, "reportType"    # I
    .param p5, "data"    # [I

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdvReport addrType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 130
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onAdvReport(I[III[I)V

    .line 132
    :cond_54
    return-void
.end method

.method public onBearerGattStatus(JI)V
    .registers 6
    .param p1, "handle"    # J
    .param p3, "status"    # I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBearerGattStatus: handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onBearerGattStatus(JI)V

    .line 225
    :cond_2f
    return-void
.end method

.method public onConfigReset()V
    .registers 3

    .line 105
    const-string v0, "BluetoothMesh"

    const-string v1, "onConfigReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onConfigReset()V

    .line 107
    :cond_18
    return-void
.end method

.method public onEvtErrorCode(I)V
    .registers 4
    .param p1, "type"    # I

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvtErrorCode: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onEvtErrorCode(I)V

    .line 231
    :cond_27
    return-void
.end method

.method public onFriendShipStatus(IIF)V
    .registers 6
    .param p1, "addr"    # I
    .param p2, "status"    # I
    .param p3, "timeCost"    # F

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFriendShipStatus addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , timeCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onFriendShipStatus(IIF)V

    .line 113
    :cond_37
    return-void
.end method

.method public onHeartbeat(II)V
    .registers 5
    .param p1, "address"    # I
    .param p2, "active"    # I

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHeartbeat address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onHeartbeat(II)V

    .line 219
    :cond_2f
    return-void
.end method

.method public onIvUpdate(II)V
    .registers 5
    .param p1, "ivIndex"    # I
    .param p2, "state"    # I

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIvUpdate ivIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onIvUpdate(II)V

    .line 201
    :cond_2f
    return-void
.end method

.method public onKeyRefresh(II)V
    .registers 5
    .param p1, "netKeyIndex"    # I
    .param p2, "phase"    # I

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyRefresh netKeyIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onKeyRefresh(II)V

    .line 195
    :cond_2f
    return-void
.end method

.method public onMeshEnabled()V
    .registers 3

    .line 99
    const-string v0, "BluetoothMesh"

    const-string v1, "onMeshEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onMeshEnabled()V

    .line 101
    :cond_18
    return-void
.end method

.method public onMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V
    .registers 5
    .param p1, "modelHandle"    # I
    .param p2, "msg"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMsgHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mModelMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$100(Lcom/mediatek/bt/mesh/BluetoothMesh;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bt/mesh/MeshModel;

    .line 243
    .local v0, "mModel":Lcom/mediatek/bt/mesh/MeshModel;
    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/bt/mesh/MeshModel;->onMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V

    .line 244
    :cond_2b
    return-void
.end method

.method public onOtaEvent(IIJJJIIIII[I)V
    .registers 33
    .param p1, "eventId"    # I
    .param p2, "errorCode"    # I
    .param p3, "serialNumber"    # J
    .param p5, "firmwareId"    # J
    .param p7, "timeEscaped"    # J
    .param p9, "nodesNum"    # I
    .param p10, "curr_block"    # I
    .param p11, "total_block"    # I
    .param p12, "curr_chunk"    # I
    .param p13, "chunk_mask"    # I
    .param p14, "nodesStatus"    # [I

    .line 118
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaEvent eventId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p2

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", nodesNum="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p9

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",curr_block="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p10

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",total_block="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p11

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",curr_chunk="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p12

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",chunk_mask ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p13

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BluetoothMesh"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, v0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v1}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v1

    if-eqz v1, :cond_7d

    .line 121
    iget-object v1, v0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v1}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    invoke-virtual/range {v3 .. v17}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onOtaEvent(IIJJJIIIII[I)V

    .line 123
    :cond_7d
    return-void
.end method

.method public onOtaMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V
    .registers 5
    .param p1, "modelHandle"    # I
    .param p2, "msg"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOtaMsgHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onOtaMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V

    .line 237
    :cond_27
    return-void
.end method

.method public onProvCapabilities(IIIIIIII)V
    .registers 25
    .param p1, "numberOfElements"    # I
    .param p2, "algorithms"    # I
    .param p3, "publicKeyType"    # I
    .param p4, "staticOOBType"    # I
    .param p5, "outputOobSize"    # I
    .param p6, "outputOobAction"    # I
    .param p7, "inputOobSize"    # I
    .param p8, "inputOobAction"    # I

    .line 150
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvCapabilities numberOfElements="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", algorithms="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p2

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", publicKeyType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", staticOOBType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p4

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", outputOobSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p5

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", outputOobAction="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p6

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", inputOobSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", inputOobAction="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p8

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BluetoothMesh"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, v0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v1}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v1

    if-eqz v1, :cond_81

    iget-object v1, v0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v1}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onProvCapabilities(IIIIIIII)V

    .line 158
    :cond_81
    return-void
.end method

.method public onProvDone(I[IZZ)V
    .registers 7
    .param p1, "address"    # I
    .param p2, "deviceKey"    # [I
    .param p3, "success"    # Z
    .param p4, "gattBearer"    # Z

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProvDone address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gattBearer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onProvDone(I[IZZ)V

    .line 189
    :cond_43
    return-void
.end method

.method public onProvFactor(I[II)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "buf"    # [I
    .param p3, "bufLen"    # I

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProvFactor type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buf[0]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onProvFactor(I[II)V

    .line 213
    :cond_32
    return-void
.end method

.method public onProvScanComplete()V
    .registers 3

    .line 136
    const-string v0, "BluetoothMesh"

    const-string v1, "onProvScanComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onProvScanComplete()V

    .line 138
    :cond_18
    return-void
.end method

.method public onProvShowOobAuthValue([I)V
    .registers 4
    .param p1, "authValue"    # [I

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProvShowOobAuthValue authValue ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onProvShowOobAuthValue([I)V

    .line 182
    :cond_2b
    return-void
.end method

.method public onProvShowOobPublicKey([I)V
    .registers 4
    .param p1, "publicKey"    # [I

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProvShowOobPublicKey publicKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onProvShowOobPublicKey([I)V

    .line 176
    :cond_2b
    return-void
.end method

.method public onPublishTimeoutCallback(I)V
    .registers 4
    .param p1, "modelHandle"    # I

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPublishTimeoutCallback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mModelMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$100(Lcom/mediatek/bt/mesh/BluetoothMesh;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bt/mesh/MeshModel;

    .line 250
    .local v0, "mModel":Lcom/mediatek/bt/mesh/MeshModel;
    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->onPublishTimeoutCallback(I)V

    .line 251
    :cond_2b
    return-void
.end method

.method public onRequestOobAuthValue(III)V
    .registers 6
    .param p1, "method"    # I
    .param p2, "action"    # I
    .param p3, "size"    # I

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestOobAuthValue method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onRequestOobAuthValue(III)V

    .line 170
    :cond_37
    return-void
.end method

.method public onRequestOobPublicKey()V
    .registers 3

    .line 162
    const-string v0, "BluetoothMesh"

    const-string v1, "onRequestOobPublicKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onRequestOobPublicKey()V

    .line 164
    :cond_18
    return-void
.end method

.method public onScanUnProvDevice([II[II)V
    .registers 7
    .param p1, "uuid"    # [I
    .param p2, "oobInfom"    # I
    .param p3, "uriHash"    # [I
    .param p4, "rssi"    # I

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanUnProvDevice uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oobInfom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uriHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onScanUnProvDevice([II[II)V

    .line 144
    :cond_3f
    return-void
.end method

.method public onSeqChange(I)V
    .registers 4
    .param p1, "seqNumber"    # I

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeqChange seqNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh$2;->this$0:Lcom/mediatek/bt/mesh/BluetoothMesh;

    # getter for: Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    invoke-static {v0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/bt/mesh/BluetoothMeshCallback;->onSeqChange(I)V

    .line 207
    :cond_27
    return-void
.end method

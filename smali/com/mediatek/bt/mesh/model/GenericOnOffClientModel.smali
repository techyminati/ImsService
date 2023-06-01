.class public Lcom/mediatek/bt/mesh/model/GenericOnOffClientModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "GenericOnOffClientModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "GenericOnOffClientModel"


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 37
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public genericOnOffGet()V
    .registers 3

    .line 48
    const-string v0, "GenericOnOffClientModel"

    const-string v1, "genericOnOffGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 50
    return-void
.end method

.method public genericOnOffSet(IIII)V
    .registers 7
    .param p1, "onOff"    # I
    .param p2, "tid"    # I
    .param p3, "transitionTime"    # I
    .param p4, "delay"    # I

    .line 53
    const-string v0, "GenericOnOffClientModel"

    const-string v1, "genericOnOffSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket(IIII)V

    .line 55
    return-void
.end method

.method public genericOnOffSetUnacknowledged(IIII)V
    .registers 7
    .param p1, "onOff"    # I
    .param p2, "tid"    # I
    .param p3, "transitionTime"    # I
    .param p4, "delay"    # I

    .line 58
    const-string v0, "GenericOnOffClientModel"

    const-string v1, "genericOnOffSetUnacknowledged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket(IIII)V

    .line 60
    return-void
.end method

.method public setTxMessageHeader(II[IIIIII)V
    .registers 11
    .param p1, "dstAddrType"    # I
    .param p2, "dst"    # I
    .param p3, "virtualUUID"    # [I
    .param p4, "src"    # I
    .param p5, "ttl"    # I
    .param p6, "netKeyIndex"    # I
    .param p7, "appKeyIndex"    # I
    .param p8, "msgOpCode"    # I

    .line 42
    const-string v0, "GenericOnOffClientModel"

    const-string v1, "setTxMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super/range {p0 .. p8}, Lcom/mediatek/bt/mesh/MeshModel;->setTxMessageHeader(II[IIIIII)V

    .line 44
    return-void
.end method

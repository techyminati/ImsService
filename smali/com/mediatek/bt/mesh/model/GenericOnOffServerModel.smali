.class public Lcom/mediatek/bt/mesh/model/GenericOnOffServerModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "GenericOnOffServerModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "GenericOnOffServerModel"


# instance fields
.field private genericOnOffState:I


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 39
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public genericOnOffStatus(III)V
    .registers 6
    .param p1, "presentOnOff"    # I
    .param p2, "targetOnOff"    # I
    .param p3, "remainingTime"    # I

    .line 50
    const-string v0, "GenericOnOffServerModel"

    const-string v1, "genericOnOffStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket(III)V

    .line 52
    return-void
.end method

.method public getGenericOnOffState()I
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGenericOnOffState state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/bt/mesh/model/GenericOnOffServerModel;->genericOnOffState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenericOnOffServerModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget v0, p0, Lcom/mediatek/bt/mesh/model/GenericOnOffServerModel;->genericOnOffState:I

    return v0
.end method

.method public setGenericOnOffState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGenericOnOffState state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenericOnOffServerModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput p1, p0, Lcom/mediatek/bt/mesh/model/GenericOnOffServerModel;->genericOnOffState:I

    .line 58
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

    .line 44
    const-string v0, "GenericOnOffServerModel"

    const-string v1, "setTxMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super/range {p0 .. p8}, Lcom/mediatek/bt/mesh/MeshModel;->setTxMessageHeader(II[IIIIII)V

    .line 46
    return-void
.end method

.class public Lcom/mediatek/bt/mesh/model/CtlServerModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "CtlServerModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CtlServerModel"


# instance fields
.field private genericLevelState:I

.field private lightCTLDeltaUVDefaultState:I

.field private lightCTLDeltaUVState:I

.field private lightCTLState:I

.field private lightCTLTemperatureDefaultState:I

.field private lightCTLTemperatureRangeState:I

.field private lightCTLTemperatureState:I


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 46
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public getGenericLevelState()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->genericLevelState:I

    return v0
.end method

.method public getLightCtlDeltaUvDefaultState()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLDeltaUVDefaultState:I

    return v0
.end method

.method public getLightCtlDeltaUvState()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLDeltaUVState:I

    return v0
.end method

.method public getLightCtlState()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLState:I

    return v0
.end method

.method public getLightCtlTemperatureDefaultState()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLTemperatureDefaultState:I

    return v0
.end method

.method public getLightCtlTemperatureRangeState()I
    .registers 2

    .line 128
    iget v0, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLTemperatureRangeState:I

    return v0
.end method

.method public getLightCtlTemperatureState()I
    .registers 2

    .line 152
    iget v0, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLTemperatureState:I

    return v0
.end method

.method public lightCtlDefaultStatus(III)V
    .registers 9
    .param p1, "lightness"    # I
    .param p2, "temperature"    # I
    .param p3, "deltaUV"    # I

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 97
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 98
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 99
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 100
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 101
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 102
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CtlServerModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 105
    return-void
.end method

.method public lightCtlStatus(IIIII)V
    .registers 11
    .param p1, "presentCTLLightness"    # I
    .param p2, "presentCTLTemperature"    # I
    .param p3, "targetCTLLightness"    # I
    .param p4, "targetCTLTemperature"    # I
    .param p5, "remainingTime"    # I

    .line 70
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 71
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 72
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 73
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 74
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 75
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x4

    aput v1, v0, v4

    .line 76
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v4, 0x5

    aput v1, v0, v4

    .line 77
    invoke-super {p0, p4}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 78
    invoke-super {p0, p4}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 79
    const/16 v1, 0x8

    aput p5, v0, v1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CtlServerModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 82
    return-void
.end method

.method public lightCtlTemperatureRangeStatus(III)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "RangeMin"    # I
    .param p3, "RangeMax"    # I

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 86
    .local v0, "params":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 87
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v2

    aget v2, v2, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 88
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v2

    aget v2, v2, v3

    const/4 v4, 0x2

    aput v2, v0, v4

    .line 89
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v2

    aget v1, v2, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 90
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CtlServerModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 93
    return-void
.end method

.method public setGenericLevelState(I)V
    .registers 2
    .param p1, "genericLevelState"    # I

    .line 156
    iput p1, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->genericLevelState:I

    .line 157
    return-void
.end method

.method public setLightCtlDeltaUvDefaultState(I)V
    .registers 2
    .param p1, "lightCTLDeltaUVDefaultState"    # I

    .line 140
    iput p1, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLDeltaUVDefaultState:I

    .line 141
    return-void
.end method

.method public setLightCtlDeltaUvState(I)V
    .registers 2
    .param p1, "lightCTLDeltaUVState"    # I

    .line 116
    iput p1, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLDeltaUVState:I

    .line 117
    return-void
.end method

.method public setLightCtlState(I)V
    .registers 2
    .param p1, "lightCTLState"    # I

    .line 108
    iput p1, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLState:I

    .line 109
    return-void
.end method

.method public setLightCtlTemperatureDefaultState(I)V
    .registers 2
    .param p1, "lightCTLTemperatureDefaultState"    # I

    .line 132
    iput p1, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLTemperatureDefaultState:I

    .line 133
    return-void
.end method

.method public setLightCtlTemperatureRangeState(I)V
    .registers 2
    .param p1, "lightCTLTemperatureRangeState"    # I

    .line 124
    iput p1, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLTemperatureRangeState:I

    .line 125
    return-void
.end method

.method public setLightCtlTemperatureState(I)V
    .registers 2
    .param p1, "lightCTLTemperatureState"    # I

    .line 148
    iput p1, p0, Lcom/mediatek/bt/mesh/model/CtlServerModel;->lightCTLTemperatureState:I

    .line 149
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

    .line 51
    const-string v0, "CtlServerModel"

    const-string v1, "setTxMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-super/range {p0 .. p8}, Lcom/mediatek/bt/mesh/MeshModel;->setTxMessageHeader(II[IIIIII)V

    .line 53
    return-void
.end method

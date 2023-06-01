.class public Lcom/mediatek/bt/mesh/model/CtlClientModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "CtlClientModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CtlClientModel"


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 37
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public lightCtlDefaultGet()V
    .registers 1

    .line 103
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 104
    return-void
.end method

.method public lightCtlDefaultSet(III)V
    .registers 10
    .param p1, "lightness"    # I
    .param p2, "temperature"    # I
    .param p3, "deltaUV"    # I

    .line 107
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 108
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 109
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 110
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 111
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 112
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    aput v1, v0, v4

    .line 113
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    aput v1, v0, v5

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CtlClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 116
    return-void
.end method

.method public lightCtlDefaultSetUnacknowledged(III)V
    .registers 4
    .param p1, "lightness"    # I
    .param p2, "temperature"    # I
    .param p3, "deltaUV"    # I

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bt/mesh/model/CtlClientModel;->lightCtlDefaultSet(III)V

    .line 120
    return-void
.end method

.method public lightCtlGet()V
    .registers 1

    .line 59
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 60
    return-void
.end method

.method public lightCtlSet(IIIIII)V
    .registers 12
    .param p1, "ctlLightness"    # I
    .param p2, "ctlTemperature"    # I
    .param p3, "ctlDeltaUV"    # I
    .param p4, "tid"    # I
    .param p5, "transitionTime"    # I
    .param p6, "delay"    # I

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 64
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 65
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 66
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 67
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 68
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 69
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 70
    const/4 v1, 0x6

    aput p4, v0, v1

    .line 71
    const/4 v1, 0x7

    aput p5, v0, v1

    .line 72
    const/16 v1, 0x8

    aput p6, v0, v1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CtlClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 75
    return-void
.end method

.method public lightCtlSetUnacknowledged(IIIIII)V
    .registers 7
    .param p1, "ctlLightness"    # I
    .param p2, "ctlTemperature"    # I
    .param p3, "ctlDeltaUV"    # I
    .param p4, "tid"    # I
    .param p5, "transitionTime"    # I
    .param p6, "delay"    # I

    .line 78
    invoke-virtual/range {p0 .. p6}, Lcom/mediatek/bt/mesh/model/CtlClientModel;->lightCtlSet(IIIIII)V

    .line 79
    return-void
.end method

.method public lightCtlTemperatureGet()V
    .registers 1

    .line 82
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 83
    return-void
.end method

.method public lightCtlTemperatureRangeGet()V
    .registers 1

    .line 123
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 124
    return-void
.end method

.method public lightCtlTemperatureRangeSet(II)V
    .registers 7
    .param p1, "rangeMin"    # I
    .param p2, "rangeMax"    # I

    .line 127
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 128
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 129
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 130
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 131
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CtlClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 134
    return-void
.end method

.method public lightCtlTemperatureRangeSetUnacknowledged(II)V
    .registers 3
    .param p1, "rangeMin"    # I
    .param p2, "rangeMax"    # I

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/bt/mesh/model/CtlClientModel;->lightCtlTemperatureRangeSet(II)V

    .line 138
    return-void
.end method

.method public lightCtlTemperatureSet(IIIII)V
    .registers 10
    .param p1, "ctlTemperature"    # I
    .param p2, "ctlDeltaUV"    # I
    .param p3, "tid"    # I
    .param p4, "transitionTime"    # I
    .param p5, "delay"    # I

    .line 86
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 87
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 88
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 89
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 90
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 91
    const/4 v1, 0x4

    aput p3, v0, v1

    .line 92
    const/4 v1, 0x5

    aput p4, v0, v1

    .line 93
    const/4 v1, 0x6

    aput p5, v0, v1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CtlClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 96
    return-void
.end method

.method public lightCtlTemperatureSetUnacknowledged(IIIII)V
    .registers 6
    .param p1, "ctlTemperature"    # I
    .param p2, "ctlDeltaUV"    # I
    .param p3, "tid"    # I
    .param p4, "transitionTime"    # I
    .param p5, "delay"    # I

    .line 99
    invoke-virtual/range {p0 .. p5}, Lcom/mediatek/bt/mesh/model/CtlClientModel;->lightCtlTemperatureSet(IIIII)V

    .line 100
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
    const-string v0, "CtlClientModel"

    const-string v1, "setTxMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super/range {p0 .. p8}, Lcom/mediatek/bt/mesh/MeshModel;->setTxMessageHeader(II[IIIIII)V

    .line 44
    return-void
.end method

.class public Lcom/mediatek/bt/mesh/model/HslServerModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "HslServerModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HslServerModel"


# instance fields
.field private genericLevelState:I

.field private lightHSLHueDefaultState:I

.field private lightHSLHueRangeState:I

.field private lightHSLHueState:I

.field private lightHSLSaturationDefaultState:I

.field private lightHSLSaturationRangeState:I

.field private lightHSLSaturationState:I

.field private lightHSLState:I


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 47
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public getGenericLevelState()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->genericLevelState:I

    return v0
.end method

.method public getLightHslHueDefaultState()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLHueDefaultState:I

    return v0
.end method

.method public getLightHslHueRangeState()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLHueRangeState:I

    return v0
.end method

.method public getLightHslHueState()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLHueState:I

    return v0
.end method

.method public getLightHslSaturationDefaultState()I
    .registers 2

    .line 143
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLSaturationDefaultState:I

    return v0
.end method

.method public getLightHslSaturationRangeState()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLSaturationRangeState:I

    return v0
.end method

.method public getLightHslSaturationState()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLSaturationState:I

    return v0
.end method

.method public getLightHslState()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLState:I

    return v0
.end method

.method public lightHslDefaultStatus(III)V
    .registers 9
    .param p1, "lightness"    # I
    .param p2, "hue"    # I
    .param p3, "saturation"    # I

    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 96
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 97
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 98
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 99
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 100
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 101
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HslServerModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 104
    return-void
.end method

.method public lightHslStatus(IIII)V
    .registers 10
    .param p1, "hslLightness"    # I
    .param p2, "hslHue"    # I
    .param p3, "hslSaturation"    # I
    .param p4, "remainingTime"    # I

    .line 69
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 70
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 71
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 72
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 73
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 74
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 75
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 76
    const/4 v1, 0x6

    aput p4, v0, v1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HslServerModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 79
    return-void
.end method

.method public lightHslTargetStatus(IIII)V
    .registers 10
    .param p1, "hslLightnessTarget"    # I
    .param p2, "hslHueTarget"    # I
    .param p3, "hslSaturationTarget"    # I
    .param p4, "remainingTime"    # I

    .line 82
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 83
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 84
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 85
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 86
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 87
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 88
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 89
    const/4 v1, 0x6

    aput p4, v0, v1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HslServerModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 92
    return-void
.end method

.method public setGenericLevelState(I)V
    .registers 2
    .param p1, "genericLevelState"    # I

    .line 163
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->genericLevelState:I

    .line 164
    return-void
.end method

.method public setLightHslHueDefaultState(I)V
    .registers 2
    .param p1, "lightHSLHueDefaultState"    # I

    .line 123
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLHueDefaultState:I

    .line 124
    return-void
.end method

.method public setLightHslHueRangeState(I)V
    .registers 2
    .param p1, "lightHSLHueRangeState"    # I

    .line 115
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLHueRangeState:I

    .line 116
    return-void
.end method

.method public setLightHslHueState(I)V
    .registers 2
    .param p1, "lightHSLHueState"    # I

    .line 147
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLHueState:I

    .line 148
    return-void
.end method

.method public setLightHslSaturationDefaultState(I)V
    .registers 2
    .param p1, "lightHSLSaturationDefaultState"    # I

    .line 139
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLSaturationDefaultState:I

    .line 140
    return-void
.end method

.method public setLightHslSaturationRangeState(I)V
    .registers 2
    .param p1, "lightHSLSaturationRangeState"    # I

    .line 131
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLSaturationRangeState:I

    .line 132
    return-void
.end method

.method public setLightHslSaturationState(I)V
    .registers 2
    .param p1, "lightHSLSaturationState"    # I

    .line 155
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLSaturationState:I

    .line 156
    return-void
.end method

.method public setLightHslState(I)V
    .registers 2
    .param p1, "lightHSLState"    # I

    .line 107
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HslServerModel;->lightHSLState:I

    .line 108
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

    .line 52
    const-string v0, "HslServerModel"

    const-string v1, "setTxMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super/range {p0 .. p8}, Lcom/mediatek/bt/mesh/MeshModel;->setTxMessageHeader(II[IIIIII)V

    .line 54
    return-void
.end method

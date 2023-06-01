.class public Lcom/mediatek/bt/mesh/model/HslClientModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "HslClientModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HslClientModel"


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 37
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public lightHslDefaultGet()V
    .registers 1

    .line 87
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 88
    return-void
.end method

.method public lightHslDefaultSet(III)V
    .registers 9
    .param p1, "lightness"    # I
    .param p2, "hue"    # I
    .param p3, "saturation"    # I

    .line 91
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 92
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 93
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 94
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 95
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 96
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 97
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HslClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 100
    return-void
.end method

.method public lightHslDefaultSetUnacknowledged(III)V
    .registers 4
    .param p1, "lightness"    # I
    .param p2, "hue"    # I
    .param p3, "saturation"    # I

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bt/mesh/model/HslClientModel;->lightHslDefaultSet(III)V

    .line 104
    return-void
.end method

.method public lightHslGet()V
    .registers 1

    .line 60
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 61
    return-void
.end method

.method public lightHslHueGet(IIII)V
    .registers 7
    .param p1, "hue"    # I
    .param p2, "tid"    # I
    .param p3, "transitionTime"    # I
    .param p4, "delay"    # I

    .line 129
    const-string v0, "HslClientModel"

    const-string v1, "lightHSLHueGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 131
    return-void
.end method

.method public lightHslHueSet(IIII)V
    .registers 8
    .param p1, "hue"    # I
    .param p2, "tid"    # I
    .param p3, "transitionTime"    # I
    .param p4, "delay"    # I

    .line 134
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 135
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 136
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 137
    const/4 v1, 0x2

    aput p2, v0, v1

    .line 138
    const/4 v1, 0x3

    aput p3, v0, v1

    .line 139
    const/4 v1, 0x4

    aput p4, v0, v1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HslClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 142
    return-void
.end method

.method public lightHslHueSetUnacknowledged(IIII)V
    .registers 5
    .param p1, "hue"    # I
    .param p2, "tid"    # I
    .param p3, "transitionTime"    # I
    .param p4, "delay"    # I

    .line 145
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/model/HslClientModel;->lightHslHueSet(IIII)V

    .line 146
    return-void
.end method

.method public lightHslRangeGet()V
    .registers 1

    .line 107
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 108
    return-void
.end method

.method public lightHslRangeSet(IIII)V
    .registers 10
    .param p1, "hueRangeMin"    # I
    .param p2, "hueRangeMax"    # I
    .param p3, "saturationRangeMin"    # I
    .param p4, "saturationRangeMax"    # I

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 112
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 113
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 114
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 115
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 116
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x4

    aput v1, v0, v4

    .line 117
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v4, 0x5

    aput v1, v0, v4

    .line 118
    invoke-super {p0, p4}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 119
    invoke-super {p0, p4}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HslClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 122
    return-void
.end method

.method public lightHslRangeSetUnacknowledged(IIII)V
    .registers 5
    .param p1, "hueRangeMin"    # I
    .param p2, "hueRangeMax"    # I
    .param p3, "saturationRangeMin"    # I
    .param p4, "saturationRangeMax"    # I

    .line 125
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/model/HslClientModel;->lightHslRangeSet(IIII)V

    .line 126
    return-void
.end method

.method public lightHslSaturationGet()V
    .registers 1

    .line 149
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 150
    return-void
.end method

.method public lightHslSaturationSet(IIII)V
    .registers 8
    .param p1, "saturation"    # I
    .param p2, "tid"    # I
    .param p3, "transitionTime"    # I
    .param p4, "delay"    # I

    .line 153
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 154
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 155
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 156
    const/4 v1, 0x2

    aput p2, v0, v1

    .line 157
    const/4 v1, 0x3

    aput p3, v0, v1

    .line 158
    const/4 v1, 0x4

    aput p4, v0, v1

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HslClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 161
    return-void
.end method

.method public lightHslSaturationSetUnacknowledged(IIII)V
    .registers 5
    .param p1, "saturation"    # I
    .param p2, "tid"    # I
    .param p3, "transitionTime"    # I
    .param p4, "delay"    # I

    .line 164
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/model/HslClientModel;->lightHslSaturationSet(IIII)V

    .line 165
    return-void
.end method

.method public lightHslSet(IIIIII)V
    .registers 12
    .param p1, "hslLightness"    # I
    .param p2, "hslHue"    # I
    .param p3, "hslSaturation"    # I
    .param p4, "tid"    # I
    .param p5, "transitionTime"    # I
    .param p6, "delay"    # I

    .line 64
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 65
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 66
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 67
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 68
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 69
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 70
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 71
    const/4 v1, 0x6

    aput p4, v0, v1

    .line 72
    const/4 v1, 0x7

    aput p5, v0, v1

    .line 73
    const/16 v1, 0x8

    aput p6, v0, v1

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HslClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 76
    return-void
.end method

.method public lightHslSetUnacknowledged(IIIIII)V
    .registers 7
    .param p1, "hslLightness"    # I
    .param p2, "hslHue"    # I
    .param p3, "hslSaturation"    # I
    .param p4, "tid"    # I
    .param p5, "transitionTime"    # I
    .param p6, "delay"    # I

    .line 79
    invoke-virtual/range {p0 .. p6}, Lcom/mediatek/bt/mesh/model/HslClientModel;->lightHslSet(IIIIII)V

    .line 80
    return-void
.end method

.method public lightHslTargetGet()V
    .registers 1

    .line 83
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 84
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
    const-string v0, "HslClientModel"

    const-string v1, "setTxMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super/range {p0 .. p8}, Lcom/mediatek/bt/mesh/MeshModel;->setTxMessageHeader(II[IIIIII)V

    .line 44
    return-void
.end method

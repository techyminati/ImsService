.class public Lcom/mediatek/bt/mesh/model/LightnessClientModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "LightnessClientModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "LightnessClientModel"


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 37
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public lightLightnessDefaultGet()V
    .registers 1

    .line 96
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 97
    return-void
.end method

.method public lightLightnessDefaultSet(I)V
    .registers 5
    .param p1, "lightness"    # I

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 101
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 102
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

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

    const-string v2, "LightnessClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 105
    return-void
.end method

.method public lightLightnessDefaultSetUnacknowledged(I)V
    .registers 2
    .param p1, "lightness"    # I

    .line 108
    invoke-virtual {p0, p1}, Lcom/mediatek/bt/mesh/model/LightnessClientModel;->lightLightnessDefaultSet(I)V

    .line 109
    return-void
.end method

.method public lightLightnessGet()V
    .registers 1

    .line 54
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 55
    return-void
.end method

.method public lightLightnessLastGet()V
    .registers 1

    .line 92
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 93
    return-void
.end method

.method public lightLightnessLinearGet()V
    .registers 1

    .line 73
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 74
    return-void
.end method

.method public lightLightnessLinearSet(IIII)V
    .registers 8
    .param p1, "lightness"    # I
    .param p2, "tid"    # I
    .param p3, "transitionTime"    # I
    .param p4, "delay"    # I

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 78
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 79
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 80
    const/4 v1, 0x2

    aput p2, v0, v1

    .line 81
    const/4 v1, 0x3

    aput p3, v0, v1

    .line 82
    const/4 v1, 0x4

    aput p4, v0, v1

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightnessClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 85
    return-void
.end method

.method public lightLightnessLinearSetUnacknowledged(IIII)V
    .registers 5
    .param p1, "lightness"    # I
    .param p2, "tid"    # I
    .param p3, "transitionTime"    # I
    .param p4, "delay"    # I

    .line 88
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/model/LightnessClientModel;->lightLightnessLinearSet(IIII)V

    .line 89
    return-void
.end method

.method public lightLightnessRangeGet()V
    .registers 1

    .line 112
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 113
    return-void
.end method

.method public lightLightnessRangeSet(II)V
    .registers 7
    .param p1, "rangeMin"    # I
    .param p2, "rangeMax"    # I

    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 117
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 118
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 119
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 120
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v3

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightnessClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 123
    return-void
.end method

.method public lightLightnessRangeSetUnacknowledged(II)V
    .registers 3
    .param p1, "rangeMin"    # I
    .param p2, "rangeMax"    # I

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/bt/mesh/model/LightnessClientModel;->lightLightnessRangeSet(II)V

    .line 127
    return-void
.end method

.method public lightLightnessSet(IIII)V
    .registers 8
    .param p1, "lightness"    # I
    .param p2, "tid"    # I
    .param p3, "transitionTime"    # I
    .param p4, "delay"    # I

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 59
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 60
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 61
    const/4 v1, 0x2

    aput p2, v0, v1

    .line 62
    const/4 v1, 0x3

    aput p3, v0, v1

    .line 63
    const/4 v1, 0x4

    aput p4, v0, v1

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightnessClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 66
    return-void
.end method

.method public lightLightnessSetUnacknowledged(IIII)V
    .registers 5
    .param p1, "lightness"    # I
    .param p2, "tid"    # I
    .param p3, "transitionTime"    # I
    .param p4, "delay"    # I

    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/model/LightnessClientModel;->lightLightnessSet(IIII)V

    .line 70
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
    const-string v0, "LightnessClientModel"

    const-string v1, "setTxMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super/range {p0 .. p8}, Lcom/mediatek/bt/mesh/MeshModel;->setTxMessageHeader(II[IIIIII)V

    .line 44
    return-void
.end method

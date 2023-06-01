.class public Lcom/mediatek/bt/mesh/model/HealthClientModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "HealthClientModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HealthClientModel"


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 37
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public healthAttentionGet()V
    .registers 1

    .line 97
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 98
    return-void
.end method

.method public healthAttentionSet(I)V
    .registers 2
    .param p1, "attention"    # I

    .line 101
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket(I)V

    .line 102
    return-void
.end method

.method public healthAttentionSetUnacknowledged(I)V
    .registers 2
    .param p1, "attention"    # I

    .line 105
    invoke-virtual {p0, p1}, Lcom/mediatek/bt/mesh/model/HealthClientModel;->healthAttentionSet(I)V

    .line 106
    return-void
.end method

.method public healthFaultClear(I)V
    .registers 5
    .param p1, "companyId"    # I

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 61
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 62
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HealthClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 65
    return-void
.end method

.method public healthFaultClearUnacknowledged(I)V
    .registers 2
    .param p1, "companyId"    # I

    .line 68
    invoke-virtual {p0, p1}, Lcom/mediatek/bt/mesh/model/HealthClientModel;->healthFaultClear(I)V

    .line 69
    return-void
.end method

.method public healthFaultGet(I)V
    .registers 5
    .param p1, "companyId"    # I

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 53
    .local v0, "params":[I
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 54
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HealthClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 57
    return-void
.end method

.method public healthFaultTest(II)V
    .registers 6
    .param p1, "testId"    # I
    .param p2, "companyId"    # I

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 73
    .local v0, "params":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 74
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v2

    aget v1, v2, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 75
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HealthClientModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 78
    return-void
.end method

.method public healthFaultTestUnacknowledged(II)V
    .registers 3
    .param p1, "testId"    # I
    .param p2, "companyId"    # I

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/bt/mesh/model/HealthClientModel;->healthFaultTest(II)V

    .line 82
    return-void
.end method

.method public healthPeriodGet()V
    .registers 1

    .line 85
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket()V

    .line 86
    return-void
.end method

.method public healthPeriodSet(I)V
    .registers 2
    .param p1, "fastPeriodDivisor"    # I

    .line 89
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket(I)V

    .line 90
    return-void
.end method

.method public healthPeriodSetUnacknowledged(I)V
    .registers 2
    .param p1, "fastPeriodDivisor"    # I

    .line 93
    invoke-virtual {p0, p1}, Lcom/mediatek/bt/mesh/model/HealthClientModel;->healthPeriodSet(I)V

    .line 94
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
    const-string v0, "HealthClientModel"

    const-string v1, "setTxMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super/range {p0 .. p8}, Lcom/mediatek/bt/mesh/MeshModel;->setTxMessageHeader(II[IIIIII)V

    .line 44
    return-void
.end method

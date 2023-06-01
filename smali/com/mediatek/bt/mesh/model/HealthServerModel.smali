.class public Lcom/mediatek/bt/mesh/model/HealthServerModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "HealthServerModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HealthServerModel"


# instance fields
.field private attentionTimerState:I

.field private currentFaultState:I

.field private healthPeriodState:I

.field private registeredFaultState:I


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 43
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public getAttentionTimerState()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HealthServerModel;->attentionTimerState:I

    return v0
.end method

.method public getCurrentFaultState()I
    .registers 2

    .line 105
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HealthServerModel;->currentFaultState:I

    return v0
.end method

.method public getHealthPeriodState()I
    .registers 2

    .line 113
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HealthServerModel;->healthPeriodState:I

    return v0
.end method

.method public getRegisteredFaultState()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/mediatek/bt/mesh/model/HealthServerModel;->registeredFaultState:I

    return v0
.end method

.method public healthAttentionStatus(I)V
    .registers 2
    .param p1, "attention"    # I

    .line 84
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket(I)V

    .line 85
    return-void
.end method

.method public healthCurrentStatus(II[I)V
    .registers 8
    .param p1, "testId"    # I
    .param p2, "companyId"    # I
    .param p3, "faultArray"    # [I

    .line 58
    array-length v0, p3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 59
    .local v0, "params":[I
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 60
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v2, p3

    if-ge v1, v2, :cond_24

    .line 62
    add-int/lit8 v2, v1, 0x2

    aget v3, p3, v1

    aput v3, v0, v2

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 64
    .end local v1    # "i":I
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HealthServerModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 66
    return-void
.end method

.method public healthFaultStatus(II[I)V
    .registers 8
    .param p1, "testId"    # I
    .param p2, "companyId"    # I
    .param p3, "faultArray"    # [I

    .line 69
    array-length v0, p3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 70
    .local v0, "params":[I
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 71
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->twoOctetsToArray(I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v2, p3

    if-ge v1, v2, :cond_24

    .line 73
    add-int/lit8 v2, v1, 0x2

    aget v3, p3, v1

    aput v3, v0, v2

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 75
    .end local v1    # "i":I
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HealthServerModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 77
    return-void
.end method

.method public healthPeriodStatus(I)V
    .registers 2
    .param p1, "fastPeriodDevisor"    # I

    .line 80
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket(I)V

    .line 81
    return-void
.end method

.method public setAttentionTimerState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 101
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HealthServerModel;->attentionTimerState:I

    .line 102
    return-void
.end method

.method public setCurrentFaultState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 89
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HealthServerModel;->currentFaultState:I

    .line 90
    return-void
.end method

.method public setHealthPeriodState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 97
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HealthServerModel;->healthPeriodState:I

    .line 98
    return-void
.end method

.method public setRegisteredFaultState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 93
    iput p1, p0, Lcom/mediatek/bt/mesh/model/HealthServerModel;->registeredFaultState:I

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

    .line 48
    const-string v0, "HealthServerModel"

    const-string v1, "setTxMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super/range {p0 .. p8}, Lcom/mediatek/bt/mesh/MeshModel;->setTxMessageHeader(II[IIIIII)V

    .line 50
    return-void
.end method

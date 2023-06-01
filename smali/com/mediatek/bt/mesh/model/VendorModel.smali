.class public Lcom/mediatek/bt/mesh/model/VendorModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "VendorModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "VendorModel"


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 37
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public setModelParams([III)V
    .registers 4
    .param p1, "opcodes"    # [I
    .param p2, "companyID"    # I
    .param p3, "opcodeCount"    # I

    .line 41
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->setVendorMsgOpcodes([I)V

    .line 42
    invoke-super {p0, p2}, Lcom/mediatek/bt/mesh/MeshModel;->setCompanyId(I)V

    .line 43
    invoke-super {p0, p3}, Lcom/mediatek/bt/mesh/MeshModel;->setOpcodeCount(I)V

    .line 44
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
    const-string v0, "VendorModel"

    const-string v1, "setTxMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super/range {p0 .. p8}, Lcom/mediatek/bt/mesh/MeshModel;->setTxMessageHeader(II[IIIIII)V

    .line 50
    return-void
.end method

.method public vendorModelSendPacket([I)V
    .registers 4
    .param p1, "params"    # [I

    .line 54
    const-string v0, "VendorModel"

    const-string v1, "vendorModelSendPacket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 56
    return-void
.end method

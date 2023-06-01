.class public Lcom/mediatek/bt/mesh/model/ConfigurationServerModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "ConfigurationServerModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ConfigurationServerModel"


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 36
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public setConfigMessageHeader(IIIII)V
    .registers 8
    .param p1, "src"    # I
    .param p2, "dst"    # I
    .param p3, "ttl"    # I
    .param p4, "netKeyIndex"    # I
    .param p5, "msgOpCode"    # I

    .line 39
    const-string v0, "ConfigurationServerModel"

    const-string v1, "setConfigMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-super/range {p0 .. p5}, Lcom/mediatek/bt/mesh/MeshModel;->setConfigMessageHeader(IIIII)V

    .line 41
    return-void
.end method

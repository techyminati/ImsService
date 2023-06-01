.class public Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;
.super Ljava/lang/Object;
.source "MeshInitParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/MeshInitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProvisioneeParams"
.end annotation


# instance fields
.field private mAlgorithms:I

.field private mInputOobAction:I

.field private mInputOobSize:I

.field private mNumberOfElements:I

.field private mOutputOobAction:I

.field private mOutputOobSize:I

.field private mPublicKeyType:I

.field private mStaticOobType:I

.field final synthetic this$0:Lcom/mediatek/bt/mesh/MeshInitParams;


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/MeshInitParams;IIIIIIII)V
    .registers 10
    .param p1, "this$0"    # Lcom/mediatek/bt/mesh/MeshInitParams;
    .param p2, "numberOfElements"    # I
    .param p3, "algorithms"    # I
    .param p4, "publicKeyType"    # I
    .param p5, "staticOobType"    # I
    .param p6, "outputOobSize"    # I
    .param p7, "outputOobAction"    # I
    .param p8, "inputOobSize"    # I
    .param p9, "inputOobAction"    # I

    .line 95
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->this$0:Lcom/mediatek/bt/mesh/MeshInitParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p2, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mNumberOfElements:I

    .line 97
    iput p3, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mAlgorithms:I

    .line 98
    iput p4, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mPublicKeyType:I

    .line 99
    iput p5, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mStaticOobType:I

    .line 100
    iput p6, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mOutputOobSize:I

    .line 101
    iput p7, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mOutputOobAction:I

    .line 102
    iput p8, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mInputOobSize:I

    .line 103
    iput p9, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mInputOobAction:I

    .line 104
    return-void
.end method


# virtual methods
.method public getAlgorithms()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mAlgorithms:I

    return v0
.end method

.method public getInputOobAction()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mInputOobAction:I

    return v0
.end method

.method public getInputOobSize()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mInputOobSize:I

    return v0
.end method

.method public getNumberOfElements()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mNumberOfElements:I

    return v0
.end method

.method public getOutputOobAction()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mOutputOobAction:I

    return v0
.end method

.method public getOutputOobSize()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mOutputOobSize:I

    return v0
.end method

.method public getPublicKeyType()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mPublicKeyType:I

    return v0
.end method

.method public getStaticOobType()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->mStaticOobType:I

    return v0
.end method

.class public Lcom/mediatek/bt/mesh/MeshInitParams$CustomizeParams;
.super Ljava/lang/Object;
.source "MeshInitParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/MeshInitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomizeParams"
.end annotation


# instance fields
.field private mMaxRemoteNodeCnt:I

.field private mSave2flash:I

.field final synthetic this$0:Lcom/mediatek/bt/mesh/MeshInitParams;


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/MeshInitParams;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/bt/mesh/MeshInitParams;
    .param p2, "maxRemoteNodeCnt"    # I
    .param p3, "save2flash"    # I

    .line 168
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshInitParams$CustomizeParams;->this$0:Lcom/mediatek/bt/mesh/MeshInitParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p2, p0, Lcom/mediatek/bt/mesh/MeshInitParams$CustomizeParams;->mMaxRemoteNodeCnt:I

    .line 170
    iput p3, p0, Lcom/mediatek/bt/mesh/MeshInitParams$CustomizeParams;->mSave2flash:I

    .line 171
    return-void
.end method


# virtual methods
.method public getMaxRemoteNodeCnt()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$CustomizeParams;->mMaxRemoteNodeCnt:I

    return v0
.end method

.method public getSave2flash()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$CustomizeParams;->mSave2flash:I

    return v0
.end method

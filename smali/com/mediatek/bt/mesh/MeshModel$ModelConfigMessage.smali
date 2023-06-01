.class public Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;
.super Ljava/lang/Object;
.source "MeshModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/MeshModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelConfigMessage"
.end annotation


# instance fields
.field private mDst:I

.field private mMsgOpCode:I

.field private mNetKeyIndex:I

.field private mSrc:I

.field private mTtl:I

.field final synthetic this$0:Lcom/mediatek/bt/mesh/MeshModel;


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/MeshModel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/bt/mesh/MeshModel;

    .line 115
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->this$0:Lcom/mediatek/bt/mesh/MeshModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    .line 115
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mTtl:I

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;
    .param p1, "x1"    # I

    .line 115
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mTtl:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    .line 115
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mNetKeyIndex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;
    .param p1, "x1"    # I

    .line 115
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mNetKeyIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    .line 115
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mMsgOpCode:I

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;
    .param p1, "x1"    # I

    .line 115
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mMsgOpCode:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    .line 115
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mSrc:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;
    .param p1, "x1"    # I

    .line 115
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mSrc:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    .line 115
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mDst:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;
    .param p1, "x1"    # I

    .line 115
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mDst:I

    return p1
.end method

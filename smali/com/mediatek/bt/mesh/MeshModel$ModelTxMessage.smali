.class public Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;
.super Ljava/lang/Object;
.source "MeshModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/MeshModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelTxMessage"
.end annotation


# instance fields
.field private mAppKeyIndex:I

.field private mDst:I

.field private mDstAddrType:I

.field private mMsgOpCode:I

.field private mNetKeyIndex:I

.field private mSrc:I

.field private mTtl:I

.field private mVirtualUUID:[I

.field final synthetic this$0:Lcom/mediatek/bt/mesh/MeshModel;


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/MeshModel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/bt/mesh/MeshModel;

    .line 103
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->this$0:Lcom/mediatek/bt/mesh/MeshModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mDstAddrType:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    .line 103
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mDst:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mDst:I

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;[I)[I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;
    .param p1, "x1"    # [I

    .line 103
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mVirtualUUID:[I

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    .line 103
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mSrc:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mSrc:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    .line 103
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mTtl:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mTtl:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    .line 103
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mNetKeyIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mNetKeyIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    .line 103
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mAppKeyIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mAppKeyIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    .line 103
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I

    return p1
.end method

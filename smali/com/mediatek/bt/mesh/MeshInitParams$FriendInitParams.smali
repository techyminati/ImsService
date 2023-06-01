.class public Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;
.super Ljava/lang/Object;
.source "MeshInitParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/MeshInitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendInitParams"
.end annotation


# instance fields
.field private mLpnNumber:I

.field private mQueueSize:I

.field private mSubscriptionListSize:I

.field final synthetic this$0:Lcom/mediatek/bt/mesh/MeshInitParams;


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/MeshInitParams;III)V
    .registers 5
    .param p1, "this$0"    # Lcom/mediatek/bt/mesh/MeshInitParams;
    .param p2, "lpnNumber"    # I
    .param p3, "queueSize"    # I
    .param p4, "subscriptionListSize"    # I

    .line 144
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;->this$0:Lcom/mediatek/bt/mesh/MeshInitParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p2, p0, Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;->mLpnNumber:I

    .line 146
    iput p3, p0, Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;->mQueueSize:I

    .line 147
    iput p4, p0, Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;->mSubscriptionListSize:I

    .line 148
    return-void
.end method


# virtual methods
.method public getLpnNumber()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;->mLpnNumber:I

    return v0
.end method

.method public getQueueSize()I
    .registers 2

    .line 155
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;->mQueueSize:I

    return v0
.end method

.method public getSubscriptionListSize()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;->mSubscriptionListSize:I

    return v0
.end method

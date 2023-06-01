.class public Lcom/mediatek/pq/PictureQuality$Hist;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/pq/PictureQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hist"
.end annotation


# instance fields
.field public info:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x14

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/mediatek/pq/PictureQuality$Hist;->info:[I

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_13

    .line 90
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/pq/PictureQuality$Hist;->set(II)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 92
    .end local v1    # "i":I
    :cond_13
    return-void
.end method


# virtual methods
.method public set(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 95
    if-ltz p1, :cond_a

    const/16 v0, 0x14

    if-ge p1, v0, :cond_a

    .line 96
    iget-object v0, p0, Lcom/mediatek/pq/PictureQuality$Hist;->info:[I

    aput p2, v0, p1

    .line 98
    :cond_a
    return-void
.end method

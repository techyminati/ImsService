.class Lcom/mediatek/amsAal/AalUtils$AalIndex;
.super Ljava/lang/Object;
.source "AalUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/amsAal/AalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AalIndex"
.end annotation


# instance fields
.field private mMode:I

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/amsAal/AalUtils;


# direct methods
.method constructor <init>(Lcom/mediatek/amsAal/AalUtils;ILjava/lang/String;)V
    .registers 4
    .param p2, "mode"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 377
    iput-object p1, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->this$0:Lcom/mediatek/amsAal/AalUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    invoke-direct {p0, p2, p3}, Lcom/mediatek/amsAal/AalUtils$AalIndex;->set(ILjava/lang/String;)V

    .line 379
    return-void
.end method

.method private set(ILjava/lang/String;)V
    .registers 3
    .param p1, "mode"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 382
    iput p1, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mMode:I

    .line 383
    iput-object p2, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mName:Ljava/lang/String;

    .line 384
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 401
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 402
    return v0

    .line 404
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    .line 405
    return v1

    .line 407
    :cond_8
    instance-of v2, p1, Lcom/mediatek/amsAal/AalUtils$AalIndex;

    if-nez v2, :cond_d

    .line 408
    return v0

    .line 411
    :cond_d
    move-object v2, p1

    check-cast v2, Lcom/mediatek/amsAal/AalUtils$AalIndex;

    .line 412
    .local v2, "index":Lcom/mediatek/amsAal/AalUtils$AalIndex;
    iget-object v3, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mName:Ljava/lang/String;

    if-nez v3, :cond_20

    iget-object v4, v2, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mName:Ljava/lang/String;

    if-nez v4, :cond_20

    .line 413
    iget v3, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mMode:I

    iget v4, v2, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mMode:I

    if-ne v3, v4, :cond_1f

    move v0, v1

    :cond_1f
    return v0

    .line 414
    :cond_20
    if-eqz v3, :cond_35

    iget-object v4, v2, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mName:Ljava/lang/String;

    if-nez v4, :cond_27

    goto :goto_35

    .line 417
    :cond_27
    iget v5, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mMode:I

    iget v6, v2, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mMode:I

    if-ne v5, v6, :cond_34

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    move v0, v1

    :cond_34
    return v0

    .line 415
    :cond_35
    :goto_35
    return v0
.end method

.method public getIndexName()Ljava/lang/String;
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .line 387
    iget v0, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mMode:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "hashString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mName:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    :cond_34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->this$0:Lcom/mediatek/amsAal/AalUtils;

    iget v2, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mMode:I

    # invokes: Lcom/mediatek/amsAal/AalUtils;->modeToString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/amsAal/AalUtils;->access$000(Lcom/mediatek/amsAal/AalUtils;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/amsAal/AalUtils$AalIndex;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;
.super Ljava/lang/Object;
.source "MessageLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anr/MessageLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CircularMessageInfoArray"
.end annotation


# instance fields
.field private mElem:[Lcom/mediatek/anr/MessageLogger$MessageInfo;

.field private mHead:I

.field private mLastElem:Lcom/mediatek/anr/MessageLogger$MessageInfo;

.field private mSize:I

.field private mTail:I

.field final synthetic this$0:Lcom/mediatek/anr/MessageLogger;


# direct methods
.method public constructor <init>(Lcom/mediatek/anr/MessageLogger;I)V
    .registers 7
    .param p1, "this$0"    # Lcom/mediatek/anr/MessageLogger;
    .param p2, "size"    # I

    .line 388
    iput-object p1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->this$0:Lcom/mediatek/anr/MessageLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    add-int/lit8 v0, p2, 0x1

    .line 390
    .local v0, "capacity":I
    new-array v1, v0, [Lcom/mediatek/anr/MessageLogger$MessageInfo;

    iput-object v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anr/MessageLogger$MessageInfo;

    .line 391
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1a

    .line 392
    iget-object v2, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anr/MessageLogger$MessageInfo;

    new-instance v3, Lcom/mediatek/anr/MessageLogger$MessageInfo;

    invoke-direct {v3, p1}, Lcom/mediatek/anr/MessageLogger$MessageInfo;-><init>(Lcom/mediatek/anr/MessageLogger;)V

    aput-object v3, v2, v1

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 394
    .end local v1    # "i":I
    :cond_1a
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mHead:I

    .line 395
    iput v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mTail:I

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mLastElem:Lcom/mediatek/anr/MessageLogger$MessageInfo;

    .line 397
    iput v0, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mSize:I

    .line 398
    return-void
.end method

.method private getLocked(I)Lcom/mediatek/anr/MessageLogger$MessageInfo;
    .registers 6
    .param p1, "n"    # I

    .line 417
    iget v0, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mHead:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mSize:I

    add-int/lit8 v3, v2, -0x1

    if-gt v1, v3, :cond_10

    .line 418
    iget-object v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anr/MessageLogger$MessageInfo;

    add-int/2addr v0, p1

    aget-object v0, v1, v0

    return-object v0

    .line 420
    :cond_10
    iget-object v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anr/MessageLogger$MessageInfo;

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add()Lcom/mediatek/anr/MessageLogger$MessageInfo;
    .registers 5

    monitor-enter p0

    .line 437
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->full()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 438
    iget v0, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mHead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mHead:I

    .line 439
    iget v2, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mSize:I

    if-ne v0, v2, :cond_14

    .line 440
    iput v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mHead:I

    .line 444
    .end local p0    # "this":Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;
    :cond_14
    iget-object v0, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anr/MessageLogger$MessageInfo;

    iget v2, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mTail:I

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mLastElem:Lcom/mediatek/anr/MessageLogger$MessageInfo;

    .line 446
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mTail:I

    .line 447
    iget v3, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mSize:I

    if-ne v2, v3, :cond_26

    .line 448
    iput v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mTail:I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 451
    :cond_26
    monitor-exit p0

    return-object v0

    .line 436
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public empty()Z
    .registers 3

    .line 401
    iget v0, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mHead:I

    iget v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mTail:I

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mElem:[Lcom/mediatek/anr/MessageLogger$MessageInfo;

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public full()Z
    .registers 5

    .line 405
    iget v0, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mTail:I

    iget v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mHead:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_11

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mSize:I

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    :cond_11
    :goto_11
    return v3
.end method

.method public declared-synchronized get(I)Lcom/mediatek/anr/MessageLogger$MessageInfo;
    .registers 3
    .param p1, "n"    # I

    monitor-enter p0

    .line 425
    if-ltz p1, :cond_12

    :try_start_3
    invoke-virtual {p0}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_12

    .line 426
    invoke-direct {p0, p1}, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->getLocked(I)Lcom/mediatek/anr/MessageLogger$MessageInfo;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 424
    .end local p0    # "this":Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;
    .end local p1    # "n":I
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1

    .line 428
    .restart local p0    # "this":Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;
    .restart local p1    # "n":I
    :cond_12
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getLast()Lcom/mediatek/anr/MessageLogger$MessageInfo;
    .registers 2

    monitor-enter p0

    .line 433
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mLastElem:Lcom/mediatek/anr/MessageLogger$MessageInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 433
    .end local p0    # "this":Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 4

    .line 409
    iget v0, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mTail:I

    iget v1, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mHead:I

    sub-int v2, v0, v1

    if-ltz v2, :cond_a

    .line 410
    sub-int/2addr v0, v1

    return v0

    .line 412
    :cond_a
    iget v2, p0, Lcom/mediatek/anr/MessageLogger$CircularMessageInfoArray;->mSize:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    return v2
.end method

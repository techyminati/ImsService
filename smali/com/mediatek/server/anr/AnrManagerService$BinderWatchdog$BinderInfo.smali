.class public Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;
.super Ljava/lang/Object;
.source "AnrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BinderInfo"
.end annotation


# static fields
.field protected static final INDEX_FROM:I = 0x1

.field protected static final INDEX_TO:I = 0x3


# instance fields
.field protected mDstPid:I

.field protected mDstTid:I

.field protected mSrcPid:I

.field protected mSrcTid:I

.field protected mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/String;

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    if-eqz p1, :cond_56

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_56

    .line 746
    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    .line 747
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "tokens":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v2, v0, v1

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, "from":[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_39

    array-length v6, v2

    if-ne v6, v5, :cond_39

    .line 750
    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mSrcPid:I

    .line 751
    aget-object v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mSrcTid:I

    .line 754
    :cond_39
    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "to":[Ljava/lang/String;
    if-eqz v3, :cond_55

    array-length v6, v3

    if-ne v6, v5, :cond_55

    .line 756
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    .line 757
    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstTid:I

    .line 759
    :cond_55
    return-void

    .line 743
    .end local v0    # "tokens":[Ljava/lang/String;
    .end local v2    # "from":[Ljava/lang/String;
    .end local v3    # "to":[Ljava/lang/String;
    :cond_56
    :goto_56
    return-void
.end method

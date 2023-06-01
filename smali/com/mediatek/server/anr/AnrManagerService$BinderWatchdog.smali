.class public final Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;
.super Ljava/lang/Object;
.source "AnrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/anr/AnrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "BinderWatchdog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;,
        Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;
    }
.end annotation


# static fields
.field private static final MAX_LINES:I = 0x40

.field private static final MAX_TIMEOUT_PIDS:I = 0x5


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(ILjava/util/ArrayList;Landroid/util/SparseArray;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Landroid/util/SparseArray;

    .line 723
    invoke-static {p0, p1, p2}, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;->setTransactionTimeoutPids(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    return-void
.end method

.method private static getBinderInfo(IILjava/util/ArrayList;)Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;
    .registers 8
    .param p0, "pid"    # I
    .param p1, "tid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;",
            ">;)",
            "Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;"
        }
    .end annotation

    .line 830
    .local p2, "binderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_4d

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4d

    if-nez p0, :cond_c

    goto :goto_4d

    .line 833
    :cond_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 834
    .local v1, "size":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;

    .line 835
    .local v3, "bi":Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;
    iget v4, v3, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-ne v4, p0, :cond_4b

    iget v4, v3, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mSrcTid:I

    if-ne v4, p1, :cond_4b

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout binder pid found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AnrManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    return-object v3

    .line 840
    .end local v3    # "bi":Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;
    :cond_4b
    goto :goto_14

    .line 841
    :cond_4c
    return-object v0

    .line 831
    .end local v1    # "size":I
    :cond_4d
    :goto_4d
    return-object v0
.end method

.method public static final getTimeoutBinderFromPid(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 800
    .local p1, "binderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;>;"
    if-lez p0, :cond_a0

    if-nez p1, :cond_6

    goto/16 :goto_a0

    .line 804
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimeoutBinderFromPid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " list size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    const-string v1, "AnrManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v2, "pidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;

    .line 809
    .local v4, "bi":Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;
    if-eqz v4, :cond_9e

    iget v5, v4, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-ne v5, p0, :cond_9e

    .line 810
    add-int/lit8 v0, v0, 0x1

    .line 811
    iget v5, v4, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, " "

    if-nez v5, :cond_7c

    .line 812
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutBinderFromPid pid added: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget v5, v4, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 816
    :cond_7c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutBinderFromPid pid existed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :goto_9a
    const/4 v5, 0x5

    if-lt v0, v5, :cond_9e

    .line 821
    goto :goto_9f

    .line 824
    .end local v4    # "bi":Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;
    :cond_9e
    goto :goto_32

    .line 825
    :cond_9f
    :goto_9f
    return-object v2

    .line 801
    .end local v0    # "count":I
    .end local v2    # "pidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a0
    :goto_a0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getTimeoutBinderPidList(II)Ljava/util/ArrayList;
    .registers 10
    .param p0, "pid"    # I
    .param p1, "tid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 764
    if-gtz p0, :cond_4

    .line 765
    const/4 v0, 0x0

    return-object v0

    .line 768
    :cond_4
    invoke-static {}, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;->readTimeoutBinderListFromFile()Ljava/util/ArrayList;

    move-result-object v0

    .line 769
    .local v0, "binderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;->getBinderInfo(IILjava/util/ArrayList;)Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;

    move-result-object v1

    .line 771
    .local v1, "next":Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;
    const/4 v2, 0x0

    .line 772
    .local v2, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v3, "pidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_12
    if-eqz v1, :cond_7d

    .line 774
    iget v4, v1, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    if-lez v4, :cond_74

    .line 775
    add-int/lit8 v2, v2, 0x1

    .line 776
    iget v4, v1, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, " "

    const-string v6, "AnrManager"

    if-nez v4, :cond_52

    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutBinderPidList pid added: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget v4, v1, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 781
    :cond_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutBinderPidList pid existed: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_70
    const/4 v4, 0x5

    if-lt v2, v4, :cond_74

    .line 786
    goto :goto_7d

    .line 789
    :cond_74
    iget v4, v1, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstPid:I

    iget v5, v1, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mDstTid:I

    invoke-static {v4, v5, v0}, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;->getBinderInfo(IILjava/util/ArrayList;)Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;

    move-result-object v1

    goto :goto_12

    .line 792
    :cond_7d
    :goto_7d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_88

    .line 793
    invoke-static {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;->getTimeoutBinderFromPid(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 795
    :cond_88
    return-object v3
.end method

.method private static final readTimeoutBinderListFromFile()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;",
            ">;"
        }
    .end annotation

    .line 845
    const-string v0, "IOException when close buffer reader:"

    const-string v1, "AnrManager"

    const/4 v2, 0x0

    .line 846
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 848
    .local v3, "binderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;>;"
    :try_start_6
    new-instance v4, Ljava/io/File;

    const-string v5, "/dev/binderfs/binder_logs/timeout_log"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 849
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_11} :catch_6b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_59
    .catchall {:try_start_6 .. :try_end_11} :catchall_57

    if-nez v5, :cond_1f

    .line 850
    nop

    .line 869
    if-eqz v2, :cond_1e

    .line 871
    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 875
    goto :goto_1e

    .line 872
    :catch_1a
    move-exception v5

    .line 873
    .local v5, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_1e
    :goto_1e
    return-object v3

    .line 852
    :cond_1f
    :try_start_1f
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 854
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 855
    :goto_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_4d

    .line 856
    new-instance v5, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;

    invoke-direct {v5, v6}, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;-><init>(Ljava/lang/String;)V

    .line 857
    .local v5, "bi":Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;
    iget v7, v5, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-lez v7, :cond_43

    .line 858
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_47} :catch_6b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_47} :catch_59
    .catchall {:try_start_1f .. :try_end_47} :catchall_57

    const/16 v8, 0x40

    if-le v7, v8, :cond_4c

    .line 861
    goto :goto_4d

    .line 863
    .end local v5    # "bi":Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$BinderInfo;
    :cond_4c
    goto :goto_30

    .line 869
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "line":Ljava/lang/String;
    :cond_4d
    :goto_4d
    nop

    .line 871
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 875
    goto :goto_56

    .line 872
    :catch_52
    move-exception v4

    .line 873
    .local v4, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    .end local v4    # "ioe":Ljava/io/IOException;
    :goto_56
    return-object v3

    .line 869
    :catchall_57
    move-exception v4

    goto :goto_7d

    .line 866
    :catch_59
    move-exception v4

    .line 867
    .local v4, "e":Ljava/io/IOException;
    :try_start_5a
    const-string v5, "IOException when gettting Binder. "

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_57

    .line 869
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_6a

    .line 871
    :try_start_62
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 875
    goto :goto_6a

    .line 872
    :catch_66
    move-exception v4

    .line 873
    .local v4, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_6a
    :goto_6a
    return-object v3

    .line 864
    :catch_6b
    move-exception v4

    .line 865
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_6c
    const-string v5, "FileNotFoundException"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_57

    .line 869
    nop

    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_7c

    .line 871
    :try_start_74
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    .line 875
    goto :goto_7c

    .line 872
    :catch_78
    move-exception v4

    .line 873
    .local v4, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_7c
    :goto_7c
    return-object v3

    .line 869
    :goto_7d
    if-eqz v2, :cond_87

    .line 871
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 875
    goto :goto_87

    .line 872
    :catch_83
    move-exception v4

    .line 873
    .restart local v4    # "ioe":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_87
    :goto_87
    return-object v3
.end method

.method private static final readTransactionInfoFromFile(ILjava/util/ArrayList;)V
    .registers 21
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 897
    .local p1, "binderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v1, p1

    const-string v0, ":"

    const-string v2, "node"

    const-string v3, "IOException when close buffer reader:"

    const-string v4, "AnrManager"

    const-string v5, "(\\S+.+transaction).+from\\s+(\\d+):(\\d+)\\s+to\\s+(\\d+):(\\d+).+start\\s+(\\d+\\.+\\d+).+android\\s+(\\d+-\\d+-\\d+\\s+\\d+:\\d+:\\d+\\.\\d+)"

    .line 900
    .local v5, "patternStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 902
    .local v6, "pattern":Ljava/util/regex/Pattern;
    const/4 v7, 0x0

    .line 903
    .local v7, "br":Ljava/io/BufferedReader;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v8, "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v9, "pidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_1b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/dev/binderfs/binder_logs/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 908
    .local v10, "filepath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 909
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_39} :catch_20b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_39} :catch_1fa
    .catchall {:try_start_1b .. :try_end_39} :catchall_1f3

    if-nez v12, :cond_63

    .line 910
    :try_start_3b
    const-string v0, "Filepath isn\'t exist"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_40} :catch_5c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_55
    .catchall {:try_start_3b .. :try_end_40} :catchall_4d

    .line 972
    if-eqz v7, :cond_4c

    .line 974
    :try_start_42
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 978
    goto :goto_4c

    .line 975
    :catch_46
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 976
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_4c
    :goto_4c
    return-void

    .line 972
    .end local v10    # "filepath":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    :catchall_4d
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_21f

    .line 969
    :catch_55
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_1ff

    .line 967
    :catch_5c
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_210

    .line 914
    .restart local v10    # "filepath":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    :cond_63
    :try_start_63
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v12

    .line 917
    :goto_6e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    .local v13, "line":Ljava/lang/String;
    if-eqz v12, :cond_1c5

    .line 918
    const-string v12, "transaction"

    invoke-virtual {v13, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_19f

    .line 919
    invoke-virtual {v6, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 920
    .local v12, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_195

    .line 921
    new-instance v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;

    invoke-direct {v14}, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;-><init>()V

    .line 922
    .local v14, "tmpInfo":Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->direction:Ljava/lang/String;

    .line 923
    const/4 v15, 0x2

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->snd_pid:Ljava/lang/String;

    .line 924
    const/4 v15, 0x3

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->snd_tid:Ljava/lang/String;

    .line 925
    const/4 v15, 0x4

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    .line 926
    const/4 v15, 0x5

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->rcv_tid:Ljava/lang/String;

    .line 927
    const/4 v15, 0x6

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->ktime:Ljava/lang/String;

    .line 928
    const/4 v15, 0x7

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->atime:Ljava/lang/String;

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15
    :try_end_c1
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_c1} :catch_20b
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_c1} :catch_1fa
    .catchall {:try_start_63 .. :try_end_c1} :catchall_1f3

    move-object/from16 v17, v5

    .end local v5    # "patternStr":Ljava/lang/String;
    .local v17, "patternStr":Ljava/lang/String;
    :try_start_c3
    iget-object v5, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->ktime:Ljava/lang/String;

    .line 930
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5
    :try_end_cd
    .catch Ljava/io/FileNotFoundException; {:try_start_c3 .. :try_end_cd} :catch_190
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_cd} :catch_18b
    .catchall {:try_start_c3 .. :try_end_cd} :catchall_185

    const/high16 v18, 0x447a0000    # 1000.0f

    mul-float v5, v5, v18

    move-object/from16 v18, v6

    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .local v18, "pattern":Ljava/util/regex/Pattern;
    float-to-long v5, v5

    sub-long v5, v15, v5

    :try_start_d6
    iput-wide v5, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->spent_time:J

    .line 931
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    iget-wide v5, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->spent_time:J

    const-wide/16 v15, 0x3e8

    cmp-long v5, v5, v15

    if-ltz v5, :cond_123

    .line 933
    iget-object v5, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    .line 934
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 933
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_123

    .line 935
    iget-object v5, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    .line 936
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 935
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    iget-object v5, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    .line 938
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 937
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_123

    .line 939
    iget-object v5, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    .line 940
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 939
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transcation binderList pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->direction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->snd_pid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->snd_tid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->rcv_tid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->ktime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " android time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->atime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " spent time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v10

    move-object v15, v11

    .end local v10    # "filepath":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .local v6, "filepath":Ljava/lang/String;
    .local v15, "file":Ljava/io/File;
    iget-wide v10, v14, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;->spent_time:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    move-object v10, v6

    move-object v11, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    .end local v14    # "tmpInfo":Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;
    goto/16 :goto_6e

    .line 972
    .end local v12    # "matcher":Ljava/util/regex/Matcher;
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "pattern":Ljava/util/regex/Pattern;
    .local v6, "pattern":Ljava/util/regex/Pattern;
    :catchall_185
    move-exception v0

    move-object/from16 v18, v6

    move-object v2, v0

    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .restart local v18    # "pattern":Ljava/util/regex/Pattern;
    goto/16 :goto_21f

    .line 969
    .end local v18    # "pattern":Ljava/util/regex/Pattern;
    .restart local v6    # "pattern":Ljava/util/regex/Pattern;
    :catch_18b
    move-exception v0

    move-object/from16 v18, v6

    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .restart local v18    # "pattern":Ljava/util/regex/Pattern;
    goto/16 :goto_1ff

    .line 967
    .end local v18    # "pattern":Ljava/util/regex/Pattern;
    .restart local v6    # "pattern":Ljava/util/regex/Pattern;
    :catch_190
    move-exception v0

    move-object/from16 v18, v6

    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .restart local v18    # "pattern":Ljava/util/regex/Pattern;
    goto/16 :goto_210

    .line 920
    .end local v17    # "patternStr":Ljava/lang/String;
    .end local v18    # "pattern":Ljava/util/regex/Pattern;
    .restart local v5    # "patternStr":Ljava/lang/String;
    .restart local v6    # "pattern":Ljava/util/regex/Pattern;
    .restart local v10    # "filepath":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "matcher":Ljava/util/regex/Matcher;
    .restart local v13    # "line":Ljava/lang/String;
    :cond_195
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object v6, v10

    move-object v15, v11

    .end local v5    # "patternStr":Ljava/lang/String;
    .end local v10    # "filepath":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .local v6, "filepath":Ljava/lang/String;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v17    # "patternStr":Ljava/lang/String;
    .restart local v18    # "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v6, v18

    goto/16 :goto_6e

    .line 956
    .end local v12    # "matcher":Ljava/util/regex/Matcher;
    .end local v15    # "file":Ljava/io/File;
    .end local v17    # "patternStr":Ljava/lang/String;
    .end local v18    # "pattern":Ljava/util/regex/Pattern;
    .restart local v5    # "patternStr":Ljava/lang/String;
    .local v6, "pattern":Ljava/util/regex/Pattern;
    .restart local v10    # "filepath":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    :cond_19f
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object v6, v10

    move-object v15, v11

    .end local v5    # "patternStr":Ljava/lang/String;
    .end local v10    # "filepath":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .local v6, "filepath":Ljava/lang/String;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v17    # "patternStr":Ljava/lang/String;
    .restart local v18    # "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_1bd

    .line 957
    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/16 v10, 0x14

    if-ge v5, v10, :cond_1b5

    .line 958
    goto :goto_1cb

    .line 957
    :cond_1b5
    move-object v10, v6

    move-object v11, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_6e

    .line 956
    :cond_1bd
    move-object v10, v6

    move-object v11, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_6e

    .line 917
    .end local v15    # "file":Ljava/io/File;
    .end local v17    # "patternStr":Ljava/lang/String;
    .end local v18    # "pattern":Ljava/util/regex/Pattern;
    .restart local v5    # "patternStr":Ljava/lang/String;
    .local v6, "pattern":Ljava/util/regex/Pattern;
    .restart local v10    # "filepath":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    :cond_1c5
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object v6, v10

    move-object v15, v11

    .line 963
    .end local v5    # "patternStr":Ljava/lang/String;
    .end local v10    # "filepath":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .local v6, "filepath":Ljava/lang/String;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v17    # "patternStr":Ljava/lang/String;
    .restart local v18    # "pattern":Ljava/util/regex/Pattern;
    :goto_1cb
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1cf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 964
    .local v2, "pidnumber":I
    invoke-static {v2, v1}, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;->readTransactionInfoFromFile(ILjava/util/ArrayList;)V
    :try_end_1e2
    .catch Ljava/io/FileNotFoundException; {:try_start_d6 .. :try_end_1e2} :catch_1f1
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_1e2} :catch_1ef
    .catchall {:try_start_d6 .. :try_end_1e2} :catchall_21d

    .line 965
    .end local v2    # "pidnumber":I
    goto :goto_1cf

    .line 972
    .end local v6    # "filepath":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    :cond_1e3
    nop

    .line 974
    :try_start_1e4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_1e8

    .line 978
    :goto_1e7
    goto :goto_21c

    .line 975
    :catch_1e8
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 976
    .restart local v0    # "ioe":Ljava/io/IOException;
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ioe":Ljava/io/IOException;
    goto :goto_1e7

    .line 969
    :catch_1ef
    move-exception v0

    goto :goto_1ff

    .line 967
    :catch_1f1
    move-exception v0

    goto :goto_210

    .line 972
    .end local v17    # "patternStr":Ljava/lang/String;
    .end local v18    # "pattern":Ljava/util/regex/Pattern;
    .restart local v5    # "patternStr":Ljava/lang/String;
    .local v6, "pattern":Ljava/util/regex/Pattern;
    :catchall_1f3
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object v2, v0

    .end local v5    # "patternStr":Ljava/lang/String;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .restart local v17    # "patternStr":Ljava/lang/String;
    .restart local v18    # "pattern":Ljava/util/regex/Pattern;
    goto :goto_21f

    .line 969
    .end local v17    # "patternStr":Ljava/lang/String;
    .end local v18    # "pattern":Ljava/util/regex/Pattern;
    .restart local v5    # "patternStr":Ljava/lang/String;
    .restart local v6    # "pattern":Ljava/util/regex/Pattern;
    :catch_1fa
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 970
    .end local v5    # "patternStr":Ljava/lang/String;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "patternStr":Ljava/lang/String;
    .restart local v18    # "pattern":Ljava/util/regex/Pattern;
    :goto_1ff
    :try_start_1ff
    const-string v2, "IOException when gettting Binder. "

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_204
    .catchall {:try_start_1ff .. :try_end_204} :catchall_21d

    .line 972
    nop

    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_21c

    .line 974
    :try_start_207
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_207 .. :try_end_20a} :catch_1e8

    goto :goto_1e7

    .line 967
    .end local v17    # "patternStr":Ljava/lang/String;
    .end local v18    # "pattern":Ljava/util/regex/Pattern;
    .restart local v5    # "patternStr":Ljava/lang/String;
    .restart local v6    # "pattern":Ljava/util/regex/Pattern;
    :catch_20b
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 968
    .end local v5    # "patternStr":Ljava/lang/String;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v17    # "patternStr":Ljava/lang/String;
    .restart local v18    # "pattern":Ljava/util/regex/Pattern;
    :goto_210
    :try_start_210
    const-string v2, "FileNotFoundException"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_215
    .catchall {:try_start_210 .. :try_end_215} :catchall_21d

    .line 972
    nop

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v7, :cond_21c

    .line 974
    :try_start_218
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_21b
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_21b} :catch_1e8

    goto :goto_1e7

    .line 981
    :cond_21c
    :goto_21c
    return-void

    .line 972
    :catchall_21d
    move-exception v0

    move-object v2, v0

    :goto_21f
    if-eqz v7, :cond_22b

    .line 974
    :try_start_221
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_224
    .catch Ljava/io/IOException; {:try_start_221 .. :try_end_224} :catch_225

    .line 978
    goto :goto_22b

    .line 975
    :catch_225
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 976
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_22b
    :goto_22b
    throw v2
.end method

.method private static final setTransactionTimeoutPids(ILjava/util/ArrayList;Landroid/util/SparseArray;)V
    .registers 8
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 985
    .local p1, "desList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v0, "tmpPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;->readTransactionInfoFromFile(ILjava/util/ArrayList;)V

    .line 987
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 988
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 989
    .local v2, "bpid":Ljava/lang/Integer;
    if-eqz v2, :cond_3c

    .line 990
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 991
    .local v3, "pidValue":I
    if-eq v3, p0, :cond_3c

    .line 992
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 993
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    if-eqz p2, :cond_3c

    .line 995
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1000
    .end local v2    # "bpid":Ljava/lang/Integer;
    .end local v3    # "pidValue":I
    :cond_3c
    goto :goto_12

    .line 1002
    :cond_3d
    return-void
.end method

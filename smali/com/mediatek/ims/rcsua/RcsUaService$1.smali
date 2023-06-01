.class Lcom/mediatek/ims/rcsua/RcsUaService$1;
.super Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;
.source "RcsUaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcsua/RcsUaService;->registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcsua/RcsUaService;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 730
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$1;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onConfigErrorReceived$0(ILjava/lang/String;Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 4
    .param p0, "errorCode"    # I
    .param p1, "errorString"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 758
    new-instance v0, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object p1, v2, v1

    invoke-direct {v0, p2, v2}, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;-><init>(Lcom/mediatek/ims/rcsua/AcsEventCallback;[Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/mediatek/ims/rcsua/AcsEventCallback;->run(Ljava/lang/Runnable;)V

    .line 759
    return-void
.end method


# virtual methods
.method public onConfigChanged(ZI)V
    .locals 7
    .param p1, "valid"    # Z
    .param p2, "version"    # I

    .line 733
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigChanged:valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$1;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$1;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$100(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 736
    .local v2, "callback":Lcom/mediatek/ims/rcsua/AcsEventCallback;
    new-instance v3, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    move v5, v6

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v2, v4}, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;-><init>(Lcom/mediatek/ims/rcsua/AcsEventCallback;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcsua/AcsEventCallback;->run(Ljava/lang/Runnable;)V

    .line 737
    .end local v2    # "callback":Lcom/mediatek/ims/rcsua/AcsEventCallback;
    goto :goto_0

    .line 738
    :cond_1
    monitor-exit v0

    .line 739
    return-void

    .line 738
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConfigErrorReceived(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 755
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigErrorReceived errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$1;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$1;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$100(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/rcsua/RcsUaService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/mediatek/ims/rcsua/RcsUaService$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 760
    monitor-exit v0

    .line 761
    return-void

    .line 760
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConnectionChanged(Z)V
    .locals 9
    .param p1, "status"    # Z

    .line 743
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionChanged:status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$1;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 745
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$1;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$100(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 746
    .local v2, "callback":Lcom/mediatek/ims/rcsua/AcsEventCallback;
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    .line 747
    new-instance v7, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v7, v2, v3}, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;-><init>(Lcom/mediatek/ims/rcsua/AcsEventCallback;[Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lcom/mediatek/ims/rcsua/AcsEventCallback;->run(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 749
    :cond_0
    new-instance v7, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v7, v2, v3}, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;-><init>(Lcom/mediatek/ims/rcsua/AcsEventCallback;[Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lcom/mediatek/ims/rcsua/AcsEventCallback;->run(Ljava/lang/Runnable;)V

    .line 750
    .end local v2    # "callback":Lcom/mediatek/ims/rcsua/AcsEventCallback;
    :goto_1
    goto :goto_0

    .line 751
    :cond_1
    monitor-exit v0

    .line 752
    return-void

    .line 751
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

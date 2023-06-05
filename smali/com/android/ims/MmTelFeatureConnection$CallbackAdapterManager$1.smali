.class Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;-><init>(Landroid/content/Context;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;


# direct methods
.method constructor <init>(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;

    .line 95
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;"
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;->this$0:Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 9

    .line 98
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;->this$0:Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->access$000(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 100
    .local v0, "manager":Landroid/telephony/SubscriptionManager;
    if-nez v0, :cond_0

    .line 101
    const-string v1, "CallbackAdapterManager"

    const-string v2, "onSubscriptionsChanged: could not find SubscriptionManager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v2

    .line 105
    .local v2, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_1

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 108
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/ims/-$$Lambda$szO0o3matefQqo-6NB-dzsr9eCw;->INSTANCE:Lcom/android/ims/-$$Lambda$szO0o3matefQqo-6NB-dzsr9eCw;

    .line 109
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 110
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 111
    .local v3, "newSubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;->this$0:Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;

    invoke-static {v4}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->access$100(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 112
    :try_start_0
    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;->this$0:Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;

    invoke-static {v6}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->access$200(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 113
    .local v5, "storedSubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    nop

    .local v1, "keyIndex":I
    :goto_0
    iget-object v6, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;->this$0:Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;

    invoke-static {v6}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->access$200(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 115
    iget-object v6, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;->this$0:Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;

    invoke-static {v6}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->access$200(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "keyIndex":I
    :cond_2
    invoke-interface {v5, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 120
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 121
    .local v6, "subId":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;->this$0:Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->access$300(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;I)V

    .line 122
    .end local v6    # "subId":Ljava/lang/Integer;
    goto :goto_1

    .line 123
    .end local v5    # "storedSubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    monitor-exit v4

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

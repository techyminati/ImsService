.class public abstract Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;
.super Ljava/lang/Object;
.source "MmTelFeatureConnection.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CallbackAdapterManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackAdapterManager"


# instance fields
.field private final mCallbackSubscriptionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 88
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 89
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLock:Ljava/lang/Object;

    .line 91
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 95
    :cond_0
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;

    invoke-direct {v0, p0}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager$1;-><init>(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;

    .line 76
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;

    .line 76
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;

    .line 76
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;
    .param p1, "x1"    # I

    .line 76
    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->removeCallbacksForSubscription(I)V

    return-void
.end method

.method private clearCallbacksForAllSubscriptions()V
    .locals 4

    .line 238
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "keyIndex":I
    :goto_0
    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "keyIndex":I
    :cond_0
    new-instance v2, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$CallbackAdapterManager$xhSdbzmL46sv3qoJLYbOhV0PL3w;

    invoke-direct {v2, p0}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$CallbackAdapterManager$xhSdbzmL46sv3qoJLYbOhV0PL3w;-><init>(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 244
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$xhSdbzmL46sv3qoJLYbOhV0PL3w(Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->removeCallbacksForSubscription(I)V

    return-void
.end method

.method private linkCallbackToSubscription(Landroid/os/IInterface;I)V
    .locals 3
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TT;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->registerForSubscriptionsChanged()V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 185
    .local v1, "callbacksPerSub":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez v1, :cond_1

    .line 187
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 188
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    nop

    .end local v1    # "callbacksPerSub":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerForSubscriptionsChanged()V
    .locals 3

    .line 248
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 249
    .local v0, "manager":Landroid/telephony/SubscriptionManager;
    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0

    .line 252
    :cond_0
    const-string v1, "CallbackAdapterManager"

    const-string v2, "registerForSubscriptionsChanged: could not find SubscriptionManager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void
.end method

.method private removeCallbacksForSubscription(I)V
    .locals 4
    .param p1, "subId"    # I

    .line 213
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 218
    .local v1, "callbacksPerSub":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez v1, :cond_1

    .line 220
    monitor-exit v0

    return-void

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 224
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    .line 225
    .local v3, "callback":Landroid/os/IInterface;, "TT;"
    invoke-virtual {p0, v3}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->removeCallback(Landroid/os/IInterface;)V

    .line 226
    .end local v3    # "callback":Landroid/os/IInterface;, "TT;"
    goto :goto_0

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->unregisterForSubscriptionsChanged()V

    .line 232
    .end local v1    # "callbacksPerSub":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :cond_3
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unlinkCallbackFromSubscription(Landroid/os/IInterface;I)V
    .locals 3
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TT;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 198
    .local v1, "callbacksPerSub":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-eqz v1, :cond_0

    .line 199
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mCallbackSubscriptionMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->unregisterForSubscriptionsChanged()V

    .line 207
    .end local v1    # "callbacksPerSub":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :cond_1
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterForSubscriptionsChanged()V
    .locals 3

    .line 257
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 258
    .local v0, "manager":Landroid/telephony/SubscriptionManager;
    if-eqz v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0

    .line 261
    :cond_0
    const-string v1, "CallbackAdapterManager"

    const-string v2, "unregisterForSubscriptionsChanged: could not find SubscriptionManager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    return-void
.end method


# virtual methods
.method public final addCallback(Landroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    .local p1, "localCallback":Landroid/os/IInterface;, "TT;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->registerCallback(Landroid/os/IInterface;)V

    .line 137
    const-string v1, "CallbackAdapterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local callback added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 139
    monitor-exit v0

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final addCallbackForSubscription(Landroid/os/IInterface;I)V
    .locals 2
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    .local p1, "localCallback":Landroid/os/IInterface;, "TT;"
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->addCallback(Landroid/os/IInterface;)V

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->linkCallbackToSubscription(Landroid/os/IInterface;I)V

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 5

    .line 270
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 272
    .local v1, "lastCallbackIndex":I
    move v2, v1

    .local v2, "ii":I
    :goto_0
    if-ltz v2, :cond_0

    .line 273
    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v3

    .line 274
    .local v3, "callbackItem":Landroid/os/IInterface;, "TT;"
    invoke-virtual {p0, v3}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->unregisterCallback(Landroid/os/IInterface;)V

    .line 275
    iget-object v4, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 272
    nop

    .end local v3    # "callbackItem":Landroid/os/IInterface;, "TT;"
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 277
    .end local v2    # "ii":I
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->clearCallbacksForAllSubscriptions()V

    .line 278
    const-string v2, "CallbackAdapterManager"

    const-string v3, "Closing connection and clearing callbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    nop

    .end local v1    # "lastCallbackIndex":I
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract registerCallback(Landroid/os/IInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final removeCallback(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    .local p1, "localCallback":Landroid/os/IInterface;, "TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local callback removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallbackAdapterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->unregisterCallback(Landroid/os/IInterface;)V

    .line 162
    :cond_0
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final removeCallbackForSubscription(Landroid/os/IInterface;I)V
    .locals 2
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    .local p1, "localCallback":Landroid/os/IInterface;, "TT;"
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->removeCallback(Landroid/os/IInterface;)V

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->unlinkCallbackFromSubscription(Landroid/os/IInterface;I)V

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract unregisterCallback(Landroid/os/IInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

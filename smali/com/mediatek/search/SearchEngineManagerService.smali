.class public Lcom/mediatek/search/SearchEngineManagerService;
.super Lcom/mediatek/search/ISearchEngineManagerService$Stub;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;,
        Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchEngineManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

.field private mSearchEngineObserver:Landroid/database/ContentObserver;

.field private mSearchEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/common/search/SearchEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;-><init>()V

    .line 104
    new-instance v0, Lcom/mediatek/search/SearchEngineManagerService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/search/SearchEngineManagerService$1;-><init>(Lcom/mediatek/search/SearchEngineManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineObserver:Landroid/database/ContentObserver;

    .line 96
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;-><init>(Lcom/mediatek/search/SearchEngineManagerService;Lcom/mediatek/search/SearchEngineManagerService$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/common/regionalphone/RegionalPhone;->SEARCHENGINE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/search/SearchEngineManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/search/SearchEngineManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngines()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/search/SearchEngineManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/search/SearchEngineManagerService;

    .line 76
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/search/SearchEngineManagerService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/search/SearchEngineManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/search/SearchEngineManagerService;->broadcastSearchEngineChangedInternal(Landroid/content/Context;)V

    return-void
.end method

.method private broadcastSearchEngineChangedInternal(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.search.SEARCH_ENGINE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    const-string v1, "SearchEngineManagerService"

    const-string v2, "broadcast serach engine changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method private getByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 6
    .param p1, "favicon"    # Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailables()Ljava/util/List;

    move-result-object v0

    .line 220
    .local v0, "engines":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/search/SearchEngine;

    .line 221
    .local v2, "engine":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {v2}, Lcom/mediatek/common/search/SearchEngine;->getFaviconUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 222
    return-object v2

    .line 224
    .end local v2    # "engine":Lcom/mediatek/common/search/SearchEngine;
    :cond_1f
    goto :goto_8

    .line 225
    :cond_20
    const/4 v1, 0x0

    return-object v1
.end method

.method private getByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailables()Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "engines":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/search/SearchEngine;

    .line 234
    .local v2, "engine":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {v2}, Lcom/mediatek/common/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 235
    return-object v2

    .line 237
    .end local v2    # "engine":Lcom/mediatek/common/search/SearchEngine;
    :cond_1f
    goto :goto_8

    .line 238
    :cond_20
    const/4 v1, 0x0

    return-object v1
.end method

.method private initSearchEngines()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;

    .line 158
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 160
    const v1, 0x804000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "searchEngines":[Ljava/lang/String;
    if-eqz v1, :cond_53

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v3, v2, :cond_53

    .line 165
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 166
    .local v3, "sp":Ljava/lang/String;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1f
    array-length v5, v1

    if-ge v4, v5, :cond_30

    .line 167
    aget-object v5, v1, v4

    .line 168
    .local v5, "configInfo":Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/mediatek/common/search/SearchEngine;->parseFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v6

    .line 169
    .local v6, "info":Lcom/mediatek/common/search/SearchEngine;
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v5    # "configInfo":Ljava/lang/String;
    .end local v6    # "info":Lcom/mediatek/common/search/SearchEngine;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 173
    .end local v4    # "i":I
    :cond_30
    iget-object v4, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    if-eqz v4, :cond_44

    .line 174
    invoke-virtual {v4}, Lcom/mediatek/common/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    .line 175
    invoke-virtual {v5}, Lcom/mediatek/common/search/SearchEngine;->getFaviconUri()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual {p0, v4, v5}, Lcom/mediatek/search/SearchEngineManagerService;->getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    .line 178
    :cond_44
    iget-object v4, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    if-nez v4, :cond_52

    .line 179
    iget-object v4, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/search/SearchEngine;

    iput-object v2, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    .line 181
    :cond_52
    return-void

    .line 163
    .end local v3    # "sp":Ljava/lang/String;
    :cond_53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No data found for "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized getAvailables()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/common/search/SearchEngine;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_1
    const-string v0, "SearchEngineManagerService"

    const-string v1, "get avilable search engines"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;

    if-nez v0, :cond_f

    .line 140
    invoke-direct {p0}, Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngines()V

    .line 142
    .end local p0    # "this":Lcom/mediatek/search/SearchEngineManagerService;
    :cond_f
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 137
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "favicon"    # Ljava/lang/String;

    .line 211
    invoke-direct {p0, p1}, Lcom/mediatek/search/SearchEngineManagerService;->getByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    .line 212
    .local v0, "engine":Lcom/mediatek/common/search/SearchEngine;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_c

    :cond_8
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public getDefault()Lcom/mediatek/common/search/SearchEngine;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    return-object v0
.end method

.method public getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 4
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 249
    sparse-switch p1, :sswitch_data_10

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 253
    :sswitch_5
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    return-object v0

    .line 251
    :sswitch_a
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_10
    .sparse-switch
        -0x1 -> :sswitch_a
        0x2 -> :sswitch_5
    .end sparse-switch
.end method

.method public setDefault(Lcom/mediatek/common/search/SearchEngine;)Z
    .registers 7
    .param p1, "engine"    # Lcom/mediatek/common/search/SearchEngine;

    .line 275
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailables()Ljava/util/List;

    move-result-object v0

    .line 276
    .local v0, "engines":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/search/SearchEngine;

    .line 277
    .local v2, "eng":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {v2}, Lcom/mediatek/common/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/common/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 278
    iput-object v2, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    .line 279
    const/4 v1, 0x1

    return v1

    .line 281
    .end local v2    # "eng":Lcom/mediatek/common/search/SearchEngine;
    :cond_26
    goto :goto_8

    .line 282
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.class public Lcom/mediatek/search/SearchEngineManager;
.super Ljava/lang/Object;
.source "SearchEngineManager.java"


# static fields
.field public static final ACTION_SEARCH_ENGINE_CHANGED:Ljava/lang/String; = "com.mediatek.search.SEARCH_ENGINE_CHANGED"

.field private static final DBG:Z = false

.field public static final SEARCH_ENGINE_SERVICE:Ljava/lang/String; = "search_engine_service"

.field private static final TAG:Ljava/lang/String; = "SearchEngineManager"

.field private static mService:Lcom/mediatek/search/ISearchEngineManagerService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    nop

    .line 107
    const-string v0, "search_engine_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v0

    sput-object v0, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    .line 108
    return-void
.end method


# virtual methods
.method public getAvailables()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/common/search/SearchEngine;",
            ">;"
        }
    .end annotation

    .line 118
    :try_start_0
    sget-object v0, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    invoke-interface {v0}, Lcom/mediatek/search/ISearchEngineManagerService;->getAvailables()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 119
    :catch_7
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSearchEngineInfos() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchEngineManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "favicon"    # Ljava/lang/String;

    .line 136
    :try_start_0
    sget-object v0, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/search/ISearchEngineManagerService;->getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 137
    :catch_7
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBestMatch() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchEngineManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, 0x0

    return-object v1
.end method

.method public getByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 3
    .param p1, "favicon"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/search/SearchEngineManager;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 161
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/search/SearchEngineManager;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    return-object v0
.end method

.method public getDefault()Lcom/mediatek/common/search/SearchEngine;
    .registers 4

    .line 188
    :try_start_0
    sget-object v0, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    invoke-interface {v0}, Lcom/mediatek/search/ISearchEngineManagerService;->getDefault()Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 189
    :catch_7
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemDefaultSearchEngine() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchEngineManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 6
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 173
    :try_start_0
    sget-object v0, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/search/ISearchEngineManagerService;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 174
    :catch_7
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSearchEngine(int field, String value) failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchEngineManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    return-object v1
.end method

.method public setDefault(Lcom/mediatek/common/search/SearchEngine;)Z
    .registers 5
    .param p1, "engine"    # Lcom/mediatek/common/search/SearchEngine;

    .line 203
    :try_start_0
    sget-object v0, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    invoke-interface {v0, p1}, Lcom/mediatek/search/ISearchEngineManagerService;->setDefault(Lcom/mediatek/common/search/SearchEngine;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 204
    :catch_7
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemDefaultSearchEngine() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchEngineManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x0

    return v1
.end method

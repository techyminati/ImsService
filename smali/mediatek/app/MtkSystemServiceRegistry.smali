.class public final Lmediatek/app/MtkSystemServiceRegistry;
.super Ljava/lang/Object;
.source "MtkSystemServiceRegistry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkSystemServiceRegistry"

.field private static sSystemServiceFetchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static sSystemServiceNames:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllService()V
    .registers 3

    .line 60
    const-string v0, "MtkSystemServiceRegistry"

    const-string v1, "registerAllService start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v1, "Comment out registerService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-class v0, Lcom/mediatek/search/SearchEngineManager;

    new-instance v1, Lmediatek/app/MtkSystemServiceRegistry$1;

    invoke-direct {v1}, Lmediatek/app/MtkSystemServiceRegistry$1;-><init>()V

    const-string v2, "search_engine_service"

    invoke-static {v2, v0, v1}, Lmediatek/app/MtkSystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 69
    invoke-static {}, Lmediatek/app/MtkSystemServiceRegistry;->registerFmService()V

    .line 72
    invoke-static {}, Lmediatek/app/MtkSystemServiceRegistry;->registerOmadmService()V

    .line 74
    return-void
.end method

.method public static registerFmService()V
    .registers 9

    .line 94
    const-string v0, "com.mediatek.fmradio.FmRadioPackageManager"

    .line 95
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .line 97
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 98
    if-eqz v1, :cond_40

    .line 99
    const-string v2, "getPackageName"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 100
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 101
    .local v3, "object":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 102
    .local v5, "clazzName":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v1, v6

    .line 103
    if-eqz v1, :cond_40

    .line 104
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v4

    .line 105
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 106
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v4, :cond_40

    .line 107
    const-string v6, "fm_radio_service"

    const-class v7, Ljava/util/Optional;

    new-instance v8, Lmediatek/app/MtkSystemServiceRegistry$2;

    invoke-direct {v8, v4}, Lmediatek/app/MtkSystemServiceRegistry$2;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v6, v7, v8}, Lmediatek/app/MtkSystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_40} :catch_41

    .line 129
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "clazzName":Ljava/lang/String;
    :cond_40
    goto :goto_49

    .line 127
    :catch_41
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MtkSystemServiceRegistry"

    const-string v4, "Exception while getting FmRadioPackageManager class"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_49
    return-void
.end method

.method public static registerOmadmService()V
    .registers 6

    .line 133
    const-string v0, "com.mediatek.common.omadm.OmadmManager"

    .line 134
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .line 136
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 137
    if-eqz v1, :cond_24

    .line 138
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 139
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v2, :cond_24

    .line 140
    const-string v3, "omadm_service"

    const-class v4, Ljava/util/Optional;

    new-instance v5, Lmediatek/app/MtkSystemServiceRegistry$3;

    invoke-direct {v5, v2}, Lmediatek/app/MtkSystemServiceRegistry$3;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v3, v4, v5}, Lmediatek/app/MtkSystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_25

    .line 161
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_24
    goto :goto_2d

    .line 159
    :catch_25
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MtkSystemServiceRegistry"

    const-string v4, "Exception while getting OmadmManager class"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method private static registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 89
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Lmediatek/app/MtkSystemServiceRegistry;->sSystemServiceNames:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lmediatek/app/MtkSystemServiceRegistry;->sSystemServiceFetchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public static setMtkSystemServiceName(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "names":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Ljava/lang/String;>;"
    .local p1, "fetchers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMtkSystemServiceName start names"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",fetchers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSystemServiceRegistry"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sput-object p0, Lmediatek/app/MtkSystemServiceRegistry;->sSystemServiceNames:Landroid/util/ArrayMap;

    .line 80
    sput-object p1, Lmediatek/app/MtkSystemServiceRegistry;->sSystemServiceFetchers:Landroid/util/ArrayMap;

    .line 81
    return-void
.end method

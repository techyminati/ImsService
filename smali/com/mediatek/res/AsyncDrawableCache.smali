.class Lcom/mediatek/res/AsyncDrawableCache;
.super Ljava/lang/Object;
.source "AsyncDrawableCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncDrawableCache"

.field private static isDEBUG:Z = false

.field private static isPreloaded:Z = false

.field private static lock:Ljava/lang/Object; = null

.field private static mAsyncDrawableCache:Lcom/mediatek/res/AsyncDrawableCache; = null

.field private static final sClearCacheTime:J = 0x2710L

.field private static final sDefResolution:Ljava/lang/String; = "720"

.field private static final sDrawableCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static sFeatureConfig:Ljava/lang/String; = null

.field private static final sPerfName:Ljava/lang/String; = "perf_img_scale"

.field private static sResolution:Ljava/lang/String; = null

.field private static final sResolutionEnableProp:Ljava/lang/String; = "ro.vendor.pref_scale_enable_cfg"

.field private static sResolutionList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/res/AsyncDrawableCache;->isDEBUG:Z

    .line 58
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/res/AsyncDrawableCache;->mAsyncDrawableCache:Lcom/mediatek/res/AsyncDrawableCache;

    .line 61
    const-string v1, "ro.vendor.pref_scale_enable_cfg"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/res/AsyncDrawableCache;->sFeatureConfig:Ljava/lang/String;

    .line 63
    const-string v1, "720"

    sput-object v1, Lcom/mediatek/res/AsyncDrawableCache;->sResolution:Ljava/lang/String;

    .line 64
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/mediatek/res/AsyncDrawableCache;->sDrawableCache:Landroid/util/ArrayMap;

    .line 66
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/mediatek/res/AsyncDrawableCache;->sResolutionList:Landroid/util/ArrayMap;

    .line 69
    sput-boolean v0, Lcom/mediatek/res/AsyncDrawableCache;->isPreloaded:Z

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/res/AsyncDrawableCache;->lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/mediatek/res/AsyncDrawableCache;->sResolutionList:Landroid/util/ArrayMap;

    const v1, 0x4b000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "480"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/mediatek/res/AsyncDrawableCache;->sResolutionList:Landroid/util/ArrayMap;

    const v1, 0xe1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "720"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/mediatek/res/AsyncDrawableCache;->sResolutionList:Landroid/util/ArrayMap;

    const v1, 0x1fa400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1080"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/res/AsyncDrawableCache;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/res/AsyncDrawableCache;

    .line 53
    invoke-direct {p0}, Lcom/mediatek/res/AsyncDrawableCache;->clearCache()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 53
    sput-boolean p0, Lcom/mediatek/res/AsyncDrawableCache;->isPreloaded:Z

    return p0
.end method

.method private clearCache()V
    .registers 5

    .line 259
    sget-object v0, Lcom/mediatek/res/AsyncDrawableCache;->sDrawableCache:Landroid/util/ArrayMap;

    if-eqz v0, :cond_15

    .line 260
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-eqz v1, :cond_15

    .line 261
    sget-object v1, Lcom/mediatek/res/AsyncDrawableCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_d
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 263
    monitor-exit v1

    goto :goto_15

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v0

    .line 266
    :cond_15
    :goto_15
    sget-boolean v1, Lcom/mediatek/res/AsyncDrawableCache;->isDEBUG:Z

    if-eqz v1, :cond_33

    .line 267
    const-string v1, "AsyncDrawableCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCache, cache size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_33
    return-void
.end method

.method private clearCacheAfterPreload()V
    .registers 5

    .line 272
    sget-boolean v0, Lcom/mediatek/res/AsyncDrawableCache;->isPreloaded:Z

    if-eqz v0, :cond_13

    .line 273
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 274
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/mediatek/res/AsyncDrawableCache$1;

    invoke-direct {v1, p0}, Lcom/mediatek/res/AsyncDrawableCache$1;-><init>(Lcom/mediatek/res/AsyncDrawableCache;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 282
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_13
    return-void
.end method

.method static getInstance()Lcom/mediatek/res/AsyncDrawableCache;
    .registers 2

    .line 80
    sget-object v0, Lcom/mediatek/res/AsyncDrawableCache;->mAsyncDrawableCache:Lcom/mediatek/res/AsyncDrawableCache;

    if-nez v0, :cond_17

    .line 81
    const-class v0, Lcom/mediatek/res/AsyncDrawableCache;

    monitor-enter v0

    .line 82
    :try_start_7
    sget-object v1, Lcom/mediatek/res/AsyncDrawableCache;->mAsyncDrawableCache:Lcom/mediatek/res/AsyncDrawableCache;

    if-nez v1, :cond_12

    .line 83
    new-instance v1, Lcom/mediatek/res/AsyncDrawableCache;

    invoke-direct {v1}, Lcom/mediatek/res/AsyncDrawableCache;-><init>()V

    sput-object v1, Lcom/mediatek/res/AsyncDrawableCache;->mAsyncDrawableCache:Lcom/mediatek/res/AsyncDrawableCache;

    .line 85
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 87
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/res/AsyncDrawableCache;->mAsyncDrawableCache:Lcom/mediatek/res/AsyncDrawableCache;

    return-object v0
.end method

.method private isEnableFeature()Z
    .registers 5

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "isEnable":Z
    sget-object v1, Lcom/mediatek/res/AsyncDrawableCache;->sFeatureConfig:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 236
    const/4 v0, 0x0

    .line 237
    sput-boolean v2, Lcom/mediatek/res/AsyncDrawableCache;->isDEBUG:Z

    goto :goto_2c

    .line 238
    :cond_10
    sget-object v1, Lcom/mediatek/res/AsyncDrawableCache;->sFeatureConfig:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 239
    const/4 v0, 0x1

    .line 240
    sput-boolean v2, Lcom/mediatek/res/AsyncDrawableCache;->isDEBUG:Z

    goto :goto_2c

    .line 241
    :cond_1e
    sget-object v1, Lcom/mediatek/res/AsyncDrawableCache;->sFeatureConfig:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 242
    const/4 v0, 0x1

    .line 243
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/res/AsyncDrawableCache;->isDEBUG:Z

    .line 246
    :cond_2c
    :goto_2c
    return v0
.end method

.method private isUserUnlocked(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 250
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 251
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_10

    .line 252
    const/4 v1, 0x0

    return v1

    .line 255
    :cond_10
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$preloadRes$0(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .registers 11
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 107
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "AsyncDrawableCache"

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 108
    .local v2, "stringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 109
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 111
    .local v5, "value":I
    sget-boolean v6, Lcom/mediatek/res/AsyncDrawableCache;->isDEBUG:Z

    if-eqz v6, :cond_52

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resource="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", res obj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_52
    :try_start_52
    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_55
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_52 .. :try_end_55} :catch_56

    .line 119
    goto :goto_70

    .line 117
    :catch_56
    move-exception v6

    .line 118
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not found res: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", maybe dynamic res id."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v2    # "stringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":I
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_70
    goto :goto_c

    .line 121
    :cond_71
    sget-boolean v1, Lcom/mediatek/res/AsyncDrawableCache;->isDEBUG:Z

    if-eqz v1, :cond_7a

    .line 122
    const-string v1, "preloadRes, end of preloadRes"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_7a
    return-void
.end method

.method private needCacheDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 194
    const/4 v0, 0x0

    .line 197
    .local v0, "needCache":Z
    sget-object v1, Lcom/mediatek/res/AsyncDrawableCache;->sResolutionList:Landroid/util/ArrayMap;

    sget-object v2, Lcom/mediatek/res/AsyncDrawableCache;->sResolution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 198
    .local v1, "scaleResolution":Ljava/lang/Integer;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    mul-int/2addr v2, v3

    .line 199
    .local v2, "drResolution":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_3d

    .line 200
    sget-boolean v3, Lcom/mediatek/res/AsyncDrawableCache;->isDEBUG:Z

    if-eqz v3, :cond_3c

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeResolution, drResolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", scaleResolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AsyncDrawableCache"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_3c
    const/4 v0, 0x1

    .line 206
    :cond_3d
    return v0
.end method

.method private storeDrawableId(ILandroid/content/Context;)V
    .registers 8
    .param p1, "origResId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 210
    const-string v0, "AsyncDrawableCache"

    if-nez p2, :cond_1e

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeDrawableId got the context is null, id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cannot save"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 216
    :cond_1e
    invoke-direct {p0, p2}, Lcom/mediatek/res/AsyncDrawableCache;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 217
    return-void

    .line 220
    :cond_25
    const/4 v1, 0x0

    const-string v2, "perf_img_scale"

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 222
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_5e

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 223
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 224
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    sget-boolean v3, Lcom/mediatek/res/AsyncDrawableCache;->isDEBUG:Z

    if-eqz v3, :cond_5e

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeDrawableId, id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5e
    return-void
.end method


# virtual methods
.method getCachedDrawable(Landroid/content/res/Resources;JI)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "key"    # J
    .param p4, "origId"    # I

    .line 137
    invoke-direct {p0}, Lcom/mediatek/res/AsyncDrawableCache;->isEnableFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 138
    return-object v1

    .line 141
    :cond_8
    const/4 v0, 0x0

    .line 142
    .local v0, "boostCache":Landroid/graphics/drawable/Drawable$ConstantState;
    sget-object v2, Lcom/mediatek/res/AsyncDrawableCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 143
    :try_start_c
    sget-object v3, Lcom/mediatek/res/AsyncDrawableCache;->sDrawableCache:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v0, v3

    .line 144
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_22

    .line 146
    if-eqz v0, :cond_21

    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 150
    :cond_21
    return-object v1

    .line 144
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method preloadRes(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 91
    invoke-direct {p0}, Lcom/mediatek/res/AsyncDrawableCache;->isEnableFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 92
    return-void

    .line 95
    :cond_7
    invoke-direct {p0, p1}, Lcom/mediatek/res/AsyncDrawableCache;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 96
    return-void

    .line 99
    :cond_e
    const/4 v0, 0x0

    const-string v1, "perf_img_scale"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_31

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_22

    goto :goto_31

    .line 104
    :cond_22
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/res/AsyncDrawableCache;->isPreloaded:Z

    .line 105
    new-instance v1, Lcom/mediatek/res/AsyncDrawableCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/mediatek/res/AsyncDrawableCache$$ExternalSyntheticLambda0;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 126
    invoke-direct {p0}, Lcom/mediatek/res/AsyncDrawableCache;->clearCacheAfterPreload()V

    .line 127
    return-void

    .line 101
    :cond_31
    :goto_31
    return-void
.end method

.method putCacheList(JLandroid/graphics/drawable/Drawable;ILandroid/content/Context;)V
    .registers 11
    .param p1, "key"    # J
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "origResId"    # I
    .param p5, "context"    # Landroid/content/Context;

    .line 161
    invoke-direct {p0}, Lcom/mediatek/res/AsyncDrawableCache;->isEnableFeature()Z

    move-result v0

    if-nez v0, :cond_7

    .line 162
    return-void

    .line 165
    :cond_7
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 166
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_9b

    .line 170
    :cond_21
    const/4 v0, 0x0

    .line 171
    .local v0, "boostCache":Landroid/graphics/drawable/Drawable$ConstantState;
    sget-object v1, Lcom/mediatek/res/AsyncDrawableCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_25
    sget-object v2, Lcom/mediatek/res/AsyncDrawableCache;->sDrawableCache:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v0, v3

    .line 173
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_98

    .line 174
    if-nez v0, :cond_97

    if-eqz p5, :cond_97

    .line 175
    invoke-direct {p0, p3}, Lcom/mediatek/res/AsyncDrawableCache;->needCacheDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 176
    sget-boolean v1, Lcom/mediatek/res/AsyncDrawableCache;->isPreloaded:Z

    if-eqz v1, :cond_72

    .line 177
    sget-object v1, Lcom/mediatek/res/AsyncDrawableCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_44
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_6f

    .line 180
    sget-boolean v1, Lcom/mediatek/res/AsyncDrawableCache;->isDEBUG:Z

    if-eqz v1, :cond_72

    .line 181
    const-string v1, "AsyncDrawableCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putCacheList, put cache, size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 179
    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v2

    .line 185
    :cond_72
    :goto_72
    sget-boolean v1, Lcom/mediatek/res/AsyncDrawableCache;->isDEBUG:Z

    if-eqz v1, :cond_94

    .line 186
    const-string v1, "AsyncDrawableCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putCacheList, key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", origResId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_94
    invoke-direct {p0, p4, p5}, Lcom/mediatek/res/AsyncDrawableCache;->storeDrawableId(ILandroid/content/Context;)V

    .line 191
    :cond_97
    return-void

    .line 173
    :catchall_98
    move-exception v2

    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v2

    .line 167
    .end local v0    # "boostCache":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_9b
    :goto_9b
    return-void
.end method

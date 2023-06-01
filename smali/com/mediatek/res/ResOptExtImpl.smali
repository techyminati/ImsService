.class public Lcom/mediatek/res/ResOptExtImpl;
.super Lcom/mediatek/res/ResOptExt;
.source "ResOptExtImpl.java"


# static fields
.field private static lock:Ljava/lang/Object;

.field private static sInstance:Lcom/mediatek/res/ResOptExtImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/res/ResOptExtImpl;->sInstance:Lcom/mediatek/res/ResOptExtImpl;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/res/ResOptExtImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/mediatek/res/ResOptExt;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/res/ResOptExtImpl;
    .registers 2

    .line 50
    sget-object v0, Lcom/mediatek/res/ResOptExtImpl;->sInstance:Lcom/mediatek/res/ResOptExtImpl;

    if-nez v0, :cond_17

    .line 51
    sget-object v0, Lcom/mediatek/res/ResOptExtImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_7
    sget-object v1, Lcom/mediatek/res/ResOptExtImpl;->sInstance:Lcom/mediatek/res/ResOptExtImpl;

    if-nez v1, :cond_12

    .line 53
    new-instance v1, Lcom/mediatek/res/ResOptExtImpl;

    invoke-direct {v1}, Lcom/mediatek/res/ResOptExtImpl;-><init>()V

    sput-object v1, Lcom/mediatek/res/ResOptExtImpl;->sInstance:Lcom/mediatek/res/ResOptExtImpl;

    .line 55
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 57
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/res/ResOptExtImpl;->sInstance:Lcom/mediatek/res/ResOptExtImpl;

    return-object v0
.end method


# virtual methods
.method public getCachedDrawable(Landroid/content/res/Resources;JI)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "key"    # J
    .param p4, "origId"    # I

    .line 65
    invoke-static {}, Lcom/mediatek/res/AsyncDrawableCache;->getInstance()Lcom/mediatek/res/AsyncDrawableCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/res/AsyncDrawableCache;->getCachedDrawable(Landroid/content/res/Resources;JI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public preloadRes(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 61
    invoke-static {}, Lcom/mediatek/res/AsyncDrawableCache;->getInstance()Lcom/mediatek/res/AsyncDrawableCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/res/AsyncDrawableCache;->preloadRes(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 62
    return-void
.end method

.method public putCacheList(JLandroid/graphics/drawable/Drawable;ILandroid/content/Context;)V
    .registers 12
    .param p1, "key"    # J
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "origResId"    # I
    .param p5, "context"    # Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/mediatek/res/AsyncDrawableCache;->getInstance()Lcom/mediatek/res/AsyncDrawableCache;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/res/AsyncDrawableCache;->putCacheList(JLandroid/graphics/drawable/Drawable;ILandroid/content/Context;)V

    .line 70
    return-void
.end method

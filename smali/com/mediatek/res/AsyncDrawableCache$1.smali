.class Lcom/mediatek/res/AsyncDrawableCache$1;
.super Ljava/util/TimerTask;
.source "AsyncDrawableCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/res/AsyncDrawableCache;->clearCacheAfterPreload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/res/AsyncDrawableCache;


# direct methods
.method constructor <init>(Lcom/mediatek/res/AsyncDrawableCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/res/AsyncDrawableCache;

    .line 274
    iput-object p1, p0, Lcom/mediatek/res/AsyncDrawableCache$1;->this$0:Lcom/mediatek/res/AsyncDrawableCache;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/mediatek/res/AsyncDrawableCache$1;->this$0:Lcom/mediatek/res/AsyncDrawableCache;

    # invokes: Lcom/mediatek/res/AsyncDrawableCache;->clearCache()V
    invoke-static {v0}, Lcom/mediatek/res/AsyncDrawableCache;->access$000(Lcom/mediatek/res/AsyncDrawableCache;)V

    .line 278
    const/4 v0, 0x0

    # setter for: Lcom/mediatek/res/AsyncDrawableCache;->isPreloaded:Z
    invoke-static {v0}, Lcom/mediatek/res/AsyncDrawableCache;->access$102(Z)Z

    .line 279
    return-void
.end method

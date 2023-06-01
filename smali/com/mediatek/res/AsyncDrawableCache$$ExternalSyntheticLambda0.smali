.class public final synthetic Lcom/mediatek/res/AsyncDrawableCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/res/AsyncDrawableCache$$ExternalSyntheticLambda0;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/mediatek/res/AsyncDrawableCache$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mediatek/res/AsyncDrawableCache$$ExternalSyntheticLambda0;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/mediatek/res/AsyncDrawableCache$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mediatek/res/AsyncDrawableCache;->lambda$preloadRes$0(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    return-void
.end method

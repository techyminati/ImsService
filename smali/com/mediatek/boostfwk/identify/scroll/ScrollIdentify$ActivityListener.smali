.class Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ActivityListener;
.super Ljava/lang/Object;
.source "ScrollIdentify.java"

# interfaces
.implements Lcom/mediatek/boostfwk/info/ActivityInfo$ActivityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$1;

    .line 122
    invoke-direct {p0}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/content/Context;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .line 125
    const/4 v0, -0x1

    # setter for: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I
    invoke-static {v0}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$002(I)I

    .line 126
    return-void
.end method

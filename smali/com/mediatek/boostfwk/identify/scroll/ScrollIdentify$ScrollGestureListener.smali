.class Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollIdentify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;


# direct methods
.method constructor <init>(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    .line 266
    iput-object p1, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;->this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 302
    const/4 v0, 0x0

    if-eqz p1, :cond_b3

    if-nez p2, :cond_7

    goto/16 :goto_b3

    .line 305
    :cond_7
    # getter for: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I
    invoke-static {}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$000()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 306
    return v0

    .line 308
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 309
    .local v0, "distanceX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 310
    .local v1, "distanceY":F
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFling --> distanceX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", Math.abs(velocityX):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", distanceY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", Math.abs(velocityY): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    const-string v4, "ScrollIdentify"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_65
    iget-object v3, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;->this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    # invokes: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->initMinValuesIfNeeded()V
    invoke-static {v3}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$500(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)V

    .line 318
    iget-object v3, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;->this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    # getter for: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceHorizontal:F
    invoke-static {v3}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$600(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)F

    move-result v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_91

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;->this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    # getter for: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityHorizontal:F
    invoke-static {v4}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$700(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_91

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    cmpl-float v3, v3, v1

    if-lez v3, :cond_91

    .line 320
    iget-object v3, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;->this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    const-string v4, "onFling Boost when FLING_HORIZONTAL"

    # invokes: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->sbeHint(ILjava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$400(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;ILjava/lang/String;)V

    goto :goto_b1

    .line 321
    :cond_91
    iget-object v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;->this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    # getter for: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minTouchDistanceVertical:F
    invoke-static {v2}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$800(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_b1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;->this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    # getter for: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->minVelocityVertical:F
    invoke-static {v3}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$900(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b1

    .line 322
    iget-object v2, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;->this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    const/4 v3, 0x2

    const-string v4, "onFling Boost when FLING_VERTICAL"

    # invokes: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->sbeHint(ILjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$400(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;ILjava/lang/String;)V

    .line 324
    :cond_b1
    :goto_b1
    const/4 v2, 0x1

    return v2

    .line 303
    .end local v0    # "distanceX":F
    .end local v1    # "distanceY":F
    :cond_b3
    :goto_b3
    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 275
    const/4 v0, 0x0

    if-eqz p1, :cond_89

    if-nez p2, :cond_7

    goto/16 :goto_89

    .line 279
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 280
    .local v1, "eventDistancX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 281
    .local v2, "eventDistancY":F
    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v4, v1, v3

    const/4 v5, 0x1

    if-gtz v4, :cond_2c

    cmpl-float v3, v2, v3

    if-lez v3, :cond_88

    .line 283
    :cond_2c
    iget-object v3, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;->this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    # invokes: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->checkSpecialPageType()V
    invoke-static {v3}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$200(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;)V

    .line 284
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v3

    const-string v4, "ScrollIdentify"

    if-eqz v3, :cond_51

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsSpecialPageDesign = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I
    invoke-static {}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$000()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_51
    # getter for: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mIsSpecialPageDesign:I
    invoke-static {}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$000()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_59

    .line 288
    return v0

    .line 290
    :cond_59
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScroll - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v6, v1, v2

    if-lez v6, :cond_70

    const-string v6, "horizontal"

    goto :goto_72

    :cond_70
    const-string v6, "vertical"

    :goto_72
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_7c
    iget-object v3, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;->this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    # setter for: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->mHaveMoveEvent:Z
    invoke-static {v3, v5}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$302(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;Z)Z

    .line 294
    iget-object v3, p0, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify$ScrollGestureListener;->this$0:Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    const-string v4, "Boost when move"

    # invokes: Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->sbeHint(ILjava/lang/String;)V
    invoke-static {v3, v0, v4}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->access$400(Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;ILjava/lang/String;)V

    .line 296
    :cond_88
    return v5

    .line 276
    .end local v1    # "eventDistancX":F
    .end local v2    # "eventDistancY":F
    :cond_89
    :goto_89
    return v0
.end method

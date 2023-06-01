.class public Lcom/mediatek/server/wm/WmsExtImpl;
.super Lcom/mediatek/server/wm/WmsExt;
.source "WmsExtImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WmsExtImpl"

.field private static final TAG_ART:Ljava/lang/String; = "AppResolutionTuner"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/mediatek/server/wm/WmsExt;-><init>()V

    return-void
.end method

.method private getTunerList()Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .registers 2

    .line 93
    invoke-static {}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->getInstance()Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isAppResolutionTunerSupport()Z
    .registers 3

    .line 52
    const-string v0, "ro.vendor.app_resolution_tuner"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 53
    const-string v0, "persist.vendor.dbg.disable.art"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    nop

    .line 52
    :goto_1a
    return v1
.end method

.method public loadResolutionTunerAppList()V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/mediatek/server/wm/WmsExtImpl;->getTunerList()Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->loadTunerAppList()V

    .line 59
    return-void
.end method

.method public setWindowScaleByWL(Lcom/android/server/wm/WindowState;Landroid/view/DisplayInfo;Landroid/view/WindowManager$LayoutParams;II)V
    .registers 13
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "requestedWidth"    # I
    .param p5, "requestedHeight"    # I

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    .local v0, "scale":F
    iget v1, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 66
    .local v1, "width":I
    iget v2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 67
    .local v2, "height":I
    const/4 v3, 0x0

    if-eqz p3, :cond_c

    iget-object v4, p3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_d

    :cond_c
    move-object v4, v3

    .line 68
    .local v4, "packageName":Ljava/lang/String;
    :goto_d
    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 69
    invoke-virtual {p3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    nop

    .line 70
    .local v3, "windowName":Ljava/lang/String;
    :goto_1f
    if-eqz v4, :cond_62

    if-eqz v3, :cond_62

    const-string v5, "FastStarting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 72
    const-string v5, "Splash Screen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 74
    const-string v5, "PopupWindow"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    if-ne v2, p5, :cond_3f

    if-eq v1, p4, :cond_50

    :cond_3f
    iget v5, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_62

    iget v5, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v5, v6, :cond_62

    iget v5, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v5, :cond_62

    iget v5, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v5, :cond_62

    .line 79
    :cond_50
    invoke-direct {p0}, Lcom/mediatek/server/wm/WmsExtImpl;->getTunerList()Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->isScaledByWMS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 80
    invoke-direct {p0}, Lcom/mediatek/server/wm/WmsExtImpl;->getTunerList()Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->getScaleValue(Ljava/lang/String;)F

    move-result v0

    .line 83
    :cond_62
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_9b

    .line 84
    iput v0, p1, Lcom/android/server/wm/WindowState;->mHWScale:F

    .line 85
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/server/wm/WindowState;->mNeedHWResizer:Z

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWindowScaleByWL - new scale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " ,set mEnforceSizeCompat/mNeedHWResizer = true , win : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ,attrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    const-string v6, "AppResolutionTuner"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_9b
    return-void
.end method

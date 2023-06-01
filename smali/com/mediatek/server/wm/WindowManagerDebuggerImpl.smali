.class public Lcom/mediatek/server/wm/WindowManagerDebuggerImpl;
.super Lcom/mediatek/server/wm/WindowManagerDebugger;
.source "WindowManagerDebuggerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManagerDebuggerImpl"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Lcom/mediatek/server/wm/WindowManagerDebugger;-><init>()V

    .line 62
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/server/wm/WindowManagerDebuggerImpl;->WMS_DEBUG_ENG:Z

    .line 63
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/server/wm/WindowManagerDebuggerImpl;->WMS_DEBUG_USER_DEBUG:Z

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/server/wm/WindowManagerDebuggerImpl;->WMS_DEBUG_USER:Z

    .line 65
    return-void
.end method


# virtual methods
.method public debugApplyPostLayoutPolicyLw(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;ZZ)V
    .registers 11
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "mTopFullscreenOpaqueWindowState"    # Lcom/android/server/wm/WindowState;
    .param p5, "attached"    # Lcom/android/server/wm/WindowState;
    .param p6, "imeTarget"    # Lcom/android/server/wm/WindowState;
    .param p7, "dreamingLockscreen"    # Z
    .param p8, "showingDream"    # Z

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyPostLayoutPolicyLw Win "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": win.isVisible()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", win.isDrawn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", attrs.type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attrs.privateFlags=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTopFullscreenOpaqueWindowState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", win.isGoneForLayout()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", attached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imeTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFullscreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", normallyFullscreenWindows=, mDreamingLockscreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShowingDream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public debugGetOrientation(Ljava/lang/String;ZII)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayFrozen"    # Z
    .param p3, "lastWindowForcedOrientation"    # I
    .param p4, "lastKeyguardForcedOrientation"    # I

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking window orientation: mDisplayFrozen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLastWindowForcedOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastKeyguardForcedOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public debugGetOrientingWindow(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;ZZIZ)V
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "isVisible"    # Z
    .param p5, "policyVisibilityAfterAnim"    # Z
    .param p6, "policyVisibility"    # I
    .param p7, "destroying"    # Z

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " screenOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPolicyVisibilityAfterAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPolicyVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", destroying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public debugInputAttr(Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input attr :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public debugInterceptKeyBeforeQueueing(Ljava/lang/String;IZZIZZZIZZ)V
    .registers 14
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "keycode"    # I
    .param p3, "interactive"    # Z
    .param p4, "keyguardActive"    # Z
    .param p5, "policyFlags"    # I
    .param p6, "down"    # Z
    .param p7, "canceled"    # Z
    .param p8, "isWakeKey"    # Z
    .param p9, "result"    # I
    .param p10, "useHapticFeedback"    # Z
    .param p11, "isInjected"    # Z

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptKeyTq keycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " interactive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " keyguardActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " policyFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " down ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " canceled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isWakeKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " useHapticFeedback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isInjected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public debugLayoutWindowLw(Ljava/lang/String;IIIZI)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "adjust"    # I
    .param p3, "type"    # I
    .param p4, "fl"    # I
    .param p5, "canHideNavigationBar"    # Z
    .param p6, "sysUiFl"    # I

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layoutWindowLw : sim=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canHideNavigationBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sysUiFl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public debugPrepareSurfaceLocked(Ljava/lang/String;ZLcom/android/server/wm/WindowState;ZZIZZZ)V
    .registers 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isWallpaper"    # Z
    .param p3, "win"    # Lcom/android/server/wm/WindowState;
    .param p4, "isParentWindowHidden"    # Z
    .param p5, "isOnScreen"    # Z
    .param p6, "policyVisibility"    # I
    .param p7, "hasSurface"    # Z
    .param p8, "destroying"    # Z
    .param p9, "lastHidden"    # Z

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " prepareSurfaceLocked , mIsWallpaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", w.isParentWindowHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", w.isOnScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", w.mPolicyVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", w.mHasSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", w.mDestroying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLastHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public debugRelayoutWindow(Ljava/lang/String;Lcom/android/server/wm/WindowState;II)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "originType"    # I
    .param p4, "changeType"    # I

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "changes the window type!!\nOriginal type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nChanged type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public debugViewVisibility(Ljava/lang/String;Lcom/android/server/wm/WindowState;IIZIILandroid/window/ClientWindowFrames;Landroid/view/SurfaceControl;)V
    .registers 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "viewVisibility"    # I
    .param p4, "oldVisibility"    # I
    .param p5, "focusMayChange"    # Z
    .param p6, "requestedWidth"    # I
    .param p7, "requestedHeight"    # I
    .param p8, "outFrames"    # Landroid/window/ClientWindowFrames;
    .param p9, "outSurfaceControl"    # Landroid/view/SurfaceControl;

    .line 242
    if-nez p3, :cond_50

    if-eqz p4, :cond_50

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relayout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": oldVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " focusMayChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " requestedWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requestedHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " outFrames = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " outSurfaceControl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_50
    return-void
.end method

.method public runDebug(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .line 77
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v0, p3

    const/4 v3, -0x1

    .line 78
    .local v3, "mode":I
    const-string v4, "help"

    .line 79
    .local v4, "cmd":Ljava/lang/String;
    array-length v5, v2

    if-ge v0, v5, :cond_10

    .line 80
    aget-object v4, v2, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 84
    .end local p3    # "opti":I
    .local v0, "opti":I
    :cond_10
    const-string v5, "help"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 85
    const/4 v3, 0x0

    .line 86
    const-string v5, "Window manager debug options:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v5, "  -d enable <zone zone ...> : enable the debug zone"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v5, "  -d disable <zone zone ...> : disable the debug zone"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v5, "zone may be some of:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v5, "  a[all]"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 91
    :cond_33
    const-string v5, "enable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 92
    const/4 v3, 0x1

    goto :goto_46

    .line 93
    :cond_3d
    const-string v5, "disable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 94
    const/4 v3, 0x2

    .line 100
    :goto_46
    const/4 v5, 0x0

    .line 101
    .local v5, "setAll":Z
    const-class v6, Lcom/android/server/wm/WindowManagerDebugConfig;

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 102
    .local v6, "fields":[Ljava/lang/reflect/Field;
    const-class v7, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 103
    .local v7, "fieldsPolicy":[Ljava/lang/reflect/Field;
    array-length v8, v6

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v8, v8, [Ljava/lang/reflect/Field;

    .line 104
    .local v8, "allFields":[Ljava/lang/reflect/Field;
    array-length v9, v6

    const/4 v10, 0x0

    invoke-static {v6, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    array-length v9, v6

    array-length v11, v7

    invoke-static {v7, v10, v8, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    :goto_62
    const/4 v9, 0x1

    if-nez v5, :cond_10b

    if-eqz v3, :cond_6a

    array-length v11, v2

    if-ge v0, v11, :cond_10b

    .line 107
    :cond_6a
    array-length v11, v2

    if-ge v0, v11, :cond_74

    .line 108
    aget-object v4, v2, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    move-object v11, v4

    move v4, v0

    goto :goto_76

    .line 107
    :cond_74
    move-object v11, v4

    move v4, v0

    .line 112
    .end local v0    # "opti":I
    .local v4, "opti":I
    .local v11, "cmd":Ljava/lang/String;
    :goto_76
    if-eqz v3, :cond_8b

    const-string v0, "all"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "a"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    goto :goto_8b

    :cond_89
    move v0, v10

    goto :goto_8c

    :cond_8b
    :goto_8b
    move v0, v9

    :goto_8c
    move v5, v0

    .line 113
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_8f
    array-length v0, v8

    if-ge v12, v0, :cond_107

    .line 114
    aget-object v0, v8, v12

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    .line 115
    .local v13, "name":Ljava/lang/String;
    if-eqz v13, :cond_103

    const-string v0, "DEBUG"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v14, "localLOGV"

    if-nez v0, :cond_b2

    const-string v0, "SHOW"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 116
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 118
    :cond_b2
    if-nez v5, :cond_bd

    :try_start_b4
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    goto :goto_bd

    .line 130
    :catch_bb
    move-exception v0

    goto :goto_ed

    .line 119
    :cond_bd
    :goto_bd
    const/4 v0, 0x0

    if-eqz v3, :cond_d1

    .line 120
    aget-object v15, v8, v12

    invoke-virtual {v15, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    aget-object v15, v8, v12

    if-ne v3, v9, :cond_ca

    goto :goto_cb

    :cond_ca
    move v9, v10

    :goto_cb
    invoke-virtual {v15, v0, v9}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 123
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    :cond_d1
    const-string v9, "  %s = %b"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v10

    aget-object v15, v8, v12

    .line 128
    invoke-virtual {v15, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v15, 0x1

    aput-object v0, v14, v15

    .line 127
    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ec
    .catch Ljava/lang/IllegalAccessException; {:try_start_b4 .. :try_end_ec} :catch_bb

    .line 132
    :cond_ec
    goto :goto_103

    .line 131
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :goto_ed
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " setBoolean failed"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v14, "WindowManagerDebuggerImpl"

    invoke-static {v14, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v13    # "name":Ljava/lang/String;
    :cond_103
    :goto_103
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x1

    goto :goto_8f

    :cond_107
    move v0, v4

    move-object v4, v11

    .end local v12    # "i":I
    goto/16 :goto_62

    .line 136
    .end local v11    # "cmd":Ljava/lang/String;
    .local v0, "opti":I
    .local v4, "cmd":Ljava/lang/String;
    :cond_10b
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 137
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v9

    const/4 v11, 0x1

    if-ne v3, v11, :cond_11a

    move v10, v11

    :cond_11a
    invoke-virtual {v9, v1, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->enableText(Ljava/io/PrintWriter;Z)V

    .line 138
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/protolog/ProtoLogImpl;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    return-void

    .line 96
    .end local v5    # "setAll":Z
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v7    # "fieldsPolicy":[Ljava/lang/reflect/Field;
    .end local v8    # "allFields":[Ljava/lang/reflect/Field;
    :cond_129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown debug argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; use \"-d help\" for help"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    return-void
.end method

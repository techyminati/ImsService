.class public Lcom/mediatek/server/display/MtkDisplayManagerServiceImpl;
.super Ljava/lang/Object;
.source "MtkDisplayManagerServiceImpl.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MtkDisplayManagerServiceImpl"


# instance fields
.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private mSupportFullscreenSwitch:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    nop

    .line 46
    const-string v0, "ro.vendor.fullscreen_switch"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/server/display/MtkDisplayManagerServiceImpl;->mSupportFullscreenSwitch:Z

    .line 47
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/mediatek/server/display/MtkDisplayManagerServiceImpl;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-void
.end method


# virtual methods
.method public getDisplayInfoForFullscreenSwitch(Landroid/view/DisplayInfo;I)Landroid/view/DisplayInfo;
    .registers 4
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "callingUid"    # I

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDisplayInfoForFullscreenSwitch(Landroid/view/DisplayInfo;)V
    .registers 2
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 68
    return-void
.end method

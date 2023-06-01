.class public Lcom/mediatek/view/impl/MsyncExtimpl;
.super Lcom/mediatek/view/MsyncExt;
.source "MsyncExtimpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MsyncExt"


# instance fields
.field private mIsContainPackageName:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/mediatek/view/MsyncExt;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/view/impl/MsyncExtimpl;->mIsContainPackageName:Z

    .line 22
    invoke-static {}, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->getInstance()Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->isRead()Z

    move-result v0

    if-nez v0, :cond_13

    .line 23
    invoke-direct {p0}, Lcom/mediatek/view/impl/MsyncExtimpl;->openNewTread()V

    .line 25
    :cond_13
    return-void
.end method

.method private openNewTread()V
    .registers 2

    .line 28
    new-instance v0, Lcom/mediatek/view/impl/MsyncExtimpl$1;

    invoke-direct {v0, p0}, Lcom/mediatek/view/impl/MsyncExtimpl$1;-><init>(Lcom/mediatek/view/impl/MsyncExtimpl;)V

    .line 32
    invoke-virtual {v0}, Lcom/mediatek/view/impl/MsyncExtimpl$1;->start()V

    .line 33
    return-void
.end method


# virtual methods
.method public isOpenMsyncPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mPackageName"    # Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->getInstance()Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->isScaledBySurfaceView(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/view/impl/MsyncExtimpl;->mIsContainPackageName:Z

    .line 39
    return v0
.end method

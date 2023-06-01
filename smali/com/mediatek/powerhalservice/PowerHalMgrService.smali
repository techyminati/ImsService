.class public Lcom/mediatek/powerhalservice/PowerHalMgrService;
.super Lcom/android/server/SystemService;
.source "PowerHalMgrService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPowerHalMgrServiceImpl:Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "PowerHalMgrService"

    iput-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalMgrService;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;

    invoke-direct {v0, p1}, Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalMgrService;->mPowerHalMgrServiceImpl:Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;

    .line 64
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 75
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_b

    .line 76
    const-string v0, "PowerHalMgrService"

    const-string v1, "onBootPhase PowerHalMgrService."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_b
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 68
    const-string v0, "PowerHalMgrService"

    const-string v1, "Start PowerHalMgrService."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalMgrService;->mPowerHalMgrServiceImpl:Lcom/mediatek/powerhalservice/PowerHalMgrServiceImpl;

    const-string v1, "power_hal_mgr_service"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/powerhalservice/PowerHalMgrService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 71
    return-void
.end method

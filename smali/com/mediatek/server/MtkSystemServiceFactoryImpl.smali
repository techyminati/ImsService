.class public Lcom/mediatek/server/MtkSystemServiceFactoryImpl;
.super Lcom/mediatek/server/MtkSystemServiceFactory;
.source "MtkSystemServiceFactoryImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkSystemServiceFactoryImpl"


# instance fields
.field private mAmsExt:Lcom/mediatek/server/am/AmsExt;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Lcom/mediatek/server/MtkSystemServiceFactory;-><init>()V

    .line 66
    new-instance v0, Lcom/mediatek/server/am/AmsExtImpl;

    invoke-direct {v0}, Lcom/mediatek/server/am/AmsExtImpl;-><init>()V

    iput-object v0, p0, Lcom/mediatek/server/MtkSystemServiceFactoryImpl;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    return-void
.end method


# virtual methods
.method public makeAmsExt()Lcom/mediatek/server/am/AmsExt;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/mediatek/server/MtkSystemServiceFactoryImpl;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    return-object v0
.end method

.method public makeAnrManager()Lcom/mediatek/server/anr/AnrManager;
    .registers 2

    .line 79
    new-instance v0, Lcom/mediatek/server/anr/AnrManagerImpl;

    invoke-direct {v0}, Lcom/mediatek/server/anr/AnrManagerImpl;-><init>()V

    return-object v0
.end method

.method public makeAudioServiceExt()Lcom/mediatek/server/audio/AudioServiceExt;
    .registers 2

    .line 104
    new-instance v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;

    invoke-direct {v0}, Lcom/mediatek/server/audio/AudioServiceExtImpl;-><init>()V

    return-object v0
.end method

.method public makeMtkPplManager()Lcom/mediatek/server/ppl/MtkPplManager;
    .registers 2

    .line 94
    new-instance v0, Lcom/mediatek/server/ppl/MtkPplManagerImpl;

    invoke-direct {v0}, Lcom/mediatek/server/ppl/MtkPplManagerImpl;-><init>()V

    return-object v0
.end method

.method public makeMtkShutdownThread()Lcom/android/server/power/ShutdownThread;
    .registers 3

    .line 73
    const-string v0, "MtkSystemServiceFactoryImpl"

    const-string v1, "Start : MTK Shutdown Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Lcom/mediatek/server/MtkShutdownThread;

    invoke-direct {v0}, Lcom/mediatek/server/MtkShutdownThread;-><init>()V

    return-object v0
.end method

.method public makePmsExt()Lcom/mediatek/server/pm/PmsExt;
    .registers 2

    .line 84
    new-instance v0, Lcom/mediatek/server/pm/PmsExtImpl;

    invoke-direct {v0}, Lcom/mediatek/server/pm/PmsExtImpl;-><init>()V

    return-object v0
.end method

.method public makePowerHalManager()Lcom/mediatek/server/powerhal/PowerHalManager;
    .registers 2

    .line 89
    new-instance v0, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;

    invoke-direct {v0}, Lcom/mediatek/server/powerhal/PowerHalManagerImpl;-><init>()V

    return-object v0
.end method

.method public makeWindowManagerDebugger()Lcom/mediatek/server/wm/WindowManagerDebugger;
    .registers 2

    .line 114
    new-instance v0, Lcom/mediatek/server/wm/WindowManagerDebuggerImpl;

    invoke-direct {v0}, Lcom/mediatek/server/wm/WindowManagerDebuggerImpl;-><init>()V

    return-object v0
.end method

.method public makeWmsExt()Lcom/mediatek/server/wm/WmsExt;
    .registers 2

    .line 109
    new-instance v0, Lcom/mediatek/server/wm/WmsExtImpl;

    invoke-direct {v0}, Lcom/mediatek/server/wm/WmsExtImpl;-><init>()V

    return-object v0
.end method

.class public Lcom/mediatek/omadm/OmadmService;
.super Lcom/android/server/SystemService;
.source "OmadmService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mOmadmServiceImpl:Lcom/mediatek/omadm/OmadmServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "OmadmService"

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmService;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-direct {v0, p1}, Lcom/mediatek/omadm/OmadmServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/omadm/OmadmService;->mOmadmServiceImpl:Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 64
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 73
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_b

    .line 74
    const-string v0, "OmadmService"

    const-string v1, "onBootPhase OmadmService."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_b
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 68
    const-string v0, "OmadmService"

    const-string v1, "Start OmadmService."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

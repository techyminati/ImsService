.class public Lcom/mediatek/server/ppl/MtkPplManagerImpl;
.super Lcom/mediatek/server/ppl/MtkPplManager;
.source "MtkPplManagerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkPplManager"


# instance fields
.field private final mPPLReceiver:Landroid/content/BroadcastReceiver;

.field private mPplStatus:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/mediatek/server/ppl/MtkPplManager;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->mPplStatus:Z

    .line 90
    new-instance v0, Lcom/mediatek/server/ppl/MtkPplManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/mediatek/server/ppl/MtkPplManagerImpl$1;-><init>(Lcom/mediatek/server/ppl/MtkPplManagerImpl;)V

    iput-object v0, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->mPPLReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/server/ppl/MtkPplManagerImpl;Landroid/content/Context;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/server/ppl/MtkPplManagerImpl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->pplEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method private pplEnable(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enable"    # Z

    .line 98
    invoke-virtual {p0, p2}, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->calculateStatusBarStatus(Z)I

    move-result v0

    .line 99
    .local v0, "what":I
    iget-object v1, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_12

    .line 100
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 103
    :cond_12
    iget-object v1, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 104
    return-void
.end method


# virtual methods
.method public calculateStatusBarStatus(Z)I
    .registers 3
    .param p1, "pplStatus"    # Z

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "status":I
    if-eqz p1, :cond_5

    .line 61
    const/high16 v0, 0xf0000

    .line 65
    :cond_5
    return v0
.end method

.method public filterPplAction(Ljava/lang/String;)Z
    .registers 5
    .param p1, "action"    # Ljava/lang/String;

    .line 75
    const-string v0, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "filterPplAction, recevier action = "

    const-string v2, "MtkPplManager"

    if-eqz v0, :cond_22

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->mPplStatus:Z

    goto :goto_3f

    .line 78
    :cond_22
    const-string v0, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->mPplStatus:Z

    .line 82
    :cond_3f
    :goto_3f
    iget-boolean v0, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->mPplStatus:Z

    return v0
.end method

.method public getPplLockStatus()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->mPplStatus:Z

    return v0
.end method

.method public registerPplIntents()Landroid/content/IntentFilter;
    .registers 3

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    return-object v0
.end method

.method public registerPplReceiver(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->mPPLReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->registerPplIntents()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

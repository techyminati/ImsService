.class Lcom/mediatek/anr/AnrManagerNative$1;
.super Lcom/mediatek/anr/AnrManagerNative$Singleton;
.source "AnrManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anr/AnrManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mediatek/anr/AnrManagerNative$Singleton<",
        "Lcom/mediatek/anr/IAnrManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Lcom/mediatek/anr/AnrManagerNative$Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/mediatek/anr/IAnrManager;
    .registers 7

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_1
    # getter for: Lcom/mediatek/anr/AnrManagerNative;->sGetService:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/mediatek/anr/AnrManagerNative;->access$000()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "anrmanager"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_16

    move-object v0, v1

    goto :goto_17

    .line 112
    :catch_16
    move-exception v1

    :goto_17
    nop

    .line 114
    invoke-static {v0}, Lcom/mediatek/anr/AnrManagerNative;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/anr/IAnrManager;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/anr/AnrManagerNative$1;->create()Lcom/mediatek/anr/IAnrManager;

    move-result-object v0

    return-object v0
.end method

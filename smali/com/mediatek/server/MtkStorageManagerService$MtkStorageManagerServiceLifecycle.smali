.class public Lcom/mediatek/server/MtkStorageManagerService$MtkStorageManagerServiceLifecycle;
.super Lcom/android/server/StorageManagerService$Lifecycle;
.source "MtkStorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/MtkStorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtkStorageManagerServiceLifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Lifecycle;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 72
    new-instance v0, Lcom/mediatek/server/MtkStorageManagerService;

    invoke-virtual {p0}, Lcom/mediatek/server/MtkStorageManagerService$MtkStorageManagerServiceLifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/server/MtkStorageManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/server/MtkStorageManagerService$MtkStorageManagerServiceLifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 73
    iget-object v0, p0, Lcom/mediatek/server/MtkStorageManagerService$MtkStorageManagerServiceLifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    const-string v1, "mount"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/server/MtkStorageManagerService$MtkStorageManagerServiceLifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    iget-object v0, p0, Lcom/mediatek/server/MtkStorageManagerService$MtkStorageManagerServiceLifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->start()V

    .line 75
    return-void
.end method

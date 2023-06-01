.class Lcom/mediatek/server/MtkStorageManagerService;
.super Lcom/android/server/StorageManagerService;
.source "MtkStorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/MtkStorageManagerService$MtkStorageManagerServiceLifecycle;
    }
.end annotation


# static fields
.field private static final FORMAT_LOCK:Ljava/lang/Object;

.field private static final PRIVACY_PROTECTION_WIPE:Ljava/lang/String; = "com.mediatek.ppl.NOTIFY_MOUNT_SERVICE_WIPE"

.field private static final PRIVACY_PROTECTION_WIPE_DONE:Ljava/lang/String; = "com.mediatek.ppl.MOUNT_SERVICE_WIPE_RESPONSE"

.field private static final TAG:Ljava/lang/String; = "MtkStorageManagerService"


# instance fields
.field private final mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/server/MtkStorageManagerService;->FORMAT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;-><init>(Landroid/content/Context;)V

    .line 198
    new-instance v0, Lcom/mediatek/server/MtkStorageManagerService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/server/MtkStorageManagerService$2;-><init>(Lcom/mediatek/server/MtkStorageManagerService;)V

    iput-object v0, p0, Lcom/mediatek/server/MtkStorageManagerService;->mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    invoke-direct {p0}, Lcom/mediatek/server/MtkStorageManagerService;->registerPrivacyProtectionReceiver()V

    .line 62
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 55
    sget-object v0, Lcom/mediatek/server/MtkStorageManagerService;->FORMAT_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/server/MtkStorageManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/MtkStorageManagerService;

    .line 55
    iget v0, p0, Lcom/mediatek/server/MtkStorageManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/server/MtkStorageManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/MtkStorageManagerService;

    .line 55
    iget-object v0, p0, Lcom/mediatek/server/MtkStorageManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/server/MtkStorageManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/server/MtkStorageManagerService;

    .line 55
    invoke-direct {p0}, Lcom/mediatek/server/MtkStorageManagerService;->formatPhoneStorageAndExternalSDCard()V

    return-void
.end method

.method private findVolumeListNeedFormat()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 95
    const-string v0, "MtkStorageManagerService"

    const-string v1, "findVolumeListNeedFormat"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    .local v0, "tempVolumes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/VolumeInfo;>;"
    iget-object v1, p0, Lcom/mediatek/server/MtkStorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    :try_start_f
    iget-object v3, p0, Lcom/mediatek/server/MtkStorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 99
    iget-object v3, p0, Lcom/mediatek/server/MtkStorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 103
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p0, v3}, Lcom/mediatek/server/MtkStorageManagerService;->isUSBOTG(Landroid/os/storage/VolumeInfo;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 104
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 105
    :cond_31
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_57

    .line 106
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 107
    :cond_3e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v4, "MtkStorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i will try to format volume= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 111
    .end local v2    # "i":I
    :cond_5a
    monitor-exit v1

    .line 112
    return-object v0

    .line 111
    :catchall_5c
    move-exception v2

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_f .. :try_end_5e} :catchall_5c

    throw v2
.end method

.method private formatPhoneStorageAndExternalSDCard()V
    .registers 3

    .line 116
    invoke-direct {p0}, Lcom/mediatek/server/MtkStorageManagerService;->findVolumeListNeedFormat()Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    .local v0, "tempVolumes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/VolumeInfo;>;"
    new-instance v1, Lcom/mediatek/server/MtkStorageManagerService$1;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/server/MtkStorageManagerService$1;-><init>(Lcom/mediatek/server/MtkStorageManagerService;Ljava/util/ArrayList;)V

    .line 195
    invoke-virtual {v1}, Lcom/mediatek/server/MtkStorageManagerService$1;->start()V

    .line 196
    return-void
.end method

.method private registerPrivacyProtectionReceiver()V
    .registers 6

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, "privacyProtectionFilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.ppl.NOTIFY_MOUNT_SERVICE_WIPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/mediatek/server/MtkStorageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/server/MtkStorageManagerService;->mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/server/MtkStorageManagerService;->mHandler:Landroid/os/Handler;

    const-string v4, "com.mediatek.permission.MOUNT_SERVICE_WIPE"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    return-void
.end method


# virtual methods
.method public isUSBOTG(Landroid/os/storage/VolumeInfo;)Z
    .registers 7
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 214
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "diskID":Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 217
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "idSplit":[Ljava/lang/String;
    if-eqz v1, :cond_25

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 219
    const/4 v2, 0x1

    aget-object v3, v1, v2

    const-string v4, "8,"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 220
    const-string v3, "MtkStorageManagerService"

    const-string v4, "this is a usb otg"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return v2

    .line 225
    .end local v1    # "idSplit":[Ljava/lang/String;
    :cond_25
    const/4 v1, 0x0

    return v1
.end method

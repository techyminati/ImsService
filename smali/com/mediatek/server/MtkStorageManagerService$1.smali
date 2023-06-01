.class Lcom/mediatek/server/MtkStorageManagerService$1;
.super Ljava/lang/Thread;
.source "MtkStorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/server/MtkStorageManagerService;->formatPhoneStorageAndExternalSDCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/server/MtkStorageManagerService;

.field final synthetic val$tempVolumes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mediatek/server/MtkStorageManagerService;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/server/MtkStorageManagerService;

    .line 117
    iput-object p1, p0, Lcom/mediatek/server/MtkStorageManagerService$1;->this$0:Lcom/mediatek/server/MtkStorageManagerService;

    iput-object p2, p0, Lcom/mediatek/server/MtkStorageManagerService$1;->val$tempVolumes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 119
    # getter for: Lcom/mediatek/server/MtkStorageManagerService;->FORMAT_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/server/MtkStorageManagerService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 120
    :try_start_5
    iget-object v1, p0, Lcom/mediatek/server/MtkStorageManagerService$1;->this$0:Lcom/mediatek/server/MtkStorageManagerService;

    # getter for: Lcom/mediatek/server/MtkStorageManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/mediatek/server/MtkStorageManagerService;->access$100(Lcom/mediatek/server/MtkStorageManagerService;)I

    move-result v1

    .line 121
    .local v1, "userId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/mediatek/server/MtkStorageManagerService$1;->val$tempVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_f3

    .line 122
    iget-object v3, p0, Lcom/mediatek/server/MtkStorageManagerService$1;->val$tempVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 125
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_59

    .line 126
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_59

    .line 127
    const-string v4, "MtkStorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use partition public to format, volume= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v4, p0, Lcom/mediatek/server/MtkStorageManagerService$1;->this$0:Lcom/mediatek/server/MtkStorageManagerService;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/server/MtkStorageManagerService;->partitionPublic(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ef

    .line 130
    iget-object v4, p0, Lcom/mediatek/server/MtkStorageManagerService$1;->this$0:Lcom/mediatek/server/MtkStorageManagerService;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/server/MtkStorageManagerService;->forgetVolume(Ljava/lang/String;)V

    goto/16 :goto_ef

    .line 136
    :cond_59
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    const-wide/16 v6, 0x3e8

    const/16 v8, 0x1e

    if-ne v4, v5, :cond_8a

    .line 137
    const-string v4, "MtkStorageManagerService"

    const-string v9, "volume is checking, wait.."

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_5 .. :try_end_6a} :catchall_11e

    .line 138
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6b
    if-ge v4, v8, :cond_8a

    .line 140
    :try_start_6d
    invoke-static {v6, v7}, Lcom/mediatek/server/MtkStorageManagerService$1;->sleep(J)V
    :try_end_70
    .catch Ljava/lang/InterruptedException; {:try_start_6d .. :try_end_70} :catch_71
    .catchall {:try_start_6d .. :try_end_70} :catchall_11e

    .line 143
    goto :goto_79

    .line 141
    :catch_71
    move-exception v9

    .line 142
    .local v9, "ex":Ljava/lang/InterruptedException;
    :try_start_72
    const-string v10, "MtkStorageManagerService"

    const-string v11, "Exception when wait!"

    invoke-static {v10, v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v9    # "ex":Ljava/lang/InterruptedException;
    :goto_79
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    if-eq v9, v5, :cond_87

    .line 145
    const-string v5, "MtkStorageManagerService"

    const-string v9, "volume wait checking done!"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    goto :goto_8a

    .line 138
    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 151
    .end local v4    # "j":I
    :cond_8a
    :goto_8a
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d0

    .line 152
    const-string v4, "MtkStorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "volume is mounted, unmount firstly, volume="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v4, p0, Lcom/mediatek/server/MtkStorageManagerService$1;->this$0:Lcom/mediatek/server/MtkStorageManagerService;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/server/MtkStorageManagerService;->unmount(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_72 .. :try_end_b0} :catchall_11e

    .line 155
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_b1
    if-ge v4, v8, :cond_d0

    .line 157
    :try_start_b3
    invoke-static {v6, v7}, Lcom/mediatek/server/MtkStorageManagerService$1;->sleep(J)V
    :try_end_b6
    .catch Ljava/lang/InterruptedException; {:try_start_b3 .. :try_end_b6} :catch_b7
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_11e

    .line 160
    goto :goto_bf

    .line 158
    :catch_b7
    move-exception v5

    .line 159
    .local v5, "ex":Ljava/lang/InterruptedException;
    :try_start_b8
    const-string v9, "MtkStorageManagerService"

    const-string v10, "Exception when wait!"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v5    # "ex":Ljava/lang/InterruptedException;
    :goto_bf
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    if-nez v5, :cond_cd

    .line 162
    const-string v5, "MtkStorageManagerService"

    const-string v6, "wait unmount done!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    goto :goto_d0

    .line 155
    :cond_cd
    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    .line 185
    .end local v4    # "j":I
    :cond_d0
    :goto_d0
    iget-object v4, p0, Lcom/mediatek/server/MtkStorageManagerService$1;->this$0:Lcom/mediatek/server/MtkStorageManagerService;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/server/MtkStorageManagerService;->format(Ljava/lang/String;)V

    .line 186
    const-string v4, "MtkStorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "format Succeed! volume="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_ef
    :goto_ef
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 190
    .end local v2    # "i":I
    :cond_f3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.ppl.MOUNT_SERVICE_WIPE_RESPONSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/server/MtkStorageManagerService$1;->this$0:Lcom/mediatek/server/MtkStorageManagerService;

    # getter for: Lcom/mediatek/server/MtkStorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/server/MtkStorageManagerService;->access$200(Lcom/mediatek/server/MtkStorageManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.mediatek.permission.MOUNT_SERVICE_WIPE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 192
    const-string v3, "MtkStorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Privacy Protection wipe: send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    nop

    .end local v1    # "userId":I
    .end local v2    # "intent":Landroid/content/Intent;
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_11e
    move-exception v1

    monitor-exit v0
    :try_end_120
    .catchall {:try_start_b8 .. :try_end_120} :catchall_11e

    throw v1
.end method

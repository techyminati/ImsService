.class Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;
.super Landroid/os/UEventObserver;
.source "HdmiLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmilocalservice/HdmiLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiObserver"
.end annotation


# static fields
.field private static final HDMI_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/hdmi/name"

.field private static final HDMI_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "hdmi_notification_channel"

.field private static final HDMI_NOTIFICATION_NAME:Ljava/lang/String; = "HDMI"

.field private static final HDMI_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/hdmi/state"

.field private static final HDMI_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/hdmi"

.field private static final MSG_HDMI_PLUG_IN:I = 0xa

.field private static final MSG_HDMI_PLUG_OUT:I = 0xb

.field private static final TAG:Ljava/lang/String; = "HdmiLocalService.HdmiObserver"


# instance fields
.field private final mCxt:Landroid/content/Context;

.field private mHdmiName:Ljava/lang/String;

.field private mHdmiState:I

.field private mPrevHdmiState:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/mediatek/hdmilocalservice/HdmiLocalService;


# direct methods
.method public constructor <init>(Lcom/mediatek/hdmilocalservice/HdmiLocalService;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .line 107
    iput-object p1, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->this$0:Lcom/mediatek/hdmilocalservice/HdmiLocalService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mCxt:Landroid/content/Context;

    .line 109
    nop

    .line 110
    const-string p1, "power"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 111
    .local p1, "pm":Landroid/os/PowerManager;
    const/16 v0, 0x1a

    const-string v1, "HdmiObserver"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 114
    invoke-direct {p0}, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->init()V

    .line 115
    return-void
.end method

.method private getContentFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;

    .line 160
    const-string v0, "close reader fail: "

    const-string v1, "HdmiLocalService.HdmiObserver"

    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 161
    .local v2, "buffer":[C
    const/4 v3, 0x0

    .line 162
    .local v3, "reader":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 164
    .local v4, "content":Ljava/lang/String;
    :try_start_a
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 165
    array-length v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 166
    .local v5, "len":I
    invoke-static {v2, v6, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " content is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_36} :catch_a1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_36} :catch_7e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_36} :catch_57
    .catchall {:try_start_a .. :try_end_36} :catchall_54

    .line 175
    nop

    .line 177
    .end local v5    # "len":I
    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3c

    .line 180
    :goto_3a
    goto/16 :goto_c6

    .line 178
    :catch_3c
    move-exception v5

    .line 179
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_42
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_3a

    .line 175
    :catchall_54
    move-exception v5

    goto/16 :goto_c7

    .line 172
    :catch_57
    move-exception v5

    .line 173
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_54

    .line 175
    nop

    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-eqz v3, :cond_c6

    .line 177
    :try_start_73
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_3a

    .line 178
    :catch_77
    move-exception v5

    .line 179
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_42

    .line 170
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7e
    move-exception v5

    .line 171
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_7f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO exception when read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_7f .. :try_end_93} :catchall_54

    .line 175
    nop

    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_c6

    .line 177
    :try_start_96
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_3a

    .line 178
    :catch_9a
    move-exception v5

    .line 179
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_42

    .line 168
    .end local v5    # "e":Ljava/io/IOException;
    :catch_a1
    move-exception v5

    .line 169
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_a2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t find file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_a2 .. :try_end_b6} :catchall_54

    .line 175
    nop

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_c6

    .line 177
    :try_start_b9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_be

    goto/16 :goto_3a

    .line 178
    :catch_be
    move-exception v5

    .line 179
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_42

    .line 183
    .end local v5    # "e":Ljava/io/IOException;
    :cond_c6
    :goto_c6
    return-object v4

    .line 175
    :goto_c7
    if-eqz v3, :cond_e4

    .line 177
    :try_start_c9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    .line 180
    goto :goto_e4

    .line 178
    :catch_cd
    move-exception v6

    .line 179
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v6    # "e":Ljava/io/IOException;
    :cond_e4
    :goto_e4
    throw v5
.end method

.method private handleNotification(Z)V
    .registers 18
    .param p1, "showNoti"    # Z

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mCxt:Landroid/content/Context;

    .line 213
    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 214
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const-string v2, "HdmiLocalService.HdmiObserver"

    if-nez v1, :cond_16

    .line 215
    const-string v3, "Fail to get NotificationManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 218
    :cond_16
    const/4 v3, 0x0

    const v4, 0x8020062

    if-eqz p1, :cond_80

    .line 219
    const-string v5, "Show notification now"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v5, 0x2

    const-string v6, "hdmi_notification_channel"

    const-string v7, "HDMI"

    invoke-direct {v2, v6, v7, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 224
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v5, v0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mCxt:Landroid/content/Context;

    invoke-direct {v2, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 226
    .local v2, "notification":Landroid/app/Notification;
    iget-object v5, v0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mCxt:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x80500d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "titleStr":Ljava/lang/String;
    iget-object v6, v0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mCxt:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x80500d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "contentStr":Ljava/lang/String;
    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 232
    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 233
    const/16 v7, 0x23

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 236
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.HdmiSettings"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {v7}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 240
    .local v7, "intent":Landroid/content/Intent;
    iget-object v10, v0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mCxt:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v13, 0x4000000

    const/4 v14, 0x0

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v12, v7

    invoke-static/range {v10 .. v15}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 242
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v9, v0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mCxt:Landroid/content/Context;

    invoke-virtual {v2, v9, v5, v6, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 244
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v4, v2, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 247
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v5    # "titleStr":Ljava/lang/String;
    .end local v6    # "contentStr":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_8a

    .line 248
    :cond_80
    const-string v5, "Clear notification now"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 252
    :goto_8a
    return-void
.end method

.method private init()V
    .registers 6

    .line 143
    iget-object v0, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mHdmiName:Ljava/lang/String;

    .line 144
    .local v0, "newName":Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mHdmiState:I

    .line 145
    .local v1, "newState":I
    iget v2, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mHdmiState:I

    iput v2, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mPrevHdmiState:I

    .line 146
    const-string v2, "/sys/class/switch/hdmi/name"

    invoke-direct {p0, v2}, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :try_start_e
    const-string v2, "/sys/class/switch/hdmi/state"

    invoke-direct {p0, v2}, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "mState":Ljava/lang/String;
    if-eqz v2, :cond_1b

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_1a} :catch_20
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1a} :catch_20

    move v1, v3

    .line 155
    .end local v2    # "mState":Ljava/lang/String;
    :cond_1b
    nop

    .line 156
    invoke-direct {p0, v0, v1}, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->update(Ljava/lang/String;I)V

    .line 157
    return-void

    .line 152
    :catch_20
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "HdmiLocalService.HdmiObserver"

    const-string v4, "HDMI state fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method private update(Ljava/lang/String;I)V
    .registers 8
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMIOberver.update(), oldState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mHdmiState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiLocalService.HdmiObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move v0, p2

    .line 191
    .local v0, "hdmiState":I
    iget v2, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mHdmiState:I

    or-int v3, v0, v2

    .line 192
    .local v3, "newOrOld":I
    const/4 v4, 0x0

    .line 197
    .local v4, "delay":I
    iput-object p1, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mHdmiName:Ljava/lang/String;

    .line 198
    iput v2, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mPrevHdmiState:I

    .line 199
    iput v0, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mHdmiState:I

    .line 200
    if-nez v0, :cond_3d

    .line 201
    iget-object v2, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 202
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->handleNotification(Z)V

    .line 203
    const-string v2, "HDMIOberver.update(), release"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 205
    :cond_3d
    iget-object v2, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 206
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->handleNotification(Z)V

    .line 207
    const-string v2, "HDMIOberver.update(), acquire"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_4b
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HdmiObserver: onUEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiLocalService.HdmiObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v0, "SWITCH_NAME"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 131
    .local v2, "state":I
    :try_start_21
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_2b} :catch_2d

    move v2, v3

    .line 136
    goto :goto_42

    .line 132
    :catch_2d
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HdmiObserver: Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HdmiObserver.onUEvent(), name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0, v0, v2}, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->update(Ljava/lang/String;I)V

    .line 140
    return-void
.end method

.method public startObserve()V
    .registers 2

    .line 118
    const-string v0, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->startObserving(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public stopObserve()V
    .registers 1

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->stopObserving()V

    .line 123
    return-void
.end method

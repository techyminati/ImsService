.class public Lcom/mediatek/amplus/PowerSavingUtils;
.super Ljava/lang/Object;
.source "PowerSavingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;,
        Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;
    }
.end annotation


# static fields
.field private static final FILEPATH:Ljava/lang/String; = "/system/etc/alarmplus.config"

.field private static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final NEW_POWER_SAVING_MODE:I = 0x2

.field private static final SCREENOFF_TIME_INTERVAL_THRESHOLD:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "AlarmManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mIsUsbConnected:Z

.field private mIsWFDConnected:Z

.field private mPowerSavingEnableObserver:Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;

.field private mPowerSavingReceiver:Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;

.field private mSavingMode:I

.field private mScreenOff:Z

.field private mScreenOffTime:J

.field final mWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOff:Z

    .line 40
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOffTime:J

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsUsbConnected:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mPowerSavingEnableObserver:Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mWhitelist:Ljava/util/ArrayList;

    .line 53
    iput v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mSavingMode:I

    .line 55
    iput-object p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/amplus/PowerSavingUtils;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/amplus/PowerSavingUtils;

    .line 37
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/amplus/PowerSavingUtils;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/amplus/PowerSavingUtils;J)J
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/amplus/PowerSavingUtils;
    .param p1, "x1"    # J

    .line 37
    iput-wide p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/amplus/PowerSavingUtils;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsUsbConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/amplus/PowerSavingUtils;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/amplus/PowerSavingUtils;

    .line 37
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/amplus/PowerSavingUtils;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/amplus/PowerSavingUtils;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/amplus/PowerSavingUtils;

    .line 37
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->setPowerSavingEnable()V

    return-void
.end method

.method private adjustMaxTriggerTime(JJJLandroid/app/PendingIntent;IZZ)J
    .registers 26
    .param p1, "now"    # J
    .param p3, "triggerAtTime"    # J
    .param p5, "interval"    # J
    .param p7, "operation"    # Landroid/app/PendingIntent;
    .param p8, "type"    # I
    .param p9, "needGrouping"    # Z
    .param p10, "isExactAlarm"    # Z

    .line 204
    move-object v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p8

    const-wide/16 v3, 0x0

    cmp-long v5, p5, v3

    if-nez v5, :cond_e

    .line 205
    sub-long v5, p3, p1

    goto :goto_10

    .line 206
    :cond_e
    move-wide/from16 v5, p5

    :goto_10
    nop

    .line 207
    .local v5, "futurity":J
    const-wide/16 v7, 0x2710

    cmp-long v7, v5, v7

    if-gez v7, :cond_19

    .line 208
    const-wide/16 v5, 0x0

    .line 211
    :cond_19
    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    long-to-double v9, v5

    mul-double/2addr v9, v7

    double-to-long v7, v9

    add-long v7, p3, v7

    .line 213
    .local v7, "maxTriggerAtTime":J
    iget v9, v0, Lcom/mediatek/amplus/PowerSavingUtils;->mSavingMode:I

    const/4 v10, 0x2

    const-wide/32 v11, 0x493e0

    if-eq v9, v10, :cond_3e

    .line 214
    if-nez p9, :cond_2b

    .line 215
    return-wide v7

    .line 217
    :cond_2b
    const/4 v9, 0x1

    invoke-direct {p0, v2, v1, v9}, Lcom/mediatek/amplus/PowerSavingUtils;->isAlarmNeedAlign(ILandroid/app/PendingIntent;Z)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 218
    sub-long v3, v7, p3

    cmp-long v3, v3, v11

    if-gez v3, :cond_3b

    .line 219
    add-long v3, p3, v11

    return-wide v3

    .line 221
    :cond_3b
    return-wide v7

    .line 224
    :cond_3c
    sub-long/2addr v3, v7

    return-wide v3

    .line 227
    :cond_3e
    move/from16 v9, p10

    invoke-direct {p0, v2, v1, v9}, Lcom/mediatek/amplus/PowerSavingUtils;->isAlarmNeedAlign(ILandroid/app/PendingIntent;Z)Z

    move-result v10

    if-eqz v10, :cond_4f

    sub-long v13, v7, p3

    cmp-long v10, v13, v11

    if-gez v10, :cond_4f

    .line 229
    add-long v3, p3, v11

    return-wide v3

    .line 231
    :cond_4f
    sub-long/2addr v3, v7

    return-wide v3
.end method

.method private getMTKMaxTriggerTime(ILandroid/app/PendingIntent;JZ)J
    .registers 8
    .param p1, "type"    # I
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .param p3, "triggerAtTime"    # J
    .param p5, "needGrouping"    # Z

    .line 156
    if-nez p5, :cond_3

    .line 157
    return-wide p3

    .line 159
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/amplus/PowerSavingUtils;->isAlarmNeedAlign(ILandroid/app/PendingIntent;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p5, :cond_11

    .line 160
    const-wide/32 v0, 0x493e0

    add-long/2addr v0, p3

    return-wide v0

    .line 162
    :cond_11
    const-wide/16 v0, 0x0

    sub-long/2addr v0, p3

    return-wide v0
.end method

.method private init()V
    .registers 4

    .line 61
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    .line 62
    .local v0, "aa":Lcom/mediatek/common/jpe/a;
    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 64
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->readList()V

    .line 65
    new-instance v1, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;

    invoke-direct {v1, p0}, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;-><init>(Lcom/mediatek/amplus/PowerSavingUtils;)V

    iput-object v1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mPowerSavingReceiver:Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;

    .line 66
    new-instance v1, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;-><init>(Lcom/mediatek/amplus/PowerSavingUtils;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mPowerSavingEnableObserver:Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;

    .line 67
    return-void
.end method

.method private isAlarmNeedAlign(ILandroid/app/PendingIntent;Z)Z
    .registers 13
    .param p1, "type"    # I
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .param p3, "isExactAlarm"    # Z

    .line 94
    const/4 v0, 0x0

    .line 97
    .local v0, "isAlarmNeedAlign":Z
    invoke-virtual {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->isPowerSavingStart()Z

    move-result v1

    if-nez v1, :cond_9

    .line 98
    goto/16 :goto_bf

    .line 101
    :cond_9
    iget v1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mSavingMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    .line 103
    if-eqz p1, :cond_14

    if-eq p1, v2, :cond_14

    .line 105
    goto/16 :goto_bf

    .line 109
    :cond_14
    const-string v1, "AlarmManager"

    if-nez p2, :cond_1f

    .line 110
    const-string v2, "isAlarmNeedAlign : operation is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto/16 :goto_bf

    .line 114
    :cond_1f
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_2c

    .line 116
    const-string v3, "isAlarmNeedAlign : packageName is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    goto/16 :goto_bf

    .line 120
    :cond_2c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    iget-object v4, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_61

    .line 121
    iget-object v4, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAlarmNeedAlign : packageName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "is in whitelist"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v5

    .line 120
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 126
    .end local v3    # "i":I
    :cond_61
    if-eqz p3, :cond_be

    .line 127
    iget-object v3, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 129
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_69
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 130
    .local v6, "origId":J
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 131
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b6

    const-string v5, "com.android"

    .line 134
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_92

    const-string v5, "com.google.android.deskclock"

    .line 135
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_92

    const-string v5, "android"

    .line 136
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 137
    :cond_92
    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAlarmNeedAlign : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " skip!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_69 .. :try_end_b5} :catch_b7

    .line 139
    :cond_b5
    goto :goto_bf

    .line 145
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "origId":J
    :cond_b6
    goto :goto_be

    .line 142
    :catch_b7
    move-exception v4

    .line 143
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "isAlarmNeedAlign : packageName not fount"

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto :goto_bf

    .line 147
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_be
    :goto_be
    const/4 v0, 0x1

    .line 149
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_bf
    return v0
.end method

.method private readList()V
    .registers 5

    .line 72
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/alarmplus.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "WhitelistFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 74
    return-void

    .line 77
    :cond_e
    :try_start_e
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 78
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "line":Ljava/lang/String;
    :goto_1c
    if-eqz v2, :cond_29

    .line 80
    iget-object v3, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_1c

    .line 83
    :cond_29
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2c} :catch_2d

    .line 87
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_31

    .line 84
    :catch_2d
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    .end local v1    # "e":Ljava/io/IOException;
    :goto_31
    return-void
.end method

.method private setPowerSavingEnable()V
    .registers 5

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "isEnabled":I
    iget-object v1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_power_saving_enable"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 274
    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    :goto_12
    iput-boolean v3, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    .line 275
    return-void
.end method


# virtual methods
.method public getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J
    .registers 26
    .param p1, "type"    # I
    .param p2, "triggerElapsed"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "mAlarmMode"    # I
    .param p10, "needGrouping"    # Z

    .line 255
    move-object v11, p0

    move/from16 v12, p9

    iput v12, v11, Lcom/mediatek/amplus/PowerSavingUtils;->mSavingMode:I

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 260
    .local v13, "nowElapsed":J
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1d

    .line 261
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p8

    move-wide/from16 v3, p2

    move/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/amplus/PowerSavingUtils;->getMTKMaxTriggerTime(ILandroid/app/PendingIntent;JZ)J

    move-result-wide v0

    .local v0, "maxElapsed":J
    goto :goto_37

    .line 262
    .end local v0    # "maxElapsed":J
    :cond_1d
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_35

    .line 263
    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, v13

    move-wide/from16 v3, p2

    move-wide/from16 v5, p6

    move-object/from16 v7, p8

    move/from16 v8, p1

    move/from16 v9, p10

    invoke-direct/range {v0 .. v10}, Lcom/mediatek/amplus/PowerSavingUtils;->adjustMaxTriggerTime(JJJLandroid/app/PendingIntent;IZZ)J

    move-result-wide v0

    .restart local v0    # "maxElapsed":J
    goto :goto_37

    .line 265
    .end local v0    # "maxElapsed":J
    :cond_35
    add-long v0, p2, p4

    .line 267
    .restart local v0    # "maxElapsed":J
    :goto_37
    return-wide v0
.end method

.method public isPowerSavingStart()Z
    .registers 9

    .line 168
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 169
    return v1

    .line 172
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsUsbConnected:Z

    if-eqz v0, :cond_b

    .line 173
    return v1

    .line 176
    :cond_b
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z

    if-eqz v0, :cond_10

    .line 177
    return v1

    .line 180
    :cond_10
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOff:Z

    if-eqz v0, :cond_43

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 182
    .local v2, "currentTime":J
    const-wide/16 v4, 0x0

    .line 183
    .local v4, "screenOffThreshold":J
    iget v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mSavingMode:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_23

    .line 184
    const-wide/32 v4, 0x493e0

    goto :goto_26

    .line 186
    :cond_23
    const-wide/32 v4, 0xea60

    .line 188
    :goto_26
    iget-wide v6, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOffTime:J

    sub-long v6, v2, v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_40

    .line 189
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v6, "eng"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 190
    const-string v0, "AlarmManager"

    const-string v6, "mScreenOff time is not enough"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_3f
    return v1

    .line 194
    .end local v2    # "currentTime":J
    .end local v4    # "screenOffThreshold":J
    :cond_40
    nop

    .line 197
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_43
    return v1
.end method

.class public Lcom/mediatek/server/MtkAlarmManagerService;
.super Lcom/android/server/alarm/AlarmManagerService;
.source "MtkAlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/MtkAlarmManagerService$WFDStatusChangedReceiver;
    }
.end annotation


# static fields
.field static final POWER_OFF_ALARM_BUFFER_TIME:J = 0x249f0L

.field private static final sIncreasingTimeOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mIsWFDConnected:Z

.field private mNativeData:J

.field private mPowerOffAlarmLock:Ljava/lang/Object;

.field private final mPoweroffAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field mWFDStatusChangedReceiver:Lcom/mediatek/server/MtkAlarmManagerService$WFDStatusChangedReceiver;

.field private mWaitThreadlock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 133
    sget-object v0, Lcom/mediatek/server/MtkAlarmManagerService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/server/MtkAlarmManagerService$$ExternalSyntheticLambda0;

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/mediatek/server/MtkAlarmManagerService;->sIncreasingTimeOrder:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mIsWFDConnected:Z

    .line 139
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    .line 140
    sput-boolean v2, Lcom/mediatek/server/MtkAlarmManagerService;->localLOGV:Z

    .line 141
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_WAKELOCK:Z

    .line 142
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_BATCH:Z

    .line 143
    sput-boolean v2, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_STANDBY:Z

    .line 144
    sput-boolean v2, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    goto :goto_45

    .line 145
    :cond_31
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 146
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->localLOGV:Z

    .line 147
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_WAKELOCK:Z

    .line 148
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_BATCH:Z

    .line 149
    sput-boolean v2, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_STANDBY:Z

    .line 150
    sput-boolean v2, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    .line 153
    :cond_45
    :goto_45
    return-void
.end method

.method private addPoweroffAlarmLocked(Lcom/android/server/alarm/Alarm;)I
    .registers 12
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 307
    iget-object v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 308
    .local v0, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    sget-object v1, Lcom/mediatek/server/MtkAlarmManagerService;->sIncreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 310
    .local v1, "index":I
    if-gez v1, :cond_e

    .line 311
    rsub-int/lit8 v2, v1, 0x0

    add-int/lit8 v1, v2, -0x1

    .line 314
    :cond_e
    sget-boolean v2, Lcom/mediatek/server/MtkAlarmManagerService;->localLOGV:Z

    const-string v3, "AlarmManager"

    if-eqz v2, :cond_30

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding alarm "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_30
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 319
    sget-boolean v2, Lcom/mediatek/server/MtkAlarmManagerService;->localLOGV:Z

    if-eqz v2, :cond_a3

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alarms: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v2, 0x0

    .line 323
    .local v2, "position":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 324
    .local v5, "a":Lcom/android/server/alarm/Alarm;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 325
    .local v6, "time":Landroid/text/format/Time;
    iget-wide v7, v5, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 326
    const-string v7, "%b %d %I:%M:%S %p"

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, "timeStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 328
    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 327
    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    nop

    .end local v5    # "a":Lcom/android/server/alarm/Alarm;
    .end local v6    # "time":Landroid/text/format/Time;
    .end local v7    # "timeStr":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 330
    goto :goto_5e

    .line 334
    .end local v2    # "position":I
    :cond_a3
    return v1
.end method

.method private removePoweroffAlarmLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 339
    .local v0, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_9

    .line 340
    return-void

    .line 344
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 346
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/alarm/Alarm;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 348
    .local v2, "alarm":Lcom/android/server/alarm/Alarm;
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 351
    .end local v2    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_28
    goto :goto_d

    .line 352
    :cond_29
    return-void
.end method

.method private resetPoweroffAlarm(Lcom/android/server/alarm/Alarm;)V
    .registers 20
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 359
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "setPackageName":Ljava/lang/String;
    iget-wide v3, v1, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 363
    .local v3, "latestTime":J
    iget-wide v5, v0, Lcom/mediatek/server/MtkAlarmManagerService;->mNativeData:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-string v8, "AlarmManager"

    if-eqz v7, :cond_b2

    const-wide/16 v9, -0x1

    cmp-long v5, v5, v9

    if-eqz v5, :cond_b2

    .line 364
    const-string v5, "com.android.deskclock"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, " set Prop 2"

    const-string v7, "mBootPackage = "

    const-wide/16 v9, 0x3e8

    if-eqz v5, :cond_51

    .line 366
    sget-boolean v5, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v5, :cond_43

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_43
    iget-wide v11, v0, Lcom/mediatek/server/MtkAlarmManagerService;->mNativeData:J

    const/4 v13, 0x7

    div-long v14, v3, v9

    rem-long v5, v3, v9

    mul-long/2addr v5, v9

    mul-long v16, v5, v9

    invoke-static/range {v11 .. v17}, Lcom/mediatek/server/MtkAlarmManagerService;->set(JIJJ)I

    goto :goto_99

    .line 373
    :cond_51
    const-string v5, "com.mediatek.sqa8.aging"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-wide v11, v0, Lcom/mediatek/server/MtkAlarmManagerService;->mNativeData:J

    const/4 v13, 0x7

    div-long v14, v3, v9

    rem-long v5, v3, v9

    mul-long/2addr v5, v9

    mul-long v16, v5, v9

    invoke-static/range {v11 .. v17}, Lcom/mediatek/server/MtkAlarmManagerService;->set(JIJJ)I

    goto :goto_99

    .line 379
    :cond_7c
    sget-boolean v5, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v5, :cond_99

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown package ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") to set power off alarm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_99
    :goto_99
    sget-boolean v5, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v5, :cond_bb

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reset power off alarm is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 391
    :cond_b2
    sget-boolean v5, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v5, :cond_bb

    .line 392
    const-string v5, " do not set alarm to RTC when fd close "

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_bb
    :goto_bb
    return-void
.end method

.method private updatePoweroffAlarm(J)V
    .registers 9
    .param p1, "nowRTC"    # J

    .line 272
    iget-object v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 274
    monitor-exit v0

    return-void

    .line 277
    :cond_d
    iget-object v1, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    iget-wide v3, v1, Lcom/android/server/alarm/Alarm;->origWhen:J

    cmp-long v1, v3, p1

    if-lez v1, :cond_1e

    .line 278
    monitor-exit v0

    return-void

    .line 281
    :cond_1e
    iget-object v1, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 283
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/alarm/Alarm;>;"
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 287
    .local v3, "alarm":Lcom/android/server/alarm/Alarm;
    iget-wide v4, v3, Lcom/android/server/alarm/Alarm;->origWhen:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_37

    .line 289
    goto :goto_46

    .line 292
    :cond_37
    sget-boolean v4, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v4, :cond_42

    .line 293
    const-string v4, "AlarmManager"

    const-string v5, "power off alarm update deleted"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 298
    .end local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    goto :goto_24

    .line 300
    :cond_46
    :goto_46
    iget-object v3, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_59

    .line 301
    iget-object v3, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    invoke-direct {p0, v2}, Lcom/mediatek/server/MtkAlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/alarm/Alarm;)V

    .line 303
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/alarm/Alarm;>;"
    :cond_59
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method


# virtual methods
.method public cancelPoweroffAlarmImpl(Ljava/lang/String;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .line 404
    sget-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_1a

    .line 405
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove power off alarm pacakge name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1a
    iget-object v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_1d
    invoke-direct {p0, p1}, Lcom/mediatek/server/MtkAlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 413
    iget-wide v1, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mNativeData:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_40

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_40

    .line 414
    const-string v1, "com.android.deskclock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 415
    iget-wide v2, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mNativeData:J

    const/4 v4, 0x7

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/mediatek/server/MtkAlarmManagerService;->set(JIJJ)I

    .line 418
    :cond_40
    iget-object v1, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 419
    iget-object v1, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    invoke-direct {p0, v1}, Lcom/mediatek/server/MtkAlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/alarm/Alarm;)V

    .line 421
    :cond_54
    monitor-exit v0

    .line 422
    return-void

    .line 421
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_1d .. :try_end_58} :catchall_56

    throw v1
.end method

.method protected configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .line 428
    array-length v0, p2

    const-string v1, "  Invalid argument!"

    if-lt p3, v0, :cond_9

    .line 429
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_38

    .line 431
    :cond_9
    aget-object v0, p2, p3

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 432
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->localLOGV:Z

    .line 433
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_BATCH:Z

    .line 434
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    .line 435
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_WAKELOCK:Z

    .line 436
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_STANDBY:Z

    goto :goto_38

    .line 437
    :cond_1f
    aget-object v0, p2, p3

    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 438
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->localLOGV:Z

    .line 439
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_BATCH:Z

    .line 440
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    .line 441
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_WAKELOCK:Z

    .line 442
    sput-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_STANDBY:Z

    goto :goto_38

    .line 444
    :cond_35
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    :goto_38
    return-void
.end method

.method protected dumpWithargs(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "opti":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_56

    .line 454
    aget-object v1, p2, v0

    .line 455
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_56

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_18

    .line 456
    goto :goto_56

    .line 458
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 459
    const-string v2, "-h"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 460
    const-string v2, "alarm manager dump options:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    const-string v2, "  log  [on/off]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    const-string v2, "  Example:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    const-string v2, "  $adb shell dumpsys alarm log on"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    const-string v2, "  $adb shell dumpsys alarm log off"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    return-void

    .line 467
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    .end local v1    # "opt":Ljava/lang/String;
    goto :goto_1

    .line 471
    :cond_56
    :goto_56
    array-length v1, p2

    if-ge v0, v1, :cond_69

    .line 472
    aget-object v1, p2, v0

    .line 473
    .local v1, "cmd":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 474
    const-string v2, "log"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 475
    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/server/MtkAlarmManagerService;->configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 476
    return-void

    .line 480
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_69
    return-void
.end method

.method protected isPowerOffAlarmType(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 200
    const/4 v0, 0x7

    if-eq p1, v0, :cond_5

    .line 201
    const/4 v0, 0x0

    return v0

    .line 203
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method protected isWFDConnected()Z
    .registers 2

    .line 163
    iget-boolean v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mIsWFDConnected:Z

    return v0
.end method

.method public onStart()V
    .registers 3

    .line 169
    invoke-super {p0}, Lcom/android/server/alarm/AlarmManagerService;->onStart()V

    .line 170
    iget-object v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    if-eqz v0, :cond_f

    .line 171
    iget-object v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNativeData()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mNativeData:J

    .line 173
    :cond_f
    return-void
.end method

.method protected registerWFDStatusChangeReciever()V
    .registers 2

    .line 158
    new-instance v0, Lcom/mediatek/server/MtkAlarmManagerService$WFDStatusChangedReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/server/MtkAlarmManagerService$WFDStatusChangedReceiver;-><init>(Lcom/mediatek/server/MtkAlarmManagerService;)V

    iput-object v0, p0, Lcom/mediatek/server/MtkAlarmManagerService;->mWFDStatusChangedReceiver:Lcom/mediatek/server/MtkAlarmManagerService$WFDStatusChangedReceiver;

    .line 159
    return-void
.end method

.method protected schedulePoweroffAlarm(IJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;Ljava/lang/String;)Z
    .registers 41
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;
    .param p7, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p8, "listenerTag"    # Ljava/lang/String;
    .param p9, "workSource"    # Landroid/os/WorkSource;
    .param p10, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p11, "callingPackage"    # Ljava/lang/String;

    .line 213
    move-object/from16 v1, p0

    const/4 v0, 0x7

    move/from16 v15, p1

    if-ne v15, v0, :cond_e8

    .line 214
    iget-wide v2, v1, Lcom/mediatek/server/MtkAlarmManagerService;->mNativeData:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v14, 0x0

    if-nez v0, :cond_18

    .line 215
    const-string v0, "AlarmManager"

    const-string v2, "alarm driver not open ,return!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v14

    .line 219
    :cond_18
    sget-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_36

    .line 220
    const-string v0, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarm set type 7 , package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_36
    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v22

    .line 225
    .local v22, "packageName":Ljava/lang/String;
    const/16 v23, 0x0

    .line 226
    .local v23, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 227
    .local v12, "nowTime":J
    const-wide/32 v2, 0x249f0

    sub-long v10, p2, v2

    .line 229
    .end local p2    # "triggerAtTime":J
    .local v10, "triggerAtTime":J
    cmp-long v0, v10, v12

    if-gez v0, :cond_6c

    .line 231
    sget-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_6b

    .line 232
    const-string v0, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerOff alarm set time is wrong! nowTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ; triggerAtTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_6b
    return v14

    .line 239
    :cond_6c
    sget-boolean v0, Lcom/mediatek/server/MtkAlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_8e

    .line 240
    const-string v0, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerOff alarm TriggerTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " now = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_8e
    iget-object v4, v1, Lcom/mediatek/server/MtkAlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v4

    .line 244
    :try_start_91
    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/server/MtkAlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 246
    .local v18, "poweroffAlarmUserId":I
    new-instance v0, Lcom/android/server/alarm/Alarm;
    :try_end_9e
    .catchall {:try_start_91 .. :try_end_9e} :catchall_dd

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    move-object v2, v0

    move/from16 v3, p1

    move-object/from16 v24, v4

    move-wide v4, v10

    move-wide/from16 v25, v10

    .end local v10    # "triggerAtTime":J
    .local v25, "triggerAtTime":J
    move-wide/from16 v10, p4

    move-wide/from16 v27, v12

    .end local v12    # "nowTime":J
    .local v27, "nowTime":J
    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v17, p10

    move-object/from16 v19, p11

    :try_start_c0
    invoke-direct/range {v2 .. v21}, Lcom/android/server/alarm/Alarm;-><init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 250
    .local v0, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-direct {v1, v0}, Lcom/mediatek/server/MtkAlarmManagerService;->addPoweroffAlarmLocked(Lcom/android/server/alarm/Alarm;)I

    .line 251
    iget-object v2, v1, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_da

    .line 252
    iget-object v2, v1, Lcom/mediatek/server/MtkAlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    invoke-direct {v1, v2}, Lcom/mediatek/server/MtkAlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/alarm/Alarm;)V

    .line 254
    .end local v0    # "alarm":Lcom/android/server/alarm/Alarm;
    .end local v18    # "poweroffAlarmUserId":I
    :cond_da
    monitor-exit v24

    .line 255
    const/4 v0, 0x0

    .end local p1    # "type":I
    .local v0, "type":I
    goto :goto_ec

    .line 254
    .end local v0    # "type":I
    .end local v25    # "triggerAtTime":J
    .end local v27    # "nowTime":J
    .restart local v10    # "triggerAtTime":J
    .restart local v12    # "nowTime":J
    .restart local p1    # "type":I
    :catchall_dd
    move-exception v0

    move-object/from16 v24, v4

    move-wide/from16 v25, v10

    move-wide/from16 v27, v12

    .end local v10    # "triggerAtTime":J
    .end local v12    # "nowTime":J
    .restart local v25    # "triggerAtTime":J
    .restart local v27    # "nowTime":J
    :goto_e4
    monitor-exit v24
    :try_end_e5
    .catchall {:try_start_c0 .. :try_end_e5} :catchall_e6

    throw v0

    :catchall_e6
    move-exception v0

    goto :goto_e4

    .line 213
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "setPackageName":Ljava/lang/String;
    .end local v25    # "triggerAtTime":J
    .end local v27    # "nowTime":J
    .restart local p2    # "triggerAtTime":J
    :cond_e8
    move/from16 v0, p1

    move-wide/from16 v25, p2

    .line 258
    .end local p1    # "type":I
    .end local p2    # "triggerAtTime":J
    .restart local v0    # "type":I
    .restart local v25    # "triggerAtTime":J
    :goto_ec
    const/4 v2, 0x1

    return v2
.end method

.method protected updatePoweroffAlarmtoNowRtc()V
    .registers 3

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    .local v0, "nowRTC":J
    invoke-direct {p0, v0, v1}, Lcom/mediatek/server/MtkAlarmManagerService;->updatePoweroffAlarm(J)V

    .line 266
    return-void
.end method

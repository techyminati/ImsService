.class public Lcom/mediatek/server/MtkShutdownThread;
.super Lcom/android/server/power/ShutdownThread;
.source "MtkShutdownThread.java"


# static fields
.field private static final ANIMATION_MODE:I = 0x1

.field private static final BACKLIGHT_STATE_POLL_SLEEP_MSEC:I = 0x32

.field private static DEBUG:Z = false

.field private static final DEFAULT_MODE:I = 0x0

.field private static final MAX_BLIGHT_OFF_DELAY_TIME:I = 0x1388

.field private static final MAX_BLIGHT_OFF_POLL_TIME:I = 0x3e8

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x1388

.field private static final OPERATOR_SYSPROP:Ljava/lang/String; = "persist.vendor.operator.optr"

.field private static TAG:Ljava/lang/String;

.field private static bConfirmForAnimation:Z

.field private static bPlayaudio:Z

.field private static beginAnimationTime:J

.field private static endAnimationTime:J

.field private static mBlightOff:Z

.field private static mDelayDim:Ljava/lang/Runnable;

.field private static mShutOffAnimation:I

.field private static mSpew:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 71
    const-string v0, "MtkShutdownThread"

    sput-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/server/MtkShutdownThread;->DEBUG:Z

    .line 73
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/server/MtkShutdownThread;->mSpew:Z

    .line 84
    sput-boolean v1, Lcom/mediatek/server/MtkShutdownThread;->mBlightOff:Z

    .line 91
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/mediatek/server/MtkShutdownThread;->beginAnimationTime:J

    .line 92
    sput-wide v1, Lcom/mediatek/server/MtkShutdownThread;->endAnimationTime:J

    .line 93
    sput-boolean v0, Lcom/mediatek/server/MtkShutdownThread;->bConfirmForAnimation:Z

    .line 94
    sput-boolean v0, Lcom/mediatek/server/MtkShutdownThread;->bPlayaudio:Z

    .line 95
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/server/MtkShutdownThread;->mShutOffAnimation:I

    .line 215
    new-instance v0, Lcom/mediatek/server/MtkShutdownThread$1;

    invoke-direct {v0}, Lcom/mediatek/server/MtkShutdownThread$1;-><init>()V

    sput-object v0, Lcom/mediatek/server/MtkShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .line 70
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/server/MtkShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/MtkShutdownThread;

    .line 70
    iget-object v0, p0, Lcom/mediatek/server/MtkShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .line 70
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/server/MtkShutdownThread;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/MtkShutdownThread;

    .line 70
    iget-object v0, p0, Lcom/mediatek/server/MtkShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200()V
    .registers 0

    .line 70
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->setBacklightOff()V

    return-void
.end method

.method static synthetic access$200()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .line 70
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/server/MtkShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/MtkShutdownThread;

    .line 70
    iget-object v0, p0, Lcom/mediatek/server/MtkShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .line 70
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/server/MtkShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/MtkShutdownThread;

    .line 70
    iget-object v0, p0, Lcom/mediatek/server/MtkShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .line 70
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/server/MtkShutdownThread;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/MtkShutdownThread;

    .line 70
    iget-object v0, p0, Lcom/mediatek/server/MtkShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .line 70
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/server/MtkShutdownThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/MtkShutdownThread;
    .param p1, "x1"    # Landroid/os/PowerManager;

    .line 70
    iput-object p1, p0, Lcom/mediatek/server/MtkShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method private static bootanimCust(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 258
    const-string v0, "window"

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    .line 260
    .local v2, "isRotaionEnabled":Z
    const-string v3, "service.shutanim.running"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v3, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v4, "set service.shutanim.running to 0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v3, 0x0

    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_21

    move v4, v5

    goto :goto_22

    :cond_21
    move v4, v3

    :goto_22
    move v2, v4

    .line 265
    if-eqz v2, :cond_51

    .line 266
    nop

    .line 267
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 266
    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 268
    .local v4, "wm":Landroid/view/IWindowManager;
    if-eqz v4, :cond_33

    .line 269
    invoke-interface {v4, v3}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 271
    :cond_33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "accelerometer_rotation_restore"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_43
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_43} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_43} :catch_44

    goto :goto_51

    .line 278
    .end local v4    # "wm":Landroid/view/IWindowManager;
    :catch_44
    move-exception v1

    .line 279
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_52

    .line 276
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_49
    move-exception v1

    .line 277
    .local v1, "ex":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v5, "check Rotation: context object is null when get Rotation"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_51
    :goto_51
    nop

    .line 281
    :goto_52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    sput-wide v4, Lcom/mediatek/server/MtkShutdownThread;->beginAnimationTime:J

    .line 284
    nop

    .line 285
    :try_start_5c
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 286
    .local v0, "wm":Landroid/view/IWindowManager;
    if-eqz v0, :cond_69

    .line 287
    invoke-interface {v0, v3}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_69} :catch_6a

    .line 291
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :cond_69
    goto :goto_6e

    .line 289
    :catch_6a
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6e
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->startBootAnimation()V

    .line 294
    return-void
.end method

.method private static configShutdownAnimation(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 297
    nop

    .line 298
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 300
    .local v0, "pm":Landroid/os/PowerManager;
    sget-boolean v1, Lcom/mediatek/server/MtkShutdownThread;->bConfirmForAnimation:Z

    if-nez v1, :cond_17

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_17

    .line 301
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/server/MtkShutdownThread;->bPlayaudio:Z

    goto :goto_1a

    .line 303
    :cond_17
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/server/MtkShutdownThread;->bPlayaudio:Z

    .line 305
    :goto_1a
    return-void
.end method

.method private static delayForPlayAnimation()V
    .registers 6

    .line 321
    sget-wide v0, Lcom/mediatek/server/MtkShutdownThread;->beginAnimationTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_9

    .line 322
    return-void

    .line 324
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    sput-wide v0, Lcom/mediatek/server/MtkShutdownThread;->endAnimationTime:J

    .line 325
    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 327
    :try_start_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sget-wide v0, Lcom/mediatek/server/MtkShutdownThread;->endAnimationTime:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 330
    goto :goto_25

    .line 328
    :catch_1d
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v2, "Shutdown stop bootanimation Thread.currentThread().sleep exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_25
    :goto_25
    return-void
.end method

.method public static getScreenTurnOffTime()I
    .registers 5

    .line 335
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OP01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xfa0

    if-eqz v2, :cond_1a

    .line 337
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v1, "Inside MtkShutdownThread OP01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return v3

    .line 340
    :cond_1a
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "OP02"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 342
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v1, "Inside MtkShutdownThread OP02"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v3

    .line 345
    :cond_2e
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 347
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v1, "Inside MtkShutdownThread OP09"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/16 v0, 0xbb8

    return v0

    .line 351
    :cond_44
    return v3
.end method

.method private static getScreenTurnOffTime(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, "screenTurnOffTime":I
    :try_start_1
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->getScreenTurnOffTime()I

    move-result v1

    move v0, v1

    .line 358
    sget-object v1, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen turn off time screenTurnOffTime ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 361
    goto :goto_21

    .line 359
    :catch_1d
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_21
    return v0
.end method

.method public static isCustBootAnim()I
    .registers 1

    .line 366
    sget v0, Lcom/mediatek/server/MtkShutdownThread;->mShutOffAnimation:I

    return v0
.end method

.method private pollBacklightOff(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    :try_start_0
    const-string v0, "display"

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 197
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 199
    .local v1, "di":Landroid/view/DisplayInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    .line 200
    .local v2, "endTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v2, v6

    .line 201
    .local v6, "TimeOut":J
    :goto_1a
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_3a

    .line 202
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 203
    iget v8, v1, Landroid/view/DisplayInfo;->state:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2e

    .line 204
    goto :goto_3a

    .line 206
    :cond_2e
    const-wide/16 v8, 0x32

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v2, v8

    goto :goto_1a

    .line 209
    :cond_3a
    :goto_3a
    sget-object v8, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Backlight polling take:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v6

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_58

    .line 212
    nop

    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1    # "di":Landroid/view/DisplayInfo;
    .end local v2    # "endTime":J
    .end local v6    # "TimeOut":J
    goto :goto_5c

    .line 210
    :catch_58
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5c
    return-void
.end method

.method private static setBacklightOff()V
    .registers 5

    .line 175
    sget-boolean v0, Lcom/mediatek/server/MtkShutdownThread;->mBlightOff:Z

    if-eqz v0, :cond_5

    .line 176
    return-void

    .line 178
    :cond_5
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    check-cast v0, Lcom/mediatek/server/MtkShutdownThread;

    iget-object v0, v0, Lcom/mediatek/server/MtkShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_15

    .line 179
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v1, "check PowerManager: PowerManager service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 182
    :cond_15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/server/MtkShutdownThread;->mBlightOff:Z

    .line 183
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v1, "setBacklightBrightness: Off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    check-cast v0, Lcom/mediatek/server/MtkShutdownThread;

    iget-object v0, v0, Lcom/mediatek/server/MtkShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 186
    return-void
.end method

.method private showShutdownAnimation(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 247
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mediatek/server/MtkShutdownThread;->beginAnimationTime:J

    .line 248
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->isCustBootAnim()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 249
    invoke-static {p1}, Lcom/mediatek/server/MtkShutdownThread;->configShutdownAnimation(Landroid/content/Context;)V

    .line 251
    invoke-static {p1}, Lcom/mediatek/server/MtkShutdownThread;->bootanimCust(Landroid/content/Context;)V

    .line 252
    return v1

    .line 254
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private shutdownAnimationService()V
    .registers 4

    .line 233
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->isCustBootAnim()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 234
    return-void

    .line 237
    :cond_8
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v2, "set service.shutanim.running to 1"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v0, "service.shutanim.running"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-boolean v0, Lcom/mediatek/server/MtkShutdownThread;->mReboot:Z

    if-ne v0, v1, :cond_28

    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->mReason:Ljava/lang/String;

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_28
    sget-boolean v0, Lcom/mediatek/server/MtkShutdownThread;->mReboot:Z

    if-nez v0, :cond_2f

    .line 242
    :cond_2c
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->delayForPlayAnimation()V

    .line 244
    :cond_2f
    return-void
.end method

.method private static startBootAnimation()V
    .registers 2

    .line 308
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v1, "Set \'service.bootanim.exit\' = 0)."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-boolean v0, Lcom/mediatek/server/MtkShutdownThread;->bPlayaudio:Z

    const-string v1, "ctl.start"

    if-eqz v0, :cond_21

    .line 312
    const-string v0, "banim_shutmp3"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 315
    :cond_21
    const-string v0, "banim_shutnomp3"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_2d
    return-void
.end method


# virtual methods
.method protected mIsShowShutdownDialog(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/server/MtkShutdownThread;->showShutdownAnimation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 116
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method protected mIsShowShutdownSysui()Z
    .registers 3

    .line 104
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->isCustBootAnim()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 106
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_9
    return v1
.end method

.method protected mLowLevelShutdownSeq(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    invoke-direct {p0, p1}, Lcom/mediatek/server/MtkShutdownThread;->pollBacklightOff(Landroid/content/Context;)V

    .line 165
    sget-boolean v0, Lcom/mediatek/server/MtkShutdownThread;->mSpew:Z

    if-eqz v0, :cond_1d

    .line 167
    const/4 v0, 0x0

    const-string v1, "vendor.shutdown_delay"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 168
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v1, "Delay Shutdown 5s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 172
    :cond_1d
    return-void
.end method

.method protected mShutdownSeqFinish(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    invoke-direct {p0}, Lcom/mediatek/server/MtkShutdownThread;->shutdownAnimationService()V

    .line 156
    sget-boolean v0, Lcom/mediatek/server/MtkShutdownThread;->mReboot:Z

    if-nez v0, :cond_a

    .line 158
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->setBacklightOff()V

    .line 160
    :cond_a
    return-void
.end method

.method protected mStartShutdownSeq(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Lcom/mediatek/server/MtkShutdownThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2f

    invoke-virtual {p0}, Lcom/mediatek/server/MtkShutdownThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2f

    .line 137
    :cond_10
    const/16 v0, 0x1388

    .line 140
    .local v0, "screenTurnOffTime":I
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->isCustBootAnim()I

    move-result v1

    if-ne v1, v2, :cond_1c

    .line 141
    invoke-static {p1}, Lcom/mediatek/server/MtkShutdownThread;->getScreenTurnOffTime(Landroid/content/Context;)I

    move-result v0

    .line 144
    :cond_1c
    const/16 v1, 0x8

    const-string v3, "ro.odm.shutdown_animation_play_time"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 146
    .end local v0    # "screenTurnOffTime":I
    .local v1, "screenTurnOffTime":I
    iget-object v0, p0, Lcom/mediatek/server/MtkShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/mediatek/server/MtkShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    return v2

    .line 125
    .end local v1    # "screenTurnOffTime":I
    :cond_2f
    :goto_2f
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->TAG:Ljava/lang/String;

    const-string v1, "Thread state is not normal! froce to shutdown!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->isCustBootAnim()I

    move-result v0

    if-ne v0, v2, :cond_3f

    .line 128
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->delayForPlayAnimation()V

    .line 131
    :cond_3f
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->setBacklightOff()V

    .line 133
    sget-object v0, Lcom/mediatek/server/MtkShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

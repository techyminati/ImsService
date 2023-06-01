.class public Lcom/mediatek/server/MtkSystemServerImpl;
.super Lcom/mediatek/server/MtkSystemServer;
.source "MtkSystemServerImpl.java"


# static fields
.field private static BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog; = null

.field private static final HDMI_LOCAL_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.hdmilocalservice.HdmiLocalService"

.field private static final MTK_ALARM_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.server.MtkAlarmManagerService"

.field private static final MTK_CONNECTIVITY_SUPPLEMENTAL_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.server.MtkConnectivitySupplementalService"

.field private static final MTK_FM_RADIO_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.fmradioservice.FmRadioService"

.field private static final MTK_OMADM_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.omadm.OmadmService"

.field private static final MTK_STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.server.MtkStorageManagerService$MtkStorageManagerServiceLifecycle"

.field private static final MTK_VOW_BRIDGE_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.server.vow.VoiceWakeupBridgeService"

.field private static final POWER_HAL_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.powerhalservice.PowerHalMgrService"

.field private static final SEARCH_ENGINE_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.search.SearchEngineManagerService"

.field private static final TAG:Ljava/lang/String; = "MtkSystemServerImpl"


# instance fields
.field private mMTPROF_disable:Z

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/mediatek/server/MtkSystemServer;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/server/MtkSystemServerImpl;->mMTPROF_disable:Z

    return-void
.end method

.method private isTriggerSupport(Landroid/content/Context;)Z
    .registers 7
    .param p1, "mContext"    # Landroid/content/Context;

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "isAlexa":Z
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 382
    .local v1, "am":Landroid/media/AudioManager;
    if-nez v1, :cond_12

    .line 383
    const-string v2, "[isTriggerSupport] get audio service is null"

    invoke-static {v2}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 384
    const/4 v2, 0x0

    return v2

    .line 386
    :cond_12
    const-string v2, "MTK_VOW_AMAZON_SUPPORT"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "AlexaSupport":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isTriggerSupport] AlexaSupport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 388
    const-string v3, "MTK_VOW_AMAZON_SUPPORT=true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 389
    const/4 v0, 0x1

    .line 391
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isTriggerSupport] isAlexa "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 392
    return v0
.end method

.method private isVowPDKSupported(Landroid/content/Context;)Z
    .registers 9
    .param p1, "mContext"    # Landroid/content/Context;

    .line 400
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 401
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 402
    const-string v2, "[isVowPDKSupported] get audio service is null"

    invoke-static {v2}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 403
    return v1

    .line 405
    :cond_11
    const/4 v2, 0x0

    .line 406
    .local v2, "size":I
    const-string v3, "MTK_VOW_MAX_PDK_NUMBER"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "result":[Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    array-length v5, v3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2b

    .line 408
    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 410
    :cond_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isVowPDKSupported] DSP Engine Size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 411
    if-lez v2, :cond_42

    move v1, v4

    :cond_42
    return v1
.end method

.method private isWakeupSupport(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 361
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 362
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 363
    const-string v2, "isWakeupSupport get audio service is null"

    invoke-static {v2}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 364
    return v1

    .line 366
    :cond_11
    const-string v2, "MTK_VOW_SUPPORT"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "state":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isWakeupSupport] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 368
    if-eqz v2, :cond_34

    .line 369
    const-string v1, "MTK_VOW_SUPPORT=true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 371
    :cond_34
    return v1
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 314
    const-string v0, "MtkSystemServerImpl"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    return-void
.end method

.method private startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    .registers 6
    .param p1, "className"    # Ljava/lang/String;

    .line 289
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_c

    .line 296
    .local v0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    nop

    .line 297
    iget-object v1, p0, Lcom/mediatek/server/MtkSystemServerImpl;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    return-object v1

    .line 290
    .end local v0    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    :catch_c
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": service class not found, usually indicates that the caller should have called PackageManager.hasSystemFeature() to check whether the feature is available on this device before trying to start the services that implement it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 301
    const-string v0, "MtkSystemServerImpl"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method private static traceEnd()V
    .registers 0

    .line 311
    return-void
.end method


# virtual methods
.method public addBootEvent(Ljava/lang/String;)V
    .registers 9
    .param p1, "bootevent"    # Ljava/lang/String;

    .line 320
    const-string v0, "Failure close /proc/bootprof entry"

    const-string v1, "BOOTPROF"

    iget-boolean v2, p0, Lcom/mediatek/server/MtkSystemServerImpl;->mMTPROF_disable:Z

    if-eqz v2, :cond_9

    .line 321
    return-void

    .line 325
    :cond_9
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 326
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-string v3, "AP_Init"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 327
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 328
    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 327
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 331
    :cond_25
    const/4 v4, 0x0

    .line 333
    .local v4, "fbp":Ljava/io/FileOutputStream;
    :try_start_26
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v6, "/proc/bootprof"

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 334
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 335
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_38} :catch_51
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_38} :catch_44
    .catchall {:try_start_26 .. :try_end_38} :catchall_42

    .line 341
    nop

    .line 343
    :try_start_39
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 346
    :goto_3c
    goto :goto_5e

    .line 344
    :catch_3d
    move-exception v5

    .line 345
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_3c

    .line 341
    :catchall_42
    move-exception v3

    goto :goto_68

    .line 338
    :catch_44
    move-exception v5

    .line 339
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_45
    const-string v6, "Failure open /proc/bootprof entry"

    invoke-static {v1, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_42

    .line 341
    nop

    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_5e

    .line 343
    :try_start_4d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_3d

    goto :goto_3c

    .line 336
    :catch_51
    move-exception v5

    .line 337
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_52
    const-string v6, "Failure open /proc/bootprof, not found!"

    invoke-static {v1, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_42

    .line 341
    nop

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_5e

    .line 343
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_3d

    goto :goto_3c

    .line 350
    :cond_5e
    :goto_5e
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 351
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 353
    :cond_67
    return-void

    .line 341
    :goto_68
    if-eqz v4, :cond_72

    .line 343
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 346
    goto :goto_72

    .line 344
    :catch_6e
    move-exception v5

    .line 345
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    .end local v5    # "e":Ljava/io/IOException;
    :cond_72
    :goto_72
    throw v3
.end method

.method public setPrameters(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemServiceManager;Landroid/content/Context;)V
    .registers 4
    .param p1, "btt"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "ssm"    # Lcom/android/server/SystemServiceManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 102
    sput-object p1, Lcom/mediatek/server/MtkSystemServerImpl;->BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 103
    iput-object p2, p0, Lcom/mediatek/server/MtkSystemServerImpl;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 104
    iput-object p3, p0, Lcom/mediatek/server/MtkSystemServerImpl;->mSystemContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method public startMtkAlarmManagerService()Z
    .registers 4

    .line 251
    const-string v0, "startMtkAlarmManagerService"

    invoke-static {v0}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 253
    :try_start_5
    const-string v0, "com.mediatek.server.MtkAlarmManagerService"

    invoke-direct {p0, v0}, Lcom/mediatek/server/MtkSystemServerImpl;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 257
    nop

    .line 258
    invoke-static {}, Lcom/mediatek/server/MtkSystemServerImpl;->traceEnd()V

    .line 259
    const/4 v0, 0x1

    return v0

    .line 254
    :catchall_10
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while starting MtkAlarmManagerService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkSystemServerImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v1, 0x0

    return v1
.end method

.method public startMtkBootstrapServices()V
    .registers 3

    .line 116
    const-string v0, "MtkSystemServerImpl"

    const-string v1, "startMtkBootstrapServices"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public startMtkCoreServices()V
    .registers 3

    .line 124
    const-string v0, "MtkSystemServerImpl"

    const-string v1, "startMtkCoreServices "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public startMtkOtherServices()V
    .registers 12

    .line 133
    const-string v0, "com.mediatek.server.MtkConnectivitySupplementalService"

    iget-object v1, p0, Lcom/mediatek/server/MtkSystemServerImpl;->mSystemContext:Landroid/content/Context;

    .line 134
    .local v1, "context":Landroid/content/Context;
    const-string v2, "MtkSystemServerImpl"

    const-string v3, "startOtherMtkService "

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v3, "config.disable_searchmanager"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 137
    .local v3, "disableSearchManager":Z
    const-string v5, "config.disable_noncore"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 140
    .local v5, "disableNonCoreServices":Z
    const-string v6, "ro.vendor.mtk_tb_hdmi"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    .line 145
    .local v6, "enableHdmiServices":Z
    if-nez v5, :cond_53

    if-nez v3, :cond_53

    .line 146
    const-string v8, "StartSearchEngineManagerService"

    invoke-static {v8}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 148
    :try_start_2f
    const-string v8, "search_engine_service"

    new-instance v9, Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {v9, v1}, Lcom/mediatek/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_3a

    .line 152
    goto :goto_53

    .line 150
    :catchall_3a
    move-exception v8

    .line 151
    .local v8, "e":Ljava/lang/Throwable;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StartSearchEngineManagerService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_53
    :goto_53
    :try_start_53
    const-string v8, "com.mediatek.fmradio.FmRadioPackageManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_6f

    .line 169
    const-string v8, "addService FmRadioService"

    invoke-static {v8}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_60} :catch_70

    .line 171
    :try_start_60
    const-string v8, "com.mediatek.fmradioservice.FmRadioService"

    invoke-direct {p0, v8}, Lcom/mediatek/server/MtkSystemServerImpl;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_66

    .line 174
    goto :goto_6c

    .line 172
    :catchall_66
    move-exception v8

    .line 173
    .restart local v8    # "e":Ljava/lang/Throwable;
    :try_start_67
    const-string v9, "starting FmRadioService"

    invoke-direct {p0, v9, v8}, Lcom/mediatek/server/MtkSystemServerImpl;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_6c
    invoke-static {}, Lcom/mediatek/server/MtkSystemServerImpl;->traceEnd()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6f} :catch_70

    .line 180
    :cond_6f
    goto :goto_76

    .line 178
    :catch_70
    move-exception v8

    .line 179
    .local v8, "e":Ljava/lang/Exception;
    const-string v9, "com.mediatek.fmradio.FmRadioPackageManager not found "

    invoke-static {v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_76
    if-eqz v6, :cond_8c

    .line 185
    const-string v8, "StartHdmiLocalService"

    invoke-static {v8}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 187
    :try_start_7d
    const-string v8, "com.mediatek.hdmilocalservice.HdmiLocalService"

    invoke-direct {p0, v8}, Lcom/mediatek/server/MtkSystemServerImpl;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_83

    .line 190
    goto :goto_89

    .line 188
    :catchall_83
    move-exception v8

    .line 189
    .local v8, "e":Ljava/lang/Throwable;
    const-string v9, "starting HdmiLocalService"

    invoke-direct {p0, v9, v8}, Lcom/mediatek/server/MtkSystemServerImpl;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_89
    invoke-static {}, Lcom/mediatek/server/MtkSystemServerImpl;->traceEnd()V

    .line 195
    :cond_8c
    const-string v8, "StartPowerHalMgrService"

    invoke-static {v8}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 197
    :try_start_91
    const-string v8, "com.mediatek.powerhalservice.PowerHalMgrService"

    invoke-direct {p0, v8}, Lcom/mediatek/server/MtkSystemServerImpl;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_97

    .line 200
    goto :goto_9d

    .line 198
    :catchall_97
    move-exception v8

    .line 199
    .restart local v8    # "e":Ljava/lang/Throwable;
    const-string v9, "starting PowerHalMgrService"

    invoke-direct {p0, v9, v8}, Lcom/mediatek/server/MtkSystemServerImpl;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_9d
    invoke-static {}, Lcom/mediatek/server/MtkSystemServerImpl;->traceEnd()V

    .line 208
    iget-object v8, p0, Lcom/mediatek/server/MtkSystemServerImpl;->mSystemContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/mediatek/server/MtkSystemServerImpl;->isWakeupSupport(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_ba

    iget-object v8, p0, Lcom/mediatek/server/MtkSystemServerImpl;->mSystemContext:Landroid/content/Context;

    .line 209
    invoke-direct {p0, v8}, Lcom/mediatek/server/MtkSystemServerImpl;->isTriggerSupport(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b8

    iget-object v8, p0, Lcom/mediatek/server/MtkSystemServerImpl;->mSystemContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/mediatek/server/MtkSystemServerImpl;->isVowPDKSupported(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_ba

    :cond_b8
    move v4, v7

    goto :goto_bb

    :cond_ba
    nop

    .line 211
    .local v4, "isValidVowConfig":Z
    :goto_bb
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "V_W_B_S isValidVowConfig "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 212
    if-eqz v4, :cond_e6

    .line 213
    const-string v7, "addService VoiceWakeupBridgeService"

    invoke-static {v7}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 215
    :try_start_d6
    const-string v7, "com.mediatek.server.vow.VoiceWakeupBridgeService"

    invoke-direct {p0, v7}, Lcom/mediatek/server/MtkSystemServerImpl;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_db
    .catchall {:try_start_d6 .. :try_end_db} :catchall_dc

    .line 218
    goto :goto_e2

    .line 216
    :catchall_dc
    move-exception v7

    .line 217
    .local v7, "e":Ljava/lang/Throwable;
    const-string v8, "starting VoiceWakeupBridgeService"

    invoke-direct {p0, v8, v7}, Lcom/mediatek/server/MtkSystemServerImpl;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .end local v7    # "e":Ljava/lang/Throwable;
    :goto_e2
    invoke-static {}, Lcom/mediatek/server/MtkSystemServerImpl;->traceEnd()V

    goto :goto_eb

    .line 221
    :cond_e6
    const-string v7, "not addService VoiceWakeupBridgeService"

    invoke-static {v7}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 227
    :goto_eb
    :try_start_eb
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_104

    .line 228
    const-string v7, "StartConnectivitySupplementalService"

    invoke-static {v7}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f6} :catch_10a

    .line 230
    :try_start_f6
    invoke-direct {p0, v0}, Lcom/mediatek/server/MtkSystemServerImpl;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_fa

    .line 233
    goto :goto_100

    .line 231
    :catchall_fa
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_fb
    const-string v7, "Failed to start ConnectivitySupplementalService"

    invoke-direct {p0, v7, v0}, Lcom/mediatek/server/MtkSystemServerImpl;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_100
    invoke-static {}, Lcom/mediatek/server/MtkSystemServerImpl;->traceEnd()V

    goto :goto_109

    .line 236
    :cond_104
    const-string v0, "com.mediatek.server.MtkConnectivitySupplementalServiceis null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_109} :catch_10a

    .line 240
    :goto_109
    goto :goto_110

    .line 238
    :catch_10a
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "com.mediatek.server.MtkConnectivitySupplementalServicenot found"

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_110
    return-void
.end method

.method public startMtkStorageManagerService()Z
    .registers 7

    .line 268
    nop

    .line 269
    const-string v0, "ro.vendor.mtk_privacy_protection_lock"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 271
    .local v0, "mIsPrivacyProtectionLockSupport":Z
    const/4 v1, 0x0

    const-string v2, "MtkSystemServerImpl"

    if-nez v0, :cond_18

    .line 272
    const-string v3, "PPL not supported, retruning, will start AOSP StorageManagerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v1

    .line 275
    :cond_18
    const-string v3, "StartMtkStorageManagerService"

    invoke-static {v3}, Lcom/mediatek/server/MtkSystemServerImpl;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 277
    :try_start_1d
    const-string v3, "com.mediatek.server.MtkStorageManagerService$MtkStorageManagerServiceLifecycle"

    invoke-direct {p0, v3}, Lcom/mediatek/server/MtkSystemServerImpl;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_28

    .line 281
    nop

    .line 282
    invoke-static {}, Lcom/mediatek/server/MtkSystemServerImpl;->traceEnd()V

    .line 283
    const/4 v1, 0x1

    return v1

    .line 278
    :catchall_28
    move-exception v3

    .line 279
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while starting MtkStorageManagerService"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v1
.end method

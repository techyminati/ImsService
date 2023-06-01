.class public Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
.super Ljava/lang/Object;
.source "PowerHalWifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;
    }
.end annotation


# static fields
.field private static final APP_EVENT_BUNDLE_KEY_STATE:Ljava/lang/String; = "STATE"

.field private static final APP_EVENT_DUPLICATE_PACKET_PREDICTION_BUSY:I = -0x1

.field private static final APP_EVENT_DUPLICATE_PACKET_PREDICTION_OFF:I = 0x0

.field private static final APP_EVENT_DUPLICATE_PACKET_PREDICTION_ON:I = 0x1

.field private static final APP_EVENT_WIFI_UNAVAILABLE:I = -0x1

.field private static final CMD_CALLBACK_APP_EVENT:I = 0x0

.field private static final DRIVER_EVENT_TX_DUP_CERT_CHANGE:I = 0x66

.field private static final DRIVER_EVENT_TX_DUP_OFF:I = 0x64

.field private static final DRIVER_EVENT_TX_DUP_ON:I = 0x65

.field private static final DUPLICATE_PACKET_PREDICTION_BUSY_TIMEOUT:I = 0x5

.field private static final KEY:Ljava/lang/String; = "code"

.field private static final UEVENT_PATH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/wlan"

.field private static mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

.field private static mUEventObserver:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;

.field private static sInstance:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDppPowerHdl:I

.field private mDppStarted:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConnected:Z

.field private mWifiEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->sInstance:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    .line 96
    sput-object v0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "PowerHalWifiMonitor"

    iput-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->TAG:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppPowerHdl:I

    .line 95
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    .line 396
    new-instance v0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;

    invoke-direct {v0, p0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;-><init>(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;)V

    iput-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object p1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->getInstance()Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    move-result-object v0

    sput-object v0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 102
    invoke-direct {p0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->registerForBroadcast()V

    .line 105
    new-instance v0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;-><init>(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;)V

    sput-object v0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mUEventObserver:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;

    .line 107
    invoke-direct {p0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->initHandlerThread()V

    .line 110
    sput-object p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->sInstance:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->ueventCallback(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->onWifiStateChange(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;Landroid/net/NetworkInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->onWifiConnectionStateChange(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->postStateChange(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->callbackOnStateChanged(I)V

    return-void
.end method

.method private callbackOnStateChanged(I)V
    .registers 6
    .param p1, "event"    # I

    .line 306
    iget-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 309
    .local v1, "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callbackOnStateChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logOut(Ljava/lang/String;)V

    .line 311
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "STATE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_48

    .line 313
    :goto_2f
    if-lez v1, :cond_41

    .line 314
    add-int/lit8 v1, v1, -0x1

    .line 316
    :try_start_33
    iget-object v3, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/IRemoteCallback;

    invoke-interface {v3, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3e} :catch_3f
    .catchall {:try_start_33 .. :try_end_3e} :catchall_48

    goto :goto_40

    .line 317
    :catch_3f
    move-exception v3

    .line 319
    :goto_40
    goto :goto_2f

    .line 321
    :cond_41
    :try_start_41
    iget-object v3, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 322
    .end local v1    # "i":I
    .end local v2    # "bundle":Landroid/os/Bundle;
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private checkIfDuplicatePacketPredictionBusy(I)Z
    .registers 10
    .param p1, "timeEvent"    # I

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 427
    .local v0, "nowMs":J
    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    mul-long/2addr v4, v2

    rem-long v2, v0, v2

    add-long/2addr v4, v2

    long-to-int v2, v4

    .line 429
    .local v2, "now":I
    sub-int v3, v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-le v3, v5, :cond_33

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfDuplicatePacketPredictionBusy(), now: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", drv:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    .line 433
    return v4

    .line 436
    :cond_33
    return v4
.end method

.method public static getInstance()Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
    .registers 1

    .line 114
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->sInstance:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    return-object v0
.end method

.method private initHandlerThread()V
    .registers 3

    .line 498
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PowerHalWifiMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 499
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 502
    new-instance v0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$2;

    iget-object v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$2;-><init>(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mHandler:Landroid/os/Handler;

    .line 526
    return-void
.end method

.method private logOut(Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/String;

    .line 533
    const-string v0, "NPP"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/String;

    .line 529
    const-string v0, "PowerHalWifiMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method private onWifiConnectionStateChange(Landroid/net/NetworkInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .line 369
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 371
    .local v0, "wifiConnected":Z
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiConnected:Z

    if-ne v1, v0, :cond_9

    .line 372
    return-void

    .line 375
    :cond_9
    iput-boolean v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiConnected:Z

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiConnectionStateChange(), mWifiConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDppStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    .line 380
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiConnected:Z

    if-nez v1, :cond_38

    .line 382
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    if-eqz v1, :cond_3f

    .line 383
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->postStateChange(I)V

    goto :goto_3f

    .line 388
    :cond_38
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    if-eqz v1, :cond_3f

    .line 391
    invoke-direct {p0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->reStartWifiDriver()V

    .line 394
    :cond_3f
    :goto_3f
    return-void
.end method

.method private onWifiStateChange(I)V
    .registers 5
    .param p1, "wifiState"    # I

    .line 344
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 345
    .local v0, "wifiEnable":Z
    :goto_6
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiEnabled:Z

    if-ne v1, v0, :cond_b

    .line 346
    return-void

    .line 349
    :cond_b
    iput-boolean v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiEnabled:Z

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiStateChange(), mWifiEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDppStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    .line 354
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiEnabled:Z

    if-eqz v1, :cond_39

    .line 355
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    if-eqz v1, :cond_41

    .line 357
    invoke-direct {p0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->reStartWifiDriver()V

    goto :goto_41

    .line 361
    :cond_39
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    if-eqz v1, :cond_41

    .line 362
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->postStateChange(I)V

    .line 366
    :cond_41
    :goto_41
    return-void
.end method

.method private postStateChange(I)V
    .registers 4
    .param p1, "event"    # I

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postStateChange(), event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    return-void
.end method

.method private reStartWifiDriver()V
    .registers 5

    .line 326
    const-string v0, "reStartWifiDriver()"

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    .line 327
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    .line 334
    .local v0, "rscList":[I
    iget v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppPowerHdl:I

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 336
    sget-object v3, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v3, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->perfLockRelease(I)V

    .line 337
    iput v2, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppPowerHdl:I

    .line 339
    :cond_17
    sget-object v1, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    iget v3, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppPowerHdl:I

    invoke-virtual {v1, v3, v2, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->perfLockAcquire(II[I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppPowerHdl:I

    .line 340
    return-void

    :array_22
    .array-data 4
        0x2804100
        0x1
        0x3400000
        0x2
    .end array-data
.end method

.method private registerForBroadcast()V
    .registers 4

    .line 275
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 277
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v1, "com.mediatek.npp.ev.a"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v1, "com.mediatek.npp.ev.b"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    return-void
.end method

.method private resetDuplicatePacketPrediction()V
    .registers 4

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetDuplicatePacketPrediction(), mDppStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    .line 293
    const-string v0, "DELETE_ALL"

    .line 294
    .local v0, "linkInfo":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->setSysInfo(ILjava/lang/String;)I

    .line 295
    return-void
.end method

.method private ueventCallback(I)V
    .registers 7
    .param p1, "event"    # I

    .line 146
    const v0, 0x186a0

    div-int v1, p1, v0

    .line 149
    .local v1, "dupEvent":I
    rem-int v0, p1, v0

    .line 151
    .local v0, "timeEvent":I
    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->checkIfDuplicatePacketPredictionBusy(I)Z

    move-result v2

    .line 152
    .local v2, "busy":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDppStarted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mWifiConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", busy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PowerHalWifiMonitor"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_68

    goto :goto_67

    .line 181
    :pswitch_3a
    sget-object v4, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v4, v3}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->getRildCap(I)Z

    move-result v3

    if-nez v3, :cond_67

    .line 183
    invoke-direct {p0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->resetDuplicatePacketPrediction()V

    goto :goto_67

    .line 169
    :pswitch_46
    iget-boolean v4, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    if-eqz v4, :cond_67

    iget-boolean v4, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiConnected:Z

    if-eqz v4, :cond_67

    .line 172
    nop

    .line 173
    if-eqz v2, :cond_52

    .line 174
    goto :goto_53

    .line 175
    :cond_52
    const/4 v3, 0x1

    .line 172
    :goto_53
    invoke-direct {p0, v3}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->callbackOnStateChanged(I)V

    goto :goto_67

    .line 157
    :pswitch_57
    iget-boolean v4, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    if-eqz v4, :cond_67

    iget-boolean v4, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiConnected:Z

    if-eqz v4, :cond_67

    .line 160
    nop

    .line 161
    if-eqz v2, :cond_63

    .line 162
    goto :goto_64

    .line 163
    :cond_63
    const/4 v3, 0x0

    .line 160
    :goto_64
    invoke-direct {p0, v3}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->callbackOnStateChanged(I)V

    .line 193
    :cond_67
    :goto_67
    return-void

    :pswitch_data_68
    .packed-switch 0x64
        :pswitch_57
        :pswitch_46
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method public isDupPacketPredictionStarted()Z
    .registers 3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDupPacketPredictionStarted() mDppStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    return v0
.end method

.method public registerDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 5
    .param p1, "listener"    # Landroid/os/IRemoteCallback;

    .line 251
    if-eqz p1, :cond_33

    .line 252
    iget-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 253
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDuplicatePacketPredictionEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 255
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_30

    .line 256
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mUEventObserver:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/misc/wlan"

    invoke-virtual {v0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x1

    return v0

    .line 255
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1

    .line 259
    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method public startDuplicatePacketPrediction()V
    .registers 5

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDuplicatePacketPrediction() mDppStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWifiEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    .line 205
    .local v0, "rscList":[I
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    if-nez v1, :cond_53

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    .line 209
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiEnabled:Z

    if-eqz v1, :cond_47

    .line 212
    iget v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppPowerHdl:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    .line 213
    sget-object v3, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v3, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->perfLockRelease(I)V

    .line 214
    iput v2, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppPowerHdl:I

    .line 216
    :cond_3d
    sget-object v1, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    iget v3, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppPowerHdl:I

    invoke-virtual {v1, v3, v2, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->perfLockAcquire(II[I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppPowerHdl:I

    .line 220
    :cond_47
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiEnabled:Z

    if-eqz v1, :cond_4f

    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiConnected:Z

    if-nez v1, :cond_53

    .line 221
    :cond_4f
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->postStateChange(I)V

    .line 225
    :cond_53
    return-void

    :array_54
    .array-data 4
        0x2804100
        0x1
        0x3400000
        0x2
    .end array-data
.end method

.method public stopDuplicatePacketPrediction()V
    .registers 4

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDuplicatePacketPrediction() mDppStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWifiEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    .line 231
    iget-boolean v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    if-eqz v0, :cond_34

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    .line 234
    iget-boolean v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiEnabled:Z

    if-eqz v1, :cond_34

    .line 237
    sget-object v1, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    iget v2, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppPowerHdl:I

    invoke-virtual {v1, v2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->perfLockRelease(I)V

    .line 238
    iput v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppPowerHdl:I

    .line 241
    :cond_34
    return-void
.end method

.method public supplicantHalCallback(I)V
    .registers 7
    .param p1, "event"    # I

    .line 448
    const v0, 0x186a0

    div-int v1, p1, v0

    .line 451
    .local v1, "dupEvent":I
    rem-int v0, p1, v0

    .line 453
    .local v0, "timeEvent":I
    invoke-direct {p0, v0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->checkIfDuplicatePacketPredictionBusy(I)Z

    move-result v2

    .line 455
    .local v2, "busy":Z
    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_3e

    goto :goto_3d

    .line 482
    :pswitch_10
    sget-object v4, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v4, v3}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->getRildCap(I)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 484
    invoke-direct {p0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->resetDuplicatePacketPrediction()V

    goto :goto_3d

    .line 470
    :pswitch_1c
    iget-boolean v4, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    if-eqz v4, :cond_3d

    iget-boolean v4, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiConnected:Z

    if-eqz v4, :cond_3d

    .line 473
    nop

    .line 474
    if-eqz v2, :cond_28

    .line 475
    goto :goto_29

    .line 476
    :cond_28
    const/4 v3, 0x1

    .line 473
    :goto_29
    invoke-direct {p0, v3}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->callbackOnStateChanged(I)V

    goto :goto_3d

    .line 458
    :pswitch_2d
    iget-boolean v4, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mDppStarted:Z

    if-eqz v4, :cond_3d

    iget-boolean v4, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mWifiConnected:Z

    if-eqz v4, :cond_3d

    .line 461
    nop

    .line 462
    if-eqz v2, :cond_39

    .line 463
    goto :goto_3a

    .line 464
    :cond_39
    const/4 v3, 0x0

    .line 461
    :goto_3a
    invoke-direct {p0, v3}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->callbackOnStateChanged(I)V

    .line 494
    :cond_3d
    :goto_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0x64
        :pswitch_2d
        :pswitch_1c
        :pswitch_10
    .end packed-switch
.end method

.method public unregisterDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 5
    .param p1, "listener"    # Landroid/os/IRemoteCallback;

    .line 262
    if-eqz p1, :cond_31

    .line 263
    iget-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 264
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterDuplicatePacketPredictionEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-direct {p0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 267
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2e

    .line 268
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->mUEventObserver:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;

    invoke-virtual {v0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;->stopObserving()V

    .line 269
    const/4 v0, 0x1

    return v0

    .line 267
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1

    .line 271
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

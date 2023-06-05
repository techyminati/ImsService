.class public Lcom/android/ims/ImsManager$Connector;
.super Landroid/os/Handler;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsManager$Connector$RetryTimeout;,
        Lcom/android/ims/ImsManager$Connector$Listener;
    }
.end annotation


# static fields
.field private static final CEILING_SERVICE_RETRY_COUNT:I = 0x6

.field private static final IMS_RETRY_STARTING_TIMEOUT_MS:I = 0x1f4


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mGetServiceRunnable:Ljava/lang/Runnable;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private final mListener:Lcom/android/ims/ImsManager$Connector$Listener;

.field private final mLock:Ljava/lang/Object;

.field private mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

.field protected final mPhoneId:I

.field private mRetryCount:I

.field public mRetryTimeout:Lcom/android/ims/ImsManager$Connector$RetryTimeout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/ims/ImsManager$Connector$Listener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsManager$Connector$Listener;

    .line 298
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 205
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$N5r1SvOgM0jfHDwKkcQbyw_uTP0;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$N5r1SvOgM0jfHDwKkcQbyw_uTP0;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    .line 231
    new-instance v0, Lcom/android/ims/ImsManager$Connector$1;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$Connector$1;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    .line 282
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    .line 287
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$yM9scWJWjDp_h0yrkCgrjFZH5oI;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$yM9scWJWjDp_h0yrkCgrjFZH5oI;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mRetryTimeout:Lcom/android/ims/ImsManager$Connector$RetryTimeout;

    .line 299
    iput-object p1, p0, Lcom/android/ims/ImsManager$Connector;->mContext:Landroid/content/Context;

    .line 300
    iput p2, p0, Lcom/android/ims/ImsManager$Connector;->mPhoneId:I

    .line 301
    iput-object p3, p0, Lcom/android/ims/ImsManager$Connector;->mListener:Lcom/android/ims/ImsManager$Connector$Listener;

    .line 302
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mExecutor:Ljava/util/concurrent/Executor;

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/ims/ImsManager$Connector$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsManager$Connector$Listener;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 306
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 205
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$N5r1SvOgM0jfHDwKkcQbyw_uTP0;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$N5r1SvOgM0jfHDwKkcQbyw_uTP0;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    .line 231
    new-instance v0, Lcom/android/ims/ImsManager$Connector$1;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$Connector$1;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    .line 282
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    .line 287
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$yM9scWJWjDp_h0yrkCgrjFZH5oI;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$yM9scWJWjDp_h0yrkCgrjFZH5oI;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mRetryTimeout:Lcom/android/ims/ImsManager$Connector$RetryTimeout;

    .line 307
    iput-object p1, p0, Lcom/android/ims/ImsManager$Connector;->mContext:Landroid/content/Context;

    .line 308
    iput p2, p0, Lcom/android/ims/ImsManager$Connector;->mPhoneId:I

    .line 309
    iput-object p3, p0, Lcom/android/ims/ImsManager$Connector;->mListener:Lcom/android/ims/ImsManager$Connector$Listener;

    .line 310
    iput-object p4, p0, Lcom/android/ims/ImsManager$Connector;->mExecutor:Ljava/util/concurrent/Executor;

    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/android/ims/ImsManager$Connector;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager$Connector;

    .line 197
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ims/ImsManager$Connector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager$Connector;

    .line 197
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->notifyNotReady()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/ims/ImsManager$Connector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager$Connector;

    .line 197
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->retryGetImsService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/ims/ImsManager$Connector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager$Connector;

    .line 197
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/ims/ImsManager$Connector;)Lcom/android/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager$Connector;

    .line 197
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/ims/ImsManager$Connector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager$Connector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->notifyReady()V

    return-void
.end method

.method private getImsService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/ImsManager$Connector;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    .line 368
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->addNotifyStatusChangedCallbackIfAvailable(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V

    .line 369
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    invoke-interface {v0}, Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;->notifyStateChanged()V

    .line 374
    return-void

    .line 369
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyNotReady()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mListener:Lcom/android/ims/ImsManager$Connector$Listener;

    invoke-interface {v0}, Lcom/android/ims/ImsManager$Connector$Listener;->connectionUnavailable()V

    .line 396
    return-void
.end method

.method private notifyReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    .line 380
    .local v1, "manager":Lcom/android/ims/ImsManager;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 382
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mListener:Lcom/android/ims/ImsManager$Connector$Listener;

    invoke-interface {v0, v1}, Lcom/android/ims/ImsManager$Connector$Listener;->connectionReady(Lcom/android/ims/ImsManager;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 387
    nop

    .line 389
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    const/4 v2, 0x0

    :try_start_2
    iput v2, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    .line 391
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connector: notifyReady exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    throw v0

    .line 380
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v1    # "manager":Lcom/android/ims/ImsManager;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private retryGetImsService()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->removeNotifyStatusChangedCallback(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V

    .line 353
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    .line 357
    :cond_0
    const-string v1, "Connector: Retrying getting ImsService..."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->access$700(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager$Connector;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/ims/ImsManager$Connector;->mRetryTimeout:Lcom/android/ims/ImsManager$Connector$RetryTimeout;

    invoke-interface {v2}, Lcom/android/ims/ImsManager$Connector$RetryTimeout;->get()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/ims/ImsManager$Connector;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public connect()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    .line 329
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager$Connector;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager$Connector;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->removeNotifyStatusChangedCallback(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V

    .line 342
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->notifyNotReady()V

    .line 344
    return-void

    .line 342
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$new$0$ImsManager$Connector()V
    .locals 1

    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->getImsService()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->retryGetImsService()V

    .line 211
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$1$ImsManager$Connector()I
    .locals 5

    .line 289
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    mul-int/lit16 v1, v1, 0x1f4

    .line 291
    .local v1, "timeout":I
    iget v3, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    const/4 v4, 0x6

    if-gt v3, v4, :cond_0

    .line 292
    iget v3, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    .line 294
    :cond_0
    monitor-exit v0

    return v1

    .line 295
    .end local v1    # "timeout":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

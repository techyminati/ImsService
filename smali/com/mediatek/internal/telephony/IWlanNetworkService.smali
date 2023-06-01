.class public Lcom/mediatek/internal/telephony/IWlanNetworkService;
.super Landroid/telephony/NetworkService;
.source "IWlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;,
        Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;,
        Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;
    }
.end annotation


# static fields
.field public static final MWI_SERVICE_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IWlanNetworkService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mDeathRecipient:Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;

.field private final mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mProxy:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

.field private sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 93
    invoke-direct {p0}, Landroid/telephony/NetworkService;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 87
    new-instance v1, Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;Lcom/mediatek/internal/telephony/IWlanNetworkService$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mDeathRecipient:Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;

    .line 88
    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mProxy:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    .line 95
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->bindAndRegisterWifiOffloadService()V

    .line 96
    const-string v0, "IWlanNetworkService init."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/internal/telephony/IWlanNetworkService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 78
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/wfo/IWifiOffloadService;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/internal/telephony/IWlanNetworkService;Lcom/mediatek/wfo/IWifiOffloadService;)Lcom/mediatek/wfo/IWifiOffloadService;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # Lcom/mediatek/wfo/IWifiOffloadService;

    .line 78
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->bindAndRegisterWifiOffloadService()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->checkAndBindWifiOffloadService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 78
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->createWifiOffloadListenerProxy()Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/IWlanNetworkService;IIZ)Ljava/util/ArrayList;
    .registers 5
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->getAvailableServices(IIZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/IWlanNetworkService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->notifyWfcStateChanged(II)V

    return-void
.end method

.method private bindAndRegisterWifiOffloadService()V
    .registers 3

    .line 379
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 410
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 411
    return-void
.end method

.method private checkAndBindWifiOffloadService()V
    .registers 4

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 338
    const-string v0, "mwis"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mBinder:Landroid/os/IBinder;

    .line 340
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_2a

    .line 341
    const-string v0, "linkToDeath"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mBinder:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mDeathRecipient:Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 343
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/mediatek/wfo/IMwiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IMwiService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/wfo/IMwiService;->getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    goto :goto_2f

    .line 345
    :cond_2a
    const-string v0, "No MwiService exist"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_30

    .line 349
    :goto_2f
    goto :goto_45

    .line 347
    :catch_30
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t get MwiService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V

    .line 351
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndBindWifiOffloadService: sWifiOffloadService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method private createWifiOffloadListenerProxy()Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mProxy:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    if-nez v0, :cond_11

    .line 296
    const-string v0, "create WifiOffloadListenerProxy"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 297
    new-instance v0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;Lcom/mediatek/internal/telephony/IWlanNetworkService$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mProxy:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    .line 299
    :cond_11
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mProxy:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    return-object v0
.end method

.method private getAvailableServices(IIZ)Ljava/util/ArrayList;
    .registers 9
    .param p1, "regState"    # I
    .param p2, "domain"    # I
    .param p3, "emergencyOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 239
    const-string v0, "getAvailableServices."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    .line 245
    .local v0, "availableServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz p3, :cond_1e

    .line 246
    new-instance v4, Ljava/util/ArrayList;

    new-array v3, v3, [Ljava/lang/Integer;

    .line 247
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    goto :goto_37

    .line 248
    :cond_1e
    if-eq p1, v2, :cond_22

    if-ne p1, v3, :cond_37

    .line 250
    :cond_22
    const/4 v2, 0x2

    if-ne p2, v2, :cond_37

    .line 251
    new-instance v4, Ljava/util/ArrayList;

    new-array v3, v3, [Ljava/lang/Integer;

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 257
    :cond_37
    :goto_37
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 275
    const-string v0, "IWlanNetworkService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 283
    const-string v0, "IWlanNetworkService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 279
    const-string v0, "IWlanNetworkService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method private notifyWfcStateChanged(II)V
    .registers 6
    .param p1, "simId"    # I
    .param p2, "state"    # I

    .line 317
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IWlanNetworkServiceProvider id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " did not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 319
    return-void

    .line 324
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyWfcStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 329
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 330
    return-void
.end method


# virtual methods
.method public onCreateNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;
    .registers 5
    .param p1, "slotIndex"    # I

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IWlan network service created for slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V

    .line 263
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to Iwlan network service with invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_30
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService;->mIWlanNetSrvProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkService$NetworkServiceProvider;

    return-object v0
.end method

.class public Lcom/mediatek/ims/internal/MtkImsManagerEx;
.super Ljava/lang/Object;
.source "MtkImsManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/MtkImsManagerEx$MtkImsServiceDeathRecipient;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final MTK_IMS_SERVICE:Ljava/lang/String; = "mtkIms"

.field private static final TAG:Ljava/lang/String; = "MtkImsManagerEx"

.field private static sInstance:Lcom/mediatek/ims/internal/MtkImsManagerEx;


# instance fields
.field private mMtkDeathRecipient:Lcom/mediatek/ims/internal/MtkImsManagerEx$MtkImsServiceDeathRecipient;

.field private mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/mediatek/ims/internal/MtkImsManagerEx;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/MtkImsManagerEx;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->sInstance:Lcom/mediatek/ims/internal/MtkImsManagerEx;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    .line 65
    new-instance v1, Lcom/mediatek/ims/internal/MtkImsManagerEx$MtkImsServiceDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/ims/internal/MtkImsManagerEx$MtkImsServiceDeathRecipient;-><init>(Lcom/mediatek/ims/internal/MtkImsManagerEx;Lcom/mediatek/ims/internal/MtkImsManagerEx$1;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->mMtkDeathRecipient:Lcom/mediatek/ims/internal/MtkImsManagerEx$MtkImsServiceDeathRecipient;

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->bindMtkImsService(Z)V

    .line 69
    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/ims/internal/MtkImsManagerEx;Lcom/mediatek/ims/internal/IMtkImsService;)Lcom/mediatek/ims/internal/IMtkImsService;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsManagerEx;
    .param p1, "x1"    # Lcom/mediatek/ims/internal/IMtkImsService;

    .line 53
    iput-object p1, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    return-object p1
.end method

.method private bindMtkImsService(Z)V
    .registers 5
    .param p1, "checkService"    # Z

    .line 106
    if-eqz p1, :cond_12

    .line 107
    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->getMtkImsServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 109
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_12

    .line 110
    const-string v1, "bindMtkImsService binder is null"

    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->loge(Ljava/lang/String;)V

    .line 111
    return-void

    .line 115
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_12
    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->getMtkImsServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 117
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_24

    .line 119
    :try_start_1c
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->mMtkDeathRecipient:Lcom/mediatek/ims/internal/MtkImsManagerEx$MtkImsServiceDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    .line 122
    goto :goto_24

    .line 120
    :catch_23
    move-exception v1

    .line 125
    :cond_24
    :goto_24
    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMtkImsService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->log(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private checkAndThrowExceptionIfServiceUnavailable()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    if-nez v0, :cond_17

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->bindMtkImsService(Z)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v0, :cond_d

    goto :goto_17

    .line 92
    :cond_d
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x6a

    const-string v2, "MtkImsService is unavailable"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 96
    :cond_17
    :goto_17
    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/internal/MtkImsManagerEx;
    .registers 1

    .line 80
    sget-object v0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->sInstance:Lcom/mediatek/ims/internal/MtkImsManagerEx;

    return-object v0
.end method

.method private static getMtkImsServiceName()Ljava/lang/String;
    .registers 1

    .line 99
    const-string v0, "mtkIms"

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 130
    const-string v0, "MtkImsManagerEx"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 138
    const-string v0, "MtkImsManagerEx"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 142
    const-string v0, "MtkImsManagerEx"

    invoke-static {v0, p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 134
    const-string v0, "MtkImsManagerEx"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method


# virtual methods
.method public getCurrentCallCount(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "callCount":I
    invoke-direct {p0}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 193
    :try_start_4
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->getCurrentCallCount(I)I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_29

    move v0, v1

    .line 197
    nop

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentCallCount, phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->log(Ljava/lang/String;)V

    .line 199
    return v0

    .line 194
    :catch_29
    move-exception v1

    .line 195
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    const-string v4, "getCurrentCallCount()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getImsState(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "imsState":I
    invoke-direct {p0}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 174
    :try_start_4
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->getImsState(I)I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_29

    move v0, v1

    .line 177
    nop

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->log(Ljava/lang/String;)V

    .line 179
    return v0

    .line 175
    :catch_29
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    const-string v4, "getImsState()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.class public Lcom/mediatek/internal/telephony/ImsSwitchController;
.super Landroid/os/Handler;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;,
        Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;
    }
.end annotation


# static fields
.field private static final BIND_IMS_SERVICE_DELAY_IN_MILLIS:I = 0x7d0

.field static final LOG_TAG:Ljava/lang/String; = "ImsSwitchController"

.field private static mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;


# instance fields
.field private mBindImsServiceRunnable:Ljava/lang/Runnable;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

.field private mPhoneCount:I

.field private mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    new-instance v0, Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;Lcom/mediatek/internal/telephony/ImsSwitchController$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDeathRecipient:Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

    .line 157
    new-instance v0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$1;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mBindImsServiceRunnable:Ljava/lang/Runnable;

    .line 69
    const-string v0, "Initialize ImsSwitchController"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 72
    iput p2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mPhoneCount:I

    .line 74
    const-string v0, "persist.vendor.ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 75
    const-string v0, "ro.vendor.mtk_tc1_feature"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 76
    new-instance v0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    .line 77
    const-string v1, "ImsSwitchController"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/RadioManager;->registerForRadioPowerChange(Ljava/lang/String;Lcom/mediatek/internal/telephony/IRadioPower;)V

    .line 78
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    if-nez v0, :cond_4b

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)Z

    .line 82
    :cond_4b
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 53
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lcom/mediatek/ims/internal/IMtkImsService;
    .registers 1

    .line 53
    sget-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/internal/IMtkImsService;)Lcom/mediatek/ims/internal/IMtkImsService;
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/IMtkImsService;

    .line 53
    sput-object p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ImsSwitchController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 53
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mBindImsServiceRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 53
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAndBindImsService(I)Z
    .registers 5
    .param p1, "phoneId"    # I

    .line 128
    const-string v0, "mtkIms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 129
    .local v0, "b":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 131
    :try_start_9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDeathRecipient:Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_2d

    .line 134
    nop

    .line 138
    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndBindImsService: mMtkImsService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x1

    return v1

    .line 132
    :catch_2d
    move-exception v2

    .line 133
    .local v2, "e":Landroid/os/RemoteException;
    return v1

    .line 136
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2f
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 185
    const-string v0, "ImsSwitchController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

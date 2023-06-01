.class public Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;
.super Lcom/mediatek/internal/telephony/IMtkSub$Stub;
.source "MtkSubscriptionControllerEx.java"


# static fields
.field private static final DBG:Z = true

.field private static final ENGDEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MtkSubscriptionControllerEx"

.field private static sInstance:Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;->ENGDEBUG:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;->sInstance:Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "isubstub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "MtkSubscriptionControllerEx"

    if-nez v1, :cond_26

    .line 71
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MtkSubscriptionControllerEx] init by Context, this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_26
    const-string v0, "[MtkSubscriptionControllerEx] init by Context"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method protected static MtkInitStub(Landroid/content/Context;)V
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .line 81
    const-class v0, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;

    monitor-enter v0

    .line 82
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;->sInstance:Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;

    if-nez v1, :cond_27

    .line 83
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;->sInstance:Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;

    .line 84
    const-string v1, "MtkSubscriptionControllerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MtkSubscriptionControllerEx] sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;->sInstance:Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 86
    :cond_27
    const-string v1, "MtkSubscriptionControllerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;->sInstance:Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_3f
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method


# virtual methods
.method public getSubIdUsingPhoneId(I)I
    .registers 3
    .param p1, "phoneId"    # I

    .line 132
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "callingFeatureId"    # Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v0

    .line 104
    return-object v0
.end method

.method public getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public setDefaultDataSubIdWithoutCapabilitySwitch(I)V
    .registers 3
    .param p1, "subId"    # I

    .line 153
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 155
    return-void
.end method

.method public setDefaultFallbackSubId(II)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "subscriptionType"    # I

    .line 142
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultFallbackSubId(II)V

    .line 144
    return-void
.end method

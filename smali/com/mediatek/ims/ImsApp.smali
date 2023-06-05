.class public Lcom/mediatek/ims/ImsApp;
.super Landroid/app/Application;
.source "ImsApp.java"


# static fields
.field private static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field private static final TAG:Ljava/lang/String; = "ImsApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .line 60
    const-string v0, "persist.vendor.ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ImsApp"

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "IMS not support, do not init ImsService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const-string v0, "ImsApp onCreate begin"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    .line 71
    .local v0, "imsService":Lcom/mediatek/ims/ImsService;
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setContextAndInitRefVTP(Landroid/content/Context;)V

    .line 73
    new-instance v2, Lcom/mediatek/ims/MtkImsService;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ims/MtkImsService;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsService;)V

    .line 75
    .local v2, "mtkImsService":Lcom/mediatek/ims/MtkImsService;
    :try_start_0
    const-string v3, "mtkIms"

    invoke-virtual {v2}, Lcom/mediatek/ims/MtkImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v3

    .line 78
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "Tried registering mtkIms system service, but failed. Nevermind."

    invoke-static {v1, v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    const-string v3, "ImsApp onCreate end"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.mediatek.ims.MTK_IMS_SERVICE_UP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    .end local v0    # "imsService":Lcom/mediatek/ims/ImsService;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mtkImsService":Lcom/mediatek/ims/MtkImsService;
    :cond_1
    return-void
.end method

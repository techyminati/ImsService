.class public Lcom/mediatek/location/MtkLocationExt$LocationManagerService;
.super Ljava/lang/Object;
.source "MtkLocationExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/MtkLocationExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationManagerService"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCtaManager:Lcom/mediatek/cta/CtaManager;

.field private final mHandler:Landroid/os/Handler;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const-string v0, "MtkLocationExt"

    const-string v1, "MtkLocationExt LocationManagerService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iput-object p1, p0, Lcom/mediatek/location/MtkLocationExt$LocationManagerService;->mContext:Landroid/content/Context;

    .line 337
    iput-object p2, p0, Lcom/mediatek/location/MtkLocationExt$LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 338
    invoke-static {}, Lcom/mediatek/cta/CtaManagerFactory;->getInstance()Lcom/mediatek/cta/CtaManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/cta/CtaManagerFactory;->makeCtaManager()Lcom/mediatek/cta/CtaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/MtkLocationExt$LocationManagerService;->mCtaManager:Lcom/mediatek/cta/CtaManager;

    .line 339
    nop

    .line 340
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/location/MtkLocationExt$LocationManagerService;->mLocationManager:Landroid/location/LocationManager;

    .line 341
    return-void
.end method


# virtual methods
.method public isCtaFeatureSupport()Z
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$LocationManagerService;->mCtaManager:Lcom/mediatek/cta/CtaManager;

    invoke-virtual {v0}, Lcom/mediatek/cta/CtaManager;->isCtaSupported()Z

    move-result v0

    return v0
.end method

.method public printCtaLog(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "functionName"    # Ljava/lang/String;
    .param p4, "strActionType"    # Ljava/lang/String;
    .param p5, "parameter"    # Ljava/lang/String;

    .line 362
    sget-object v0, Lcom/mediatek/cta/CtaManager$ActionType;->USE_LOCATION:Lcom/mediatek/cta/CtaManager$ActionType;

    .line 363
    .local v0, "actionType":Lcom/mediatek/cta/CtaManager$ActionType;
    const-string v1, "USE_LOCATION"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 364
    sget-object v0, Lcom/mediatek/cta/CtaManager$ActionType;->USE_LOCATION:Lcom/mediatek/cta/CtaManager$ActionType;

    goto :goto_17

    .line 365
    :cond_d
    const-string v1, "READ_LOCATION_INFO"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 366
    sget-object v0, Lcom/mediatek/cta/CtaManager$ActionType;->READ_LOCATION_INFO:Lcom/mediatek/cta/CtaManager$ActionType;

    .line 376
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$LocationManagerService;->mCtaManager:Lcom/mediatek/cta/CtaManager;

    sget-object v4, Lcom/mediatek/cta/CtaManager$KeywordType;->LOCATION:Lcom/mediatek/cta/CtaManager$KeywordType;

    move v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/cta/CtaManager;->printCtaInfor(IILcom/mediatek/cta/CtaManager$KeywordType;Ljava/lang/String;Lcom/mediatek/cta/CtaManager$ActionType;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public showNlpNotInstalledToast(Ljava/lang/String;)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;

    .line 382
    const-string v0, "MtkLocationExt"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNlpNotInstalledToast provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 384
    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "No Network Location Provider is installed!NLP is necessary for network location fixes."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 387
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 391
    :cond_2a
    goto :goto_31

    .line 389
    :catch_2b
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to show toast "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

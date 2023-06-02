.class public Lcom/mediatek/ims/MtkDynamicImsService;
.super Landroid/telephony/ims/ImsService;
.source "MtkDynamicImsService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;
    }
.end annotation


# static fields
.field public static final CAPABILITY_SIP_DELEGATE_CREATION:J = 0x2L

.field private static final PROPERTY_MTK_RCS_S_REG:Ljava/lang/String; = "persist.vendor.mtk_rcs_single_reg_support"

.field private static final TAG:Ljava/lang/String; = "MtkDynamicImsService"


# instance fields
.field protected final mImsConfig:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/stub/ImsConfigImplBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mImsReg:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/stub/ImsRegistrationImplBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMmTel:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/MmTelFeature;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRcs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/RcsFeature;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSipTrans:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/stub/SipTransportImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;-><init>()V

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsConfig:Landroid/util/SparseArray;

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsReg:Landroid/util/SparseArray;

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mSipTrans:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 132
    invoke-static {p0}, Lcom/mediatek/ims/MtkDynamicImsService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/MtkDynamicImsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkDynamicImsService;

    .line 132
    invoke-direct {p0}, Lcom/mediatek/ims/MtkDynamicImsService;->updateRcsFeatureTag()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 432
    const-string v0, "MtkDynamicImsService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 440
    const-string v0, "MtkDynamicImsService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 436
    const-string v0, "MtkDynamicImsService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method private updateRcsFeatureTag()V
    .locals 8

    .line 412
    const-string v0, "Failed to updateImsRegstration!"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 413
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v2

    .line 415
    .local v2, "slotId":I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v4

    .line 416
    .local v4, "srv":Lcom/mediatek/ims/ImsService;
    if-eqz v4, :cond_0

    .line 418
    :try_start_0
    invoke-virtual {v4, v2}, Lcom/mediatek/ims/ImsService;->getRadioTech(I)I

    move-result v5

    .line 419
    .local v5, "radioTech":I
    const/4 v6, 0x2

    .line 421
    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ImsService;->convertImsRegistrationTech(I)I

    move-result v7

    .line 419
    invoke-virtual {v4, v2, v6, v7, v3}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "radioTech":I
    goto :goto_0

    .line 424
    :catch_0
    move-exception v3

    .line 425
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 423
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->loge(Ljava/lang/String;)V

    .line 429
    .end local v2    # "slotId":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "srv":Lcom/mediatek/ims/ImsService;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 3
    .param p1, "slotId"    # I

    .line 267
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/MmTelFeature;

    .line 268
    .local v0, "feature":Landroid/telephony/ims/feature/MmTelFeature;
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;-><init>(I)V

    move-object v0, v1

    .line 270
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMmTelFeature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkDynamicImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v0
.end method

.method public createRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;
    .locals 3
    .param p1, "slotId"    # I

    .line 286
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/RcsFeature;

    .line 287
    .local v0, "feature":Landroid/telephony/ims/feature/RcsFeature;
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    new-instance v1, Lcom/mediatek/ims/feature/MtkRcsFeature;

    invoke-direct {v1, p1, p0}, Lcom/mediatek/ims/feature/MtkRcsFeature;-><init>(ILandroid/content/Context;)V

    move-object v0, v1

    .line 289
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] createRcsFeature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkDynamicImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-object v0
.end method

.method public disableIms(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 246
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/feature/MtkMmTelFeature;

    .line 247
    .local v0, "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/feature/MtkRcsFeature;

    .line 248
    .local v1, "rcsFeature":Lcom/mediatek/ims/feature/MtkRcsFeature;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disable >> RCSFEATURE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",MMTELFEATURE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkDynamicImsService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->disableIms(I)V

    .line 252
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    const-string v2, "RCSFEATURE >> disableIms"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v1, p1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->disableIms(I)V

    .line 256
    :cond_1
    return-void
.end method

.method public enableIms(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 228
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/feature/MtkMmTelFeature;

    .line 229
    .local v0, "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/feature/MtkRcsFeature;

    .line 230
    .local v1, "rcsFeature":Lcom/mediatek/ims/feature/MtkRcsFeature;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCSFEATURE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,MMTELFEATURE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkDynamicImsService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const-string v2, "MMTELFEATURE >> enableIms"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->enableIms(I)V

    .line 235
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    const-string v2, "RCSFEATURE >> enableIms"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v1, p1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->enableIms(I)V

    .line 239
    :cond_1
    return-void
.end method

.method public getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 6
    .param p1, "slotId"    # I

    .line 303
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsConfig:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsConfigImplBase;

    .line 304
    .local v0, "config":Landroid/telephony/ims/stub/ImsConfigImplBase;
    const-string v1, "MtkDynamicImsService"

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/feature/MtkMmTelFeature;

    .line 306
    .local v2, "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    iget-object v3, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/feature/MtkRcsFeature;

    .line 308
    .local v3, "rcsFeature":Lcom/mediatek/ims/feature/MtkRcsFeature;
    if-eqz v2, :cond_0

    .line 309
    new-instance v4, Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mediatek/ims/config/MtkImsConfigImpl;-><init>(Lcom/android/ims/internal/IImsConfig;)V

    move-object v0, v4

    .line 310
    iget-object v4, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsConfig:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    :cond_0
    if-eqz v3, :cond_1

    .line 313
    new-instance v4, Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v3}, Lcom/mediatek/ims/feature/MtkRcsFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mediatek/ims/config/MtkImsConfigImpl;-><init>(Lcom/android/ims/internal/IImsConfig;)V

    move-object v0, v4

    .line 314
    iget-object v4, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsConfig:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RCSFEATURE >> getConfig "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v2    # "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .end local v3    # "rcsFeature":Lcom/mediatek/ims/feature/MtkRcsFeature;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] getConfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-object v0
.end method

.method public getImsServiceCapabilities()J
    .locals 2

    .line 365
    const-string v0, "getImsServiceCapabilities inside CAPABILITY_SIP_DELEGATE_CREATION : 2"

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->log(Ljava/lang/String;)V

    .line 366
    const-wide/16 v0, 0x2

    return-wide v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 5
    .param p1, "slotId"    # I

    .line 329
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsReg:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 330
    .local v0, "reg":Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] getRegistration >> isValidPhoneId :: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MtkDynamicImsService"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    new-instance v1, Lcom/mediatek/ims/MtkImsRegistrationImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/MtkImsRegistrationImpl;-><init>(I)V

    move-object v0, v1

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] reg "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsReg:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] getRegistration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-object v0
.end method

.method public getSipTransport(I)Landroid/telephony/ims/stub/SipTransportImplBase;
    .locals 4
    .param p1, "slotId"    # I

    .line 347
    const-string v0, "persist.vendor.mtk_rcs_single_reg_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] getSipTransport inside"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->log(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mSipTrans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/SipTransportImplBase;

    .line 350
    .local v0, "sipTrans":Landroid/telephony/ims/stub/SipTransportImplBase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] getSipTransport inside sipTrans: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/MtkDynamicImsService;->log(Ljava/lang/String;)V

    .line 351
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    new-instance v2, Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/mediatek/ims/rcse/MtkSipTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    move-object v0, v2

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] getSipTransport inside new sipTrans: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/MtkDynamicImsService;->log(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mSipTrans:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] getSipTransport  return sipTrans"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/MtkDynamicImsService;->log(Ljava/lang/String;)V

    .line 357
    return-object v0

    .line 359
    .end local v0    # "sipTrans":Landroid/telephony/ims/stub/SipTransportImplBase;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.ims.ImsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "MtkDynamicImsService Bound."

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->log(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 161
    const-string v0, "onUnbind..."

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->logi(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;

    .line 164
    .local v1, "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->close()V

    .line 166
    iget-object v2, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsReg:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/MtkImsRegistrationImpl;

    .line 169
    .local v2, "reg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v2}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->close()V

    .line 171
    iget-object v3, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsReg:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 162
    .end local v1    # "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .end local v2    # "reg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Landroid/telephony/ims/ImsService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 3

    .line 188
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;-><init>()V

    .line 189
    .local v0, "builder":Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 190
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 191
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 192
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Ims Features: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkDynamicImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public readyForFeatureCreation()V
    .locals 3

    .line 210
    const-string v0, "MtkDynamicImsService"

    const-string v1, "readyForFeatureCreation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "persist.vendor.mtk_rcs_single_reg_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/mediatek/ims/rcse/LauncherUtils;->launchRcsService(Landroid/content/Context;ZZ)V

    .line 214
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;-><init>(Lcom/mediatek/ims/MtkDynamicImsService;)V

    .line 215
    .local v1, "callback":Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->setCallbackOnMain(Z)V

    .line 216
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    nop

    .end local v1    # "callback":Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerClient failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/MtkDynamicImsService;->loge(Ljava/lang/String;)V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

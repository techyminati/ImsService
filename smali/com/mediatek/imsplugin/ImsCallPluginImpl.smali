.class public Lcom/mediatek/imsplugin/ImsCallPluginImpl;
.super Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;
.source "ImsCallPluginImpl.java"


# static fields
.field private static final MULTI_IMS_SUPPORT:Ljava/lang/String; = "persist.vendor.mims_support"

.field private static final TAG:Ljava/lang/String; = "ImsCallPluginImpl"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object p1, p0, Lcom/mediatek/imsplugin/ImsCallPluginImpl;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method


# virtual methods
.method public getMainCapabilityPhoneId()I
    .registers 2

    .line 113
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    return v0
.end method

.method public getRealRequest(I)I
    .registers 3
    .param p1, "request"    # I

    .line 87
    const v0, -0x8001

    and-int/2addr v0, p1

    return v0
.end method

.method public getSimApplicationState(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 143
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimApplicationState(I)I

    move-result v0

    return v0
.end method

.method public getSimCardState(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 138
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimCardState(I)I

    move-result v0

    return v0
.end method

.method public getUpgradeCancelFlag()I
    .registers 2

    .line 102
    const/high16 v0, 0x10000

    return v0
.end method

.method public getUpgradeCancelTimeoutFlag()I
    .registers 2

    .line 107
    const/high16 v0, 0x20000

    return v0
.end method

.method public isCapabilitySwitching()Z
    .registers 6

    .line 119
    nop

    .line 120
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    .line 122
    .local v0, "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 125
    :try_start_e
    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isCapabilitySwitching()Z

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return v1

    .line 126
    :catch_13
    move-exception v2

    .line 127
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsCallPluginImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v1

    .line 132
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2b
    return v1
.end method

.method public isImsFwkRequest(I)Z
    .registers 4
    .param p1, "request"    # I

    .line 93
    const v0, 0x8000

    and-int v1, p1, v0

    if-ne v1, v0, :cond_9

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMims()Z
    .registers 2

    .line 74
    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManager;->isSupportMims()Z

    move-result v0

    return v0
.end method

.method public setImsFwkRequest(I)I
    .registers 3
    .param p1, "request"    # I

    .line 81
    const v0, 0x8000

    or-int/2addr v0, p1

    return v0
.end method

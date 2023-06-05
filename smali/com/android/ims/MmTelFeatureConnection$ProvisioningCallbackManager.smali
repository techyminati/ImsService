.class Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;
.super Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningCallbackManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<",
        "Landroid/telephony/ims/aidl/IImsConfigCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/MmTelFeatureConnection;


# direct methods
.method public constructor <init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 387
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    .line 388
    invoke-direct {p0, p2, p3}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 389
    return-void
.end method


# virtual methods
.method public bridge synthetic registerCallback(Landroid/os/IInterface;)V
    .locals 0

    .line 386
    check-cast p1, Landroid/telephony/ims/aidl/IImsConfigCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->registerCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method public registerCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 4
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 393
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getConfigInterface()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    .line 394
    .local v0, "binder":Landroid/telephony/ims/aidl/IImsConfig;
    if-eqz v0, :cond_0

    .line 400
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    nop

    .line 404
    return-void

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ImsService is not available!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 396
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "MmTelFeatureConnection"

    const-string v2, "ProvisioningCallbackManager - couldn\'t register, binder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ImsConfig is not available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic unregisterCallback(Landroid/os/IInterface;)V
    .locals 0

    .line 386
    check-cast p1, Landroid/telephony/ims/aidl/IImsConfigCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->unregisterCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method public unregisterCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 4
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 408
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getConfigInterface()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    .line 409
    .local v0, "binder":Landroid/telephony/ims/aidl/IImsConfig;
    const-string v1, "MmTelFeatureConnection"

    if-nez v0, :cond_0

    .line 410
    const-string v2, "ProvisioningCallbackManager - couldn\'t unregister, binder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void

    .line 414
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    goto :goto_0

    .line 415
    :catch_0
    move-exception v2

    .line 416
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ProvisioningCallbackManager - couldn\'t unregister, binder is dead."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

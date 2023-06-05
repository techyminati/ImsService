.class Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;
.super Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationCallbackAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<",
        "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
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

    .line 292
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    .line 293
    invoke-direct {p0, p2, p3}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 294
    return-void
.end method


# virtual methods
.method public bridge synthetic registerCallback(Landroid/os/IInterface;)V
    .locals 0

    .line 289
    check-cast p1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->registerCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public registerCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 298
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$400(Lcom/android/ims/MmTelFeatureConnection;)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 299
    .local v0, "imsRegistration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_0

    .line 301
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsRegistration;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    nop

    .line 311
    return-void

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ImsRegistrationCallbackAdapter: MmTelFeature binder is dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "MmTelFeatureConnection"

    const-string v2, "ImsRegistrationCallbackAdapter: ImsRegistration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ImsRegistrationCallbackAdapter: MmTelFeature isnot available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic unregisterCallback(Landroid/os/IInterface;)V
    .locals 0

    .line 289
    check-cast p1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->unregisterCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public unregisterCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 315
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$400(Lcom/android/ims/MmTelFeatureConnection;)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 316
    .local v0, "imsRegistration":Landroid/telephony/ims/aidl/IImsRegistration;
    const-string v1, "MmTelFeatureConnection"

    if-eqz v0, :cond_0

    .line 318
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsRegistration;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    goto :goto_1

    .line 319
    :catch_0
    move-exception v2

    .line 320
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ImsRegistrationCallbackAdapter - unregisterCallback: couldn\'t remove registration callback"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 324
    :cond_0
    const-string v2, "ImsRegistrationCallbackAdapter: ImsRegistration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_1
    return-void
.end method

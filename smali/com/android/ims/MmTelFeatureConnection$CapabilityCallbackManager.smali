.class Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;
.super Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilityCallbackManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<",
        "Landroid/telephony/ims/aidl/IImsCapabilityCallback;",
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

    .line 331
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    .line 332
    invoke-direct {p0, p2, p3}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 333
    return-void
.end method


# virtual methods
.method public bridge synthetic registerCallback(Landroid/os/IInterface;)V
    .locals 0

    .line 329
    check-cast p1, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->registerCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public registerCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 4
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 338
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$500(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v1}, Lcom/android/ims/MmTelFeatureConnection;->access$600(Lcom/android/ims/MmTelFeatureConnection;)V

    .line 341
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v2, v2, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/ims/MmTelFeatureConnection;->access$700(Lcom/android/ims/MmTelFeatureConnection;Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .local v1, "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    nop

    .line 346
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    if-eqz v1, :cond_0

    .line 349
    :try_start_2
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 353
    nop

    .line 359
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, " CapabilityCallbackManager - MmTelFeature binder is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "MmTelFeatureConnection"

    const-string v2, "CapabilityCallbackManager, register: Couldn\'t get binder"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "CapabilityCallbackManager: MmTelFeature is not available!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    .end local v1    # "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 342
    :catch_1
    move-exception v1

    .line 343
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "CapabilityCallbackManager - MmTelFeature binder is dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;
    .end local p1    # "localCallback":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    throw v2

    .line 346
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;
    .restart local p1    # "localCallback":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public bridge synthetic unregisterCallback(Landroid/os/IInterface;)V
    .locals 0

    .line 329
    check-cast p1, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->unregisterCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public unregisterCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 4
    .param p1, "localCallback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 364
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$500(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v1}, Lcom/android/ims/MmTelFeatureConnection;->access$600(Lcom/android/ims/MmTelFeatureConnection;)V

    .line 367
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v2, v2, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/ims/MmTelFeatureConnection;->access$700(Lcom/android/ims/MmTelFeatureConnection;Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .local v1, "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    nop

    .line 373
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    if-eqz v1, :cond_0

    .line 376
    :try_start_2
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 379
    :goto_0
    goto :goto_1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MmTelFeatureConnection"

    const-string v3, "CapabilityCallbackManager, unregister: Binder is dead."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 381
    :cond_0
    const-string v0, "MmTelFeatureConnection"

    const-string v2, "CapabilityCallbackManager, unregister: binder is null."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_1
    return-void

    .line 373
    .end local v1    # "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 368
    :catch_1
    move-exception v1

    .line 370
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "MmTelFeatureConnection"

    const-string v3, "CapabilityCallbackManager, unregister: couldn\'t get binder."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    monitor-exit v0

    return-void

    .line 373
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

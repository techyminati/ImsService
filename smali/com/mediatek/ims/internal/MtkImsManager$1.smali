.class Lcom/mediatek/ims/internal/MtkImsManager$1;
.super Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.source "MtkImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/MtkImsManager;->hookProprietaryImsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/MtkImsManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/MtkImsManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/MtkImsManager;

    .line 1963
    iput-object p1, p0, Lcom/mediatek/ims/internal/MtkImsManager$1;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 2
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2052
    return-void
.end method

.method public registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "targetAccessTech"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2058
    return-void
.end method

.method public registrationConnected()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1967
    return-void
.end method

.method public registrationConnectedWithRadioTech(I)V
    .registers 6
    .param p1, "imsRadioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1979
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$1;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registrationConnectedWithRadioTech :: imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$500(Lcom/mediatek/ims/internal/MtkImsManager;Ljava/lang/String;)V

    .line 1982
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$1;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # getter for: Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1983
    :try_start_1d
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager$1;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # getter for: Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 1984
    .local v2, "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    instance-of v3, v2, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    if-eqz v3, :cond_3d

    .line 1985
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 1986
    invoke-virtual {v3, p1}, Lcom/mediatek/ims/MtkImsConnectionStateListener;->onImsConnected(I)V

    .line 1988
    .end local v2    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    :cond_3d
    goto :goto_27

    .line 1989
    :cond_3e
    monitor-exit v0

    .line 1990
    return-void

    .line 1989
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_40

    throw v1
.end method

.method public registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2002
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$1;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # getter for: Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 2003
    :try_start_7
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager$1;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # getter for: Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 2004
    .local v2, "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    instance-of v3, v2, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    if-eqz v3, :cond_27

    .line 2005
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 2006
    invoke-virtual {v3, p1}, Lcom/mediatek/ims/MtkImsConnectionStateListener;->onImsDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2008
    .end local v2    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    :cond_27
    goto :goto_11

    .line 2009
    :cond_28
    monitor-exit v0

    .line 2010
    return-void

    .line 2009
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public registrationFeatureCapabilityChanged(I[I[I)V
    .registers 9
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2031
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$1;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    .line 2032
    # invokes: Lcom/mediatek/ims/internal/MtkImsManager;->convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    invoke-static {v0, p2}, Lcom/mediatek/ims/internal/MtkImsManager;->access$700(Lcom/mediatek/ims/internal/MtkImsManager;[I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    .line 2033
    .local v0, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager$1;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registrationFeatureCapabilityChanged :: enabledFeatures="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->access$500(Lcom/mediatek/ims/internal/MtkImsManager;Ljava/lang/String;)V

    .line 2035
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager$1;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # getter for: Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 2036
    :try_start_23
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager$1;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # getter for: Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/ims/internal/MtkImsManager;->access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 2037
    .local v3, "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    instance-of v4, v3, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    if-eqz v4, :cond_43

    .line 2038
    move-object v4, v3

    check-cast v4, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 2039
    invoke-virtual {v4, v0}, Lcom/mediatek/ims/MtkImsConnectionStateListener;->onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 2041
    .end local v3    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    :cond_43
    goto :goto_2d

    .line 2042
    :cond_44
    monitor-exit v1

    .line 2043
    return-void

    .line 2042
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_23 .. :try_end_48} :catchall_46

    throw v2
.end method

.method public registrationProgressing()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1972
    return-void
.end method

.method public registrationProgressingWithRadioTech(I)V
    .registers 2
    .param p1, "imsRadioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1996
    return-void
.end method

.method public registrationResumed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2015
    return-void
.end method

.method public registrationServiceCapabilityChanged(II)V
    .registers 4
    .param p1, "serviceClass"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2025
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$1;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/internal/MtkImsManager;->notifyRegServiceCapabilityChangedEvent(I)V

    .line 2026
    return-void
.end method

.method public registrationSuspended()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2020
    return-void
.end method

.method public voiceMessageCountUpdate(I)V
    .registers 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2047
    return-void
.end method

.class Lcom/mediatek/ims/internal/MtkImsManager$2;
.super Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;
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

    .line 2065
    iput-object p1, p0, Lcom/mediatek/ims/internal/MtkImsManager$2;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-direct {p0}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRedirectIncomingCallIndication(I[Ljava/lang/String;)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "info"    # [Ljava/lang/String;

    .line 2084
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$2;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redirectIncomingCallIndication, phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$500(Lcom/mediatek/ims/internal/MtkImsManager;Ljava/lang/String;)V

    .line 2086
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$2;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # getter for: Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 2087
    :try_start_25
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager$2;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # getter for: Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 2088
    .local v2, "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    instance-of v3, v2, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    if-eqz v3, :cond_45

    .line 2089
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 2090
    invoke-virtual {v3, p1, p2}, Lcom/mediatek/ims/MtkImsConnectionStateListener;->onRedirectIncomingCallInd(I[Ljava/lang/String;)V

    .line 2092
    .end local v2    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    :cond_45
    goto :goto_2f

    .line 2093
    :cond_46
    monitor-exit v0

    .line 2094
    return-void

    .line 2093
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public onRegistrationErrorCodeIndication(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .line 2098
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$2;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationErrorCodeIndication, errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$500(Lcom/mediatek/ims/internal/MtkImsManager;Ljava/lang/String;)V

    .line 2099
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$2;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # getter for: Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 2100
    :try_start_1d
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager$2;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

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

    .line 2101
    .local v2, "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    instance-of v3, v2, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    if-eqz v3, :cond_3d

    .line 2102
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 2103
    invoke-virtual {v3, p1}, Lcom/mediatek/ims/MtkImsConnectionStateListener;->onRegistrationErrorCodeInd(I)V

    .line 2105
    .end local v2    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    :cond_3d
    goto :goto_27

    .line 2106
    :cond_3e
    monitor-exit v0

    .line 2107
    return-void

    .line 2106
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_40

    throw v1
.end method

.method public onRegistrationImsStateChanged(I[Landroid/net/Uri;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 15
    .param p1, "state"    # I
    .param p2, "uris"    # [Landroid/net/Uri;
    .param p3, "expireTime"    # I
    .param p4, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2069
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$2;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationImsStateChanged, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", expireTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imsReasonInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$500(Lcom/mediatek/ims/internal/MtkImsManager;Ljava/lang/String;)V

    .line 2071
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$2;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # getter for: Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 2072
    :try_start_35
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager$2;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # getter for: Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 2073
    .local v2, "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    instance-of v3, v2, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    if-eqz v3, :cond_60

    .line 2074
    move-object v4, v2

    check-cast v4, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 2076
    invoke-virtual {p4}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v8

    invoke-virtual {p4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v9

    .line 2075
    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/mediatek/ims/MtkImsConnectionStateListener;->onRegistrationImsStateInd(I[Landroid/net/Uri;IILjava/lang/String;)V

    .line 2078
    .end local v2    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    :cond_60
    goto :goto_3f

    .line 2079
    :cond_61
    monitor-exit v0

    .line 2080
    return-void

    .line 2079
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_35 .. :try_end_65} :catchall_63

    throw v1
.end method

.class public Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;
.super Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
.source "MtkImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtkImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkImsCall;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MtkImsCall;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkImsCall;

    .line 246
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;)V

    return-void
.end method


# virtual methods
.method public callSessionBusy(Landroid/telephony/ims/ImsCallSession;)V
    .registers 2
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 374
    return-void
.end method

.method public callSessionCalling(Landroid/telephony/ims/ImsCallSession;)V
    .registers 2
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 379
    return-void
.end method

.method public callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V
    .registers 5
    .param p1, "newSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 249
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeComplete :: newSession ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkImsCall;->logi(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    # invokes: Lcom/mediatek/ims/MtkImsCall;->isMergeHost()Z
    invoke-static {v0}, Lcom/mediatek/ims/MtkImsCall;->access$000(Lcom/mediatek/ims/MtkImsCall;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 255
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    # getter for: Lcom/mediatek/ims/MtkImsCall;->mMergeHost:Lcom/android/ims/ImsCall;
    invoke-static {v0}, Lcom/mediatek/ims/MtkImsCall;->access$100(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-nez v0, :cond_35

    .line 256
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    const-string v1, "merge host is null, terminate conf"

    # invokes: Lcom/mediatek/ims/MtkImsCall;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/ims/MtkImsCall;->access$200(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;)V

    .line 257
    if-eqz p1, :cond_34

    .line 259
    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallSession;->terminate(I)V

    .line 261
    :cond_34
    return-void

    .line 264
    :cond_35
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    # getter for: Lcom/mediatek/ims/MtkImsCall;->mMergeHost:Lcom/android/ims/ImsCall;
    invoke-static {v0}, Lcom/mediatek/ims/MtkImsCall;->access$300(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->processMergeComplete()V

    goto :goto_5a

    .line 267
    :cond_3f
    if-eqz p1, :cond_55

    .line 268
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    # setter for: Lcom/mediatek/ims/MtkImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;
    invoke-static {v0, p1}, Lcom/mediatek/ims/MtkImsCall;->access$402(Lcom/mediatek/ims/MtkImsCall;Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession;

    .line 269
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    # getter for: Lcom/mediatek/ims/MtkImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;
    invoke-static {v0}, Lcom/mediatek/ims/MtkImsCall;->access$500(Lcom/mediatek/ims/MtkImsCall;)Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_55

    .line 270
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    const-string v1, "callSessionMergeComplete :: callSessionExisted."

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkImsCall;->logi(Ljava/lang/String;)V

    .line 274
    :cond_55
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCall;->processMergeComplete()V

    .line 276
    :goto_5a
    return-void
.end method

.method public callSessionNotificationRingtoneReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .registers 8
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "causeNum"    # I
    .param p3, "causeText"    # Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionNotificationRingtoneReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/ims/MtkImsCall;->access$1600(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    monitor-enter v0

    .line 354
    :try_start_19
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    # getter for: Lcom/mediatek/ims/MtkImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v1}, Lcom/mediatek/ims/MtkImsCall;->access$1700(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 355
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_38

    .line 356
    if-eqz v1, :cond_37

    instance-of v0, v1, Lcom/mediatek/ims/MtkImsCall$Listener;

    if-eqz v0, :cond_37

    .line 358
    :try_start_26
    move-object v0, v1

    check-cast v0, Lcom/mediatek/ims/MtkImsCall$Listener;

    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    invoke-virtual {v0, v2, p2, p3}, Lcom/mediatek/ims/MtkImsCall$Listener;->onNotificationRingtoneReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2f

    .line 362
    goto :goto_37

    .line 360
    :catchall_2f
    move-exception v0

    .line 361
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    const-string v3, "callSessionNotificationRingtoneReceived :: "

    # invokes: Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/MtkImsCall;->access$1800(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_37
    :goto_37
    return-void

    .line 355
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public callSessionRedialEcc(Landroid/telephony/ims/ImsCallSession;Z)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "isNeedUserConfirm"    # Z

    .line 316
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRedialEcc :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/ims/MtkImsCall;->access$1000(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    monitor-enter v0

    .line 319
    :try_start_19
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    # getter for: Lcom/mediatek/ims/MtkImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v1}, Lcom/mediatek/ims/MtkImsCall;->access$1100(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 320
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_38

    .line 321
    if-eqz v1, :cond_37

    instance-of v0, v1, Lcom/mediatek/ims/MtkImsCall$Listener;

    if-eqz v0, :cond_37

    .line 323
    :try_start_26
    move-object v0, v1

    check-cast v0, Lcom/mediatek/ims/MtkImsCall$Listener;

    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/mediatek/ims/MtkImsCall$Listener;->onCallRedialEcc(Lcom/android/ims/ImsCall;Z)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2f

    .line 326
    goto :goto_37

    .line 324
    :catchall_2f
    move-exception v0

    .line 325
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    const-string v3, "callSessionRedialEcc :: "

    # invokes: Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/MtkImsCall;->access$1200(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_37
    :goto_37
    return-void

    .line 320
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public callSessionRinging(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 369
    return-void
.end method

.method public callSessionRttEventReceived(Landroid/telephony/ims/ImsCallSession;I)V
    .registers 7
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "event"    # I

    .line 302
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    # getter for: Lcom/mediatek/ims/MtkImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v1}, Lcom/mediatek/ims/MtkImsCall;->access$800(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 304
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 305
    if-eqz v1, :cond_21

    instance-of v0, v1, Lcom/mediatek/ims/MtkImsCall$Listener;

    if-eqz v0, :cond_21

    .line 307
    :try_start_10
    move-object v0, v1

    check-cast v0, Lcom/mediatek/ims/MtkImsCall$Listener;

    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/mediatek/ims/MtkImsCall$Listener;->onRttEventReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_19

    .line 310
    goto :goto_21

    .line 308
    :catchall_19
    move-exception v0

    .line 309
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    const-string v3, "callSessionRttEventReceived :: "

    # invokes: Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/MtkImsCall;->access$900(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_21
    :goto_21
    return-void

    .line 304
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public callSessionTextCapabilityChanged(Landroid/telephony/ims/ImsCallSession;IIII)V
    .registers 14
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "localCapability"    # I
    .param p3, "remoteCapability"    # I
    .param p4, "localTextStatus"    # I
    .param p5, "realRemoteCapability"    # I

    .line 285
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    # getter for: Lcom/mediatek/ims/MtkImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v1}, Lcom/mediatek/ims/MtkImsCall;->access$600(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 287
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_26

    .line 289
    if-eqz v1, :cond_25

    instance-of v0, v1, Lcom/mediatek/ims/MtkImsCall$Listener;

    if-eqz v0, :cond_25

    .line 291
    :try_start_10
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/MtkImsCall$Listener;

    iget-object v3, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/ims/MtkImsCall$Listener;->onTextCapabilityChanged(Lcom/android/ims/ImsCall;IIII)V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1d

    .line 295
    goto :goto_25

    .line 293
    :catchall_1d
    move-exception v0

    .line 294
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    const-string v3, "callSessionTextCapabilityChanged :: "

    # invokes: Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/MtkImsCall;->access$700(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_25
    :goto_25
    return-void

    .line 287
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public callSessionVideoRingtoneEventReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .registers 8
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "eventType"    # I
    .param p3, "event"    # Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionVideoRingtoneEventReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/ims/MtkImsCall;->access$1300(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    monitor-enter v0

    .line 336
    :try_start_19
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    # getter for: Lcom/mediatek/ims/MtkImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v1}, Lcom/mediatek/ims/MtkImsCall;->access$1400(Lcom/mediatek/ims/MtkImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 337
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_38

    .line 338
    if-eqz v1, :cond_37

    instance-of v0, v1, Lcom/mediatek/ims/MtkImsCall$Listener;

    if-eqz v0, :cond_37

    .line 340
    :try_start_26
    move-object v0, v1

    check-cast v0, Lcom/mediatek/ims/MtkImsCall$Listener;

    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    invoke-virtual {v0, v2, p2, p3}, Lcom/mediatek/ims/MtkImsCall$Listener;->onVideoRingtoneEventReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2f

    .line 344
    goto :goto_37

    .line 342
    :catchall_2f
    move-exception v0

    .line 343
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCall$MtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsCall;

    const-string v3, "callSessionVideoRingtoneEventReceived :: "

    # invokes: Lcom/mediatek/ims/MtkImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/MtkImsCall;->access$1500(Lcom/mediatek/ims/MtkImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_37
    :goto_37
    return-void

    .line 337
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.class public Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;
.super Landroid/content/BroadcastReceiver;
.source "MtkImsPhoneCallTracker.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncomingCallEventRecevier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 1337
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckComplete(ZLjava/lang/Object;)V
    .registers 11
    .param p1, "result"    # Z
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1405
    const/4 v0, 0x1

    .line 1406
    .local v0, "rejectCause":I
    const/4 v1, 0x1

    .line 1407
    .local v1, "isAllow":Z
    move-object v2, p2

    check-cast v2, Landroid/content/Intent;

    .line 1408
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, -0x1

    .line 1410
    .local v3, "phoneId":I
    if-eqz v2, :cond_f

    .line 1411
    const/4 v4, -0x1

    const-string v5, "android:phoneId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1414
    :cond_f
    if-eqz p1, :cond_14

    .line 1415
    const/16 v0, 0x10

    .line 1416
    const/4 v1, 0x0

    .line 1420
    :cond_14
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCheckComplete(): intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isAllow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1425
    :try_start_3a
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v4

    instance-of v4, v4, Lcom/mediatek/ims/internal/MtkImsManager;

    if-eqz v4, :cond_4f

    .line 1426
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->setCallIndication(ILandroid/content/Intent;ZI)V
    :try_end_4f
    .catch Lcom/android/ims/ImsException; {:try_start_3a .. :try_end_4f} :catch_50

    .line 1431
    :cond_4f
    goto :goto_67

    .line 1429
    :catch_50
    move-exception v4

    .line 1430
    .local v4, "e":Lcom/android/ims/ImsException;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCheckComplete() ImsException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$8000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1432
    .end local v4    # "e":Lcom/android/ims/ImsException;
    :goto_67
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.ims.IMS_INCOMING_CALL_INDICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1344
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onReceive() indication call intent"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v0

    if-nez v0, :cond_23

    .line 1349
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onReceive() no ims manager"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1351
    return-void

    .line 1354
    :cond_23
    const/4 v0, 0x1

    .line 1355
    .local v0, "isAllow":Z
    const/4 v1, -0x1

    const-string v2, "android:phoneId"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1356
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v2

    .line 1357
    .local v2, "subId":I
    const/4 v3, 0x1

    .line 1358
    .local v3, "rejectCause":I
    const-string v4, "android:imsDialString"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1361
    .local v4, "number":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() : subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", number ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1365
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v5

    if-eq v1, v5, :cond_6b

    .line 1366
    return-void

    .line 1370
    :cond_6b
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v6, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    const-string v7, "ims_call_pre_check"

    invoke-direct {v6, v7, p2}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    # setter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIncomingCallCheker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7002(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;)Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    .line 1372
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIncomingCallCheker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1373
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1372
    invoke-virtual {v5, v6, v2, v4, p0}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->startIncomingCallNumberCheck(Landroid/content/Context;ILjava/lang/String;Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;)Z

    move-result v5

    .line 1378
    .local v5, "bCheckStart":Z
    if-eqz v5, :cond_93

    .line 1379
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v7, "onReceive() startIncomingCallNumberCheck true. start check "

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1380
    return-void

    .line 1383
    :cond_93
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v7, "onReceive() startIncomingCallNumberCheck false, and flow continues"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1387
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCallIndication : intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", isAllow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", cause = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1392
    :try_start_c0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v6

    instance-of v6, v6, Lcom/mediatek/ims/internal/MtkImsManager;

    if-eqz v6, :cond_d5

    .line 1393
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v6, v1, p2, v0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->setCallIndication(ILandroid/content/Intent;ZI)V
    :try_end_d5
    .catch Lcom/android/ims/ImsException; {:try_start_c0 .. :try_end_d5} :catch_d6

    .line 1398
    :cond_d5
    goto :goto_ed

    .line 1396
    :catch_d6
    move-exception v6

    .line 1397
    .local v6, "e":Lcom/android/ims/ImsException;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCallIndication ImsException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$7600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1400
    .end local v0    # "isAllow":Z
    .end local v1    # "phoneId":I
    .end local v2    # "subId":I
    .end local v3    # "rejectCause":I
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "bCheckStart":Z
    .end local v6    # "e":Lcom/android/ims/ImsException;
    :cond_ed
    :goto_ed
    return-void
.end method

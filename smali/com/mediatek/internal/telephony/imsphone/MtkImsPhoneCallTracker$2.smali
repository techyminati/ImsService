.class Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;
.super Lcom/mediatek/ims/MtkImsConnectionStateListener;
.source "MtkImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 248
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/mediatek/ims/MtkImsConnectionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 5
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 288
    .local v0, "args":Lcom/android/internal/telephony/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 291
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->removeMessages(I)V

    .line 292
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 294
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->notifyRttImsRegister(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 295
    return-void
.end method

.method public onImsEmergencyCapabilityChanged(Z)V
    .registers 5
    .param p1, "eccSupport"    # Z

    .line 254
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsEmergencyCapabilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onFeatureCapabilityChanged()V

    .line 257
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # setter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsImsEccSupported:Z
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$302(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Z)Z

    .line 258
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->updateIsEmergencyOnly()V

    .line 259
    return-void
.end method

.method public onRegistrationErrorCodeInd(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .line 276
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationErrorCodeInd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-direct {v1, v3, p1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 280
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->processDisconnectReason(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 281
    return-void
.end method

.method public onWifiPdnOOSStateChanged(I)V
    .registers 5
    .param p1, "oosState"    # I

    .line 266
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiPdnOOSStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # setter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mWifiPdnOOSState:I
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$502(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;I)I

    .line 269
    return-void
.end method

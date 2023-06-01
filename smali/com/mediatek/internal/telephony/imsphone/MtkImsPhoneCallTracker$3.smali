.class Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;
.super Lcom/mediatek/ims/MtkImsCall$Listener;
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

    .line 851
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/mediatek/ims/MtkImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 986
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 988
    return-void
.end method

.method public onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 993
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 995
    return-void
.end method

.method public onCallHeld(Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 897
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    .line 898
    return-void
.end method

.method public onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 902
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1801(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 903
    return-void
.end method

.method public onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 923
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V

    .line 924
    return-void
.end method

.method public onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .registers 5
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 1061
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onCallInviteParticipantsRequestDelivered"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1065
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_1a

    instance-of v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v1, :cond_1a

    .line 1066
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->notifyConferenceParticipantsInvited(Z)V

    .line 1068
    :cond_1a
    return-void
.end method

.method public onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1073
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallInviteParticipantsRequestFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1073
    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1077
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_2d

    instance-of v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v1, :cond_2d

    .line 1078
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->notifyConferenceParticipantsInvited(Z)V

    .line 1080
    :cond_2d
    return-void
.end method

.method public onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 962
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 963
    return-void
.end method

.method public onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .registers 9
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "peerCall"    # Lcom/android/ims/ImsCall;
    .param p3, "swapCalls"    # Z

    .line 935
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V

    .line 937
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 938
    .local v0, "hostConn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_80

    instance-of v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v1, :cond_80

    .line 939
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 940
    .local v1, "hostConnExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    new-instance v2, Lmediatek/telecom/FormattedLog$Builder;

    invoke-direct {v2}, Lmediatek/telecom/FormattedLog$Builder;-><init>()V

    .line 941
    const-string v3, "CC"

    invoke-virtual {v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    const-string v3, "ImsPhone"

    invoke-virtual {v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    sget-object v3, Lmediatek/telecom/FormattedLog$OpType;->DUMP:Lmediatek/telecom/FormattedLog$OpType;

    .line 942
    invoke-virtual {v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setOpType(Lmediatek/telecom/FormattedLog$OpType;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 943
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 944
    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getConnectionCallId(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 945
    const-string v3, "state"

    const-string v4, "disconnected"

    invoke-virtual {v2, v3, v4}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 946
    const-string v3, "isConfCall"

    const-string v4, "No"

    invoke-virtual {v2, v3, v4}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 947
    const-string v3, "isConfChildCall"

    invoke-virtual {v2, v3, v4}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 948
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getParentCallName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "parent"

    invoke-virtual {v2, v4, v3}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v2

    .line 949
    invoke-virtual {v2}, Lmediatek/telecom/FormattedLog$Builder;->buildDumpInfo()Lmediatek/telecom/FormattedLog;

    move-result-object v2

    .line 951
    .local v2, "formattedLog":Lmediatek/telecom/FormattedLog;
    if-eqz v2, :cond_80

    .line 952
    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->SENLOG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2800()Z

    move-result v3

    if-eqz v3, :cond_77

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->TELDBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2900()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 953
    :cond_77
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v2}, Lmediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 958
    .end local v1    # "hostConnExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    .end local v2    # "formattedLog":Lmediatek/telecom/FormattedLog;
    :cond_80
    return-void
.end method

.method public onCallProgressing(Lcom/android/ims/ImsCall;)V
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 854
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$901(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V

    .line 855
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 856
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_17

    .line 857
    const/4 v1, 0x0

    const-string v2, "mediatek.telecom.event.EVENT_CALL_ALERTING_NOTIFICATION"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 860
    :cond_17
    return-void
.end method

.method public onCallRedialEcc(Lcom/android/ims/ImsCall;Z)V
    .registers 5
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "isNeedUserConfirm"    # Z

    .line 1128
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onCallRedialEcc"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1131
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_19

    instance-of v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v1, :cond_19

    .line 1132
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->notifyRedialEcc(Z)V

    .line 1134
    :cond_19
    return-void
.end method

.method public onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 912
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallResumeFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 914
    return-void
.end method

.method public onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 918
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2201(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V

    .line 919
    return-void
.end method

.method public onCallResumed(Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 907
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1901(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V

    .line 908
    return-void
.end method

.method public onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1040
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1042
    return-void
.end method

.method public onCallSessionTransferred(Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 1035
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferred(Lcom/android/ims/ImsCall;)V

    .line 1036
    return-void
.end method

.method public onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .registers 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I

    .line 980
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V

    .line 981
    return-void
.end method

.method public onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 879
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 881
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_23

    .line 882
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "auto resume holding call"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendEmptyMessage(I)Z

    .line 886
    :cond_23
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const/4 v1, 0x2

    # setter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1502(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;I)I

    .line 887
    return-void
.end method

.method public onCallStarted(Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 864
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    .line 865
    return-void
.end method

.method public onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 929
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$2401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 931
    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 891
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 892
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const/4 v1, 0x2

    # setter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1502(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;I)I

    .line 893
    return-void
.end method

.method public onCallUpdated(Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 869
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$1201(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V

    .line 870
    return-void
.end method

.method public onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .registers 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 974
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/internal/ConferenceParticipant;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3201(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 975
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V

    .line 976
    return-void
.end method

.method public onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .registers 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "isMultiParty"    # Z

    .line 1054
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V

    .line 1056
    return-void
.end method

.method public onNotificationRingtoneReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .registers 7
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "causeNum"    # I
    .param p3, "causeText"    # Ljava/lang/String;

    .line 1154
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onNotificationRingtoneReceived"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1157
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_27

    instance-of v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v1, :cond_27

    .line 1158
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1159
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "cause"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1160
    const-string v2, "text"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const-string v2, "mediatek.telecom.event.IMS_EVENT_NOTIFICATION_RINGTONE"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1164
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_27
    return-void
.end method

.method public onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1027
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onRttAudioIndicatorChanged"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1031
    return-void
.end method

.method public onRttEventReceived(Lcom/android/ims/ImsCall;I)V
    .registers 6
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "event"    # I

    .line 1118
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1119
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_e

    .line 1120
    const/4 v1, 0x0

    const-string v2, "mediatek.telecom.event.EVENT_RTT_EMERGENCY_REDIAL"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1123
    :cond_e
    return-void
.end method

.method public onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "message"    # Ljava/lang/String;

    .line 1018
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onRttMessageReceived"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$4101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method public onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    .registers 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 1000
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onRttModifyRequestReceived"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V

    .line 1004
    return-void
.end method

.method public onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "status"    # I

    .line 1009
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onRttModifyResponseReceived"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$3901(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V

    .line 1013
    return-void
.end method

.method public onTextCapabilityChanged(Lcom/android/ims/ImsCall;IIII)V
    .registers 15
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "localCapability"    # I
    .param p3, "remoteCapability"    # I
    .param p4, "localTextStatus"    # I
    .param p5, "realRemoteCapability"    # I

    .line 1085
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1087
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    move v3, v1

    .line 1088
    .local v3, "rttStatusLocal":Z
    :goto_d
    if-ne p3, v2, :cond_11

    move v4, v2

    goto :goto_12

    :cond_11
    move v4, v1

    .line 1089
    .local v4, "rttStatusRemote":Z
    :goto_12
    if-ne p2, v2, :cond_16

    move v5, v2

    goto :goto_17

    :cond_16
    move v5, v1

    .line 1090
    .local v5, "rttSupportLocal":Z
    :goto_17
    if-ne p5, v2, :cond_1a

    move v1, v2

    .line 1092
    .local v1, "rttSupportRemote":Z
    :cond_1a
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTextCapabilityChanged localCapability: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " remote status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " localTextStatus"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " RemoteCapability: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1096
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1097
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v7, "mediatek.telecom.extra.RTT_STATUS_LOCAL"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1098
    const-string v7, "mediatek.telecom.extra.RTT_STATUS_REMOTE"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1099
    const-string v7, "mediatek.telecom.extra.RTT_SUPPORT_LOCAL"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1100
    const-string v7, "mediatek.telecom.extra.RTT_SUPPORT_REMOTE"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1102
    if-eqz v0, :cond_6f

    .line 1103
    const-string v7, "mediatek.telecom.event.RTT_SUPPORT_CHANGED"

    invoke-virtual {v0, v7, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1104
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v8, "onTextCapabilityChanged update to conn"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1106
    :cond_6f
    if-ne p2, v2, :cond_8f

    if-ne p3, v2, :cond_8f

    .line 1108
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1109
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v7, "audio"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 1111
    .local v2, "audioManager":Landroid/media/AudioManager;
    const-string v7, "ims_rtt_capability=1"

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1112
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v8, "onTextCapabilityChanged: set audio RTT capability"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1114
    .end local v2    # "audioManager":Landroid/media/AudioManager;
    :cond_8f
    return-void
.end method

.method public onVideoRingtoneEventReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .registers 7
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "eventType"    # I
    .param p3, "event"    # Ljava/lang/String;

    .line 1139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "onVideoRingtoneEventReceived"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$5900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1142
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_27

    instance-of v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v1, :cond_27

    .line 1143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1144
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1145
    const-string v2, "data"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v2, "mediatek.telecom.event.IMS_EVENT_VIDEO_RINGTONE"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1149
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_27
    return-void
.end method

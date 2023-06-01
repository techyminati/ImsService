.class Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;
.super Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkDcActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 2

    .line 1238
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;

    .line 1238
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 18

    .line 1240
    move-object/from16 v1, p0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActiveState: enter dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1241
    :cond_20
    const/16 v3, 0x4b

    const/4 v4, 0x3

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1243
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mId:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v6

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    int-to-long v7, v0

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->canHandleDefault()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v9

    .line 1241
    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIIIJZ)V

    .line 1245
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const v2, 0x42000

    const/4 v3, 0x0

    const-string v4, "connected"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V
    invoke-static {v0, v3, v2, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 1257
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1259
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRilRat:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateTcpBufferSizes(I)V
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V

    .line 1260
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRilRat:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateLinkBandwidthsFromCarrierConfig(I)V
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)V

    .line 1262
    new-instance v0, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    move-object v2, v0

    .line 1263
    .local v2, "configBuilder":Landroid/net/NetworkAgentConfig$Builder;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 1264
    const-string v4, "MOBILE"

    invoke-virtual {v2, v4}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1265
    iget-object v4, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getNetworkType()I

    move-result v4

    .line 1266
    .local v4, "networkType":I
    invoke-virtual {v2, v4}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 1267
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1268
    iget-object v5, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1269
    iget-object v5, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v5

    .line 1270
    .local v5, "carrierSignalAgent":Lcom/android/internal/telephony/CarrierSignalAgent;
    const-string v6, "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/CarrierSignalAgent;->hasRegisteredReceivers(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 1273
    invoke-virtual {v2, v0}, Landroid/net/NetworkAgentConfig$Builder;->setProvisioningNotificationEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 1276
    :cond_ac
    iget-object v6, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 1277
    .local v6, "subscriberId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_bf

    .line 1278
    invoke-virtual {v2, v6}, Landroid/net/NetworkAgentConfig$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1282
    :cond_bf
    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->shouldSkip464Xlat()Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 1283
    invoke-virtual {v2, v0}, Landroid/net/NetworkAgentConfig$Builder;->setNat64DetectionEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 1286
    :cond_ca
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isUnmeteredUseOnly()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v7

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredUseOnly:Z
    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$5902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 1287
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isMmsUseOnly()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v7

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mMmsUseOnly:Z
    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 1288
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isEnterpriseUse()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v7

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mEnterpriseUse:Z
    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 1290
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 1291
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRestrictedNetworkOverride = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRestrictedNetworkOverride:Z
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mUnmeteredUseOnly = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1292
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mUnmeteredUseOnly:Z
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mMmsUseOnly = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1293
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mMmsUseOnly:Z
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mEnterpriseUse = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1294
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mEnterpriseUse:Z
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1291
    invoke-virtual {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1299
    :cond_131
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mVcnManager:Landroid/net/vcn/VcnManager;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/vcn/VcnManager;

    move-result-object v0

    new-instance v7, Landroid/os/HandlerExecutor;

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1300
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$6900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    move-result-object v8

    .line 1299
    invoke-virtual {v0, v7, v8}, Landroid/net/vcn/VcnManager;->addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 1302
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v0

    const/4 v7, 0x2

    if-eqz v0, :cond_20d

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1303
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    if-ne v0, v7, :cond_20d

    .line 1307
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandoverSourceTransport()I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    .line 1308
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1309
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    .line 1308
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataConnectionByApnType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v7

    .line 1312
    .local v7, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-eqz v7, :cond_184

    .line 1315
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setHandoverState(I)V

    .line 1318
    :cond_184
    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v8

    if-eqz v8, :cond_1fc

    .line 1319
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transfer network agent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " successfully."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1321
    .local v8, "logStr":Ljava/lang/String;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v9, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1322
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1323
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v10

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$7902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 1324
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->acquireOwnership(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 1331
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1333
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1334
    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverSourceNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v9, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8602(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 1335
    .end local v8    # "logStr":Ljava/lang/String;
    nop

    .line 1341
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v7    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    goto/16 :goto_299

    .line 1336
    .restart local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .restart local v7    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_1fc
    const-string v3, "Failed to get network agent from original data connection"

    .line 1337
    .local v3, "logStr":Ljava/lang/String;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v8, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1338
    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverLocalLog:Lcom/android/internal/telephony/LocalLog;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1339
    return-void

    .line 1342
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v3    # "logStr":Ljava/lang/String;
    .end local v7    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_20d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->calculateScore()I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v8

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mScore:I
    invoke-static {v0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$8802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1343
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1344
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 1343
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getNetworkFactory(I)Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    move-result-object v0

    .line 1345
    .local v0, "factory":Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    if-nez v0, :cond_228

    move-object v14, v3

    goto :goto_22d

    :cond_228
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->getProvider()Landroid/net/NetworkProvider;

    move-result-object v8

    move-object v14, v8

    .line 1347
    .local v14, "provider":Landroid/net/NetworkProvider;
    :goto_22d
    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getDisallowedApnTypes()I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v9

    # |= operator for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I
    invoke-static {v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9176(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1348
    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateLinkPropertiesHttpProxy()V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 1349
    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v15, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    iget-object v10, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mScore:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v12

    .line 1350
    invoke-virtual {v2}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v13

    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v16

    move-object v9, v15

    move-object v3, v15

    move/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/Phone;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;I)V

    .line 1349
    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v8, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9402(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    .line 1352
    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1353
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mVcnManager:Landroid/net/vcn/VcnManager;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/vcn/VcnManager;

    move-result-object v3

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1354
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 1353
    invoke-virtual {v3, v8, v9}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object v3

    .line 1355
    .local v3, "policyResult":Landroid/net/vcn/VcnNetworkPolicyResult;
    invoke-virtual {v3}, Landroid/net/vcn/VcnNetworkPolicyResult;->isTeardownRequested()Z

    move-result v8

    if-eqz v8, :cond_284

    .line 1356
    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v9, "vcnRequestedTeardown"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->tearDownAll(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_28d

    .line 1364
    :cond_284
    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$9900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->markConnected()V

    .line 1372
    :goto_28d
    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const v8, 0x40021

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1376
    .end local v0    # "factory":Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    .end local v3    # "policyResult":Landroid/net/vcn/VcnNetworkPolicyResult;
    .end local v14    # "provider":Landroid/net/NetworkProvider;
    :goto_299
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->syncQosToNetworkAgent()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 1378
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTransportType:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2d1

    .line 1379
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1380
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const v8, 0x40012

    .line 1379
    const/4 v9, 0x0

    invoke-interface {v0, v7, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForNattKeepaliveStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1381
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1382
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const v8, 0x40017

    .line 1381
    invoke-interface {v0, v7, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2d2

    .line 1378
    :cond_2d1
    const/4 v9, 0x0

    .line 1384
    :goto_2d2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDataConnectionState()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 1385
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    iget-object v8, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v8, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCid:I

    iget-object v10, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1386
    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v10

    .line 1385
    invoke-virtual {v0, v7, v8, v10, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDataCallEvent(IIII)V

    .line 1390
    :try_start_2f2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    move-result-object v0

    .line 1391
    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-nez v3, :cond_302

    move-object v3, v9

    goto :goto_312

    .line 1392
    :cond_302
    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v3

    .line 1391
    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, ","

    .line 1392
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1393
    :goto_312
    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$10900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;

    move-result-object v7

    if-nez v7, :cond_31d

    const-string v7, ""

    goto :goto_327

    :cond_31d
    iget-object v7, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 1390
    :goto_327
    invoke-interface {v0, v3, v7}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->onDcActivated([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32a
    .catch Ljava/lang/Exception; {:try_start_2f2 .. :try_end_32a} :catch_32b

    .line 1397
    goto :goto_336

    .line 1394
    :catch_32b
    move-exception v0

    .line 1395
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v7, "onDcActivated fail!"

    invoke-virtual {v3, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1399
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_336
    return-void
.end method

.method public exit()V
    .registers 4

    .line 1405
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    move-result-object v0

    .line 1406
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_20

    .line 1407
    :cond_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v1

    .line 1406
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 1407
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1408
    :goto_20
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_2b

    const-string v2, ""

    goto :goto_35

    :cond_2b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1405
    :goto_35
    invoke-interface {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->onDcDeactivated([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    .line 1412
    goto :goto_44

    .line 1409
    :catch_39
    move-exception v0

    .line 1410
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v2, "onDcDeactivated fail!"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1415
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_44
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->exit()V

    .line 1416
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 1422
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, " != mTag:"

    const-string v3, ": "

    const-string v4, "DcActiveState: "

    const-string v5, " dc="

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_5ca

    .line 1712
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->processMessage(Landroid/os/Message;)Z

    move-result v1

    .local v1, "retVal":Z
    goto/16 :goto_5c9

    .line 1558
    .end local v1    # "retVal":Z
    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 1559
    .local v0, "addrV6Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1560
    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getScope()I

    move-result v1

    .line 1561
    .local v1, "scope":I
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getFlags()I

    move-result v2

    .line 1562
    .local v2, "flag":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_IPV6_ADDRESS_UPDATED, scope: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1563
    sget v3, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    if-ne v3, v1, :cond_8a

    and-int/lit8 v3, v2, 0x1

    sget v4, Landroid/system/OsConstants;->IFA_F_TEMPORARY:I

    if-eq v3, v4, :cond_8a

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1564
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v3

    if-eqz v3, :cond_8a

    .line 1565
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    invoke-static {v3, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14502(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 1566
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mtkGetLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1568
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v4, "EVENT_IPV6_ADDRESS_UPDATED, notify global ipv6 address update"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_91

    .line 1571
    :cond_8a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v4, "EVENT_IPV6_ADDRESS_UPDATED, not notify global ipv6 address update"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1575
    .end local v1    # "scope":I
    .end local v2    # "flag":I
    :cond_91
    :goto_91
    const/4 v1, 0x1

    .line 1576
    .local v1, "retVal":Z
    goto/16 :goto_5c9

    .line 1580
    .end local v0    # "addrV6Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    .end local v1    # "retVal":Z
    :sswitch_94
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v1, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    if-ne v0, v1, :cond_de

    .line 1581
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataRegState:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    if-eqz v0, :cond_b2

    .line 1582
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 1583
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v1, "DcActiveState: EVENT_FALLBACK_RETRY_CONNECTION not in service"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_106

    .line 1587
    :cond_b2
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 1588
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState EVENT_FALLBACK_RETRY_CONNECTION mConnectionParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1589
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1588
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1591
    :cond_d4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->connect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)I

    goto :goto_106

    .line 1594
    :cond_de
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 1595
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActiveState stale EVENT_FALLBACK_RETRY_CONNECTION tag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v2, v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1599
    :cond_106
    :goto_106
    const/4 v1, 0x1

    .line 1600
    .restart local v1    # "retVal":Z
    goto/16 :goto_5c9

    .line 1683
    .end local v1    # "retVal":Z
    :sswitch_109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_110

    goto :goto_111

    :cond_110
    move v6, v7

    :goto_111
    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z
    invoke-static {v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 1684
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->updateSuspendState()V

    .line 1685
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_132

    .line 1687
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1690
    :cond_132
    const/4 v1, 0x1

    .line 1691
    .restart local v1    # "retVal":Z
    goto/16 :goto_5c9

    .line 1525
    .end local v1    # "retVal":Z
    :sswitch_135
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 1526
    .restart local v0    # "addrV6Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v2

    if-eqz v2, :cond_161

    .line 1527
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v6, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1529
    :cond_161
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f9

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 1530
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1531
    .local v2, "strAddress":Ljava/lang/String;
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 1532
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1534
    :cond_19d
    const-string v3, "FE80::5A:5A:5A:23"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v4, -0x2

    const-wide/16 v6, -0x1

    if-eqz v3, :cond_1af

    .line 1535
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J
    invoke-static {v3, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;J)J

    goto :goto_1c4

    .line 1536
    :cond_1af
    const-string v3, "FE80::5A:5A:5A:22"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1bd

    .line 1537
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J
    invoke-static {v3, v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;J)J

    goto :goto_1c4

    .line 1539
    :cond_1bd
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-wide/16 v8, -0x3e8

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J
    invoke-static {v3, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;J)J

    .line 1542
    :goto_1c4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-eqz v3, :cond_1d8

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1543
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_1f9

    .line 1544
    :cond_1d8
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcActiveState: RA initial or refresh fail, valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1545
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mValid:J
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1544
    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1546
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->onAddressRemoved()V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 1550
    .end local v2    # "strAddress":Ljava/lang/String;
    :cond_1f9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    move-result-object v2

    if-eqz v2, :cond_216

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1551
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_216

    .line 1552
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mGlobalV6AddrInfo:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14502(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;)Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 1554
    :cond_216
    const/4 v1, 0x1

    .line 1555
    .restart local v1    # "retVal":Z
    goto/16 :goto_5c9

    .line 1516
    .end local v0    # "addrV6Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    .end local v1    # "retVal":Z
    :sswitch_219
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    .line 1517
    .local v0, "addrV4Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_245

    .line 1518
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v5, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$14000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1521
    :cond_245
    const/4 v1, 0x1

    .line 1522
    .restart local v1    # "retVal":Z
    goto/16 :goto_5c9

    .line 1704
    .end local v0    # "addrV4Info":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
    .end local v1    # "retVal":Z
    :sswitch_248
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v0

    if-nez v0, :cond_258

    .line 1705
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v1, "EVENT_REEVALUATE_RESTRICTED_STATE: mNetworkAgent is null"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1706
    return v6

    .line 1708
    :cond_258
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->processMessage(Landroid/os/Message;)Z

    move-result v1

    .line 1709
    .restart local v1    # "retVal":Z
    goto/16 :goto_5c9

    .line 1697
    .end local v1    # "retVal":Z
    :sswitch_25e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->canSendNetworkCapabilities()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v0

    if-nez v0, :cond_267

    .line 1698
    return v6

    .line 1700
    :cond_267
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->processMessage(Landroid/os/Message;)Z

    move-result v1

    .line 1701
    .restart local v1    # "retVal":Z
    goto/16 :goto_5c9

    .line 1498
    .end local v1    # "retVal":Z
    :sswitch_26d
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_28b

    .line 1499
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActiveState EVENT_LOST_CONNECTION dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1501
    :cond_28b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    const/16 v1, 0xc27

    const/16 v2, 0xf8e

    if-eq v0, v1, :cond_2c1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1502
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    const/16 v1, 0xd27

    if-eq v0, v1, :cond_2c1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1503
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    if-eq v0, v2, :cond_2c1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1504
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mCause:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v0

    const/16 v1, 0x1a27

    if-ne v0, v1, :cond_2b4

    goto :goto_2c1

    .line 1508
    :cond_2b4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v0

    const v1, 0x10004

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(I)V

    goto :goto_2ca

    .line 1505
    :cond_2c1
    :goto_2c1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(I)V

    .line 1510
    :goto_2ca
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1511
    const/4 v1, 0x1

    .line 1512
    .restart local v1    # "retVal":Z
    goto/16 :goto_5c9

    .line 1454
    .end local v1    # "retVal":Z
    :sswitch_2d6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1455
    .local v0, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 1456
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActiveState: EVENT_DISCONNECT dp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1459
    :cond_2fe
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39d

    .line 1460
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v2

    if-eqz v2, :cond_332

    .line 1461
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActiveState msg.what=EVENT_DISCONNECT RefCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1462
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1461
    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1465
    :cond_332
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v6, :cond_366

    .line 1466
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1467
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12702(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1468
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1469
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v1, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    .line 1470
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->tearDownData(Ljava/lang/Object;)V

    .line 1471
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_3c4

    .line 1473
    :cond_366
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_38a

    .line 1478
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1484
    :cond_38a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkDeactivateDataCall(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1487
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    invoke-static {v1, v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto :goto_3c4

    .line 1490
    :cond_39d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActiveState ERROR no such apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in this dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1492
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    invoke-static {v1, v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$13500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    .line 1494
    :goto_3c4
    const/4 v1, 0x1

    .line 1495
    .restart local v1    # "retVal":Z
    goto/16 :goto_5c9

    .line 1602
    .end local v0    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v1    # "retVal":Z
    :sswitch_3c7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1604
    .local v0, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    nop

    .line 1605
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "data_call_response"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataCallResponse;

    .line 1606
    .local v1, "dataCallResponse":Landroid/telephony/data/DataCallResponse;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->onSetupConnectionCompleted(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    move-result-object v3

    .line 1607
    .local v3, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    if-eq v3, v4, :cond_410

    .line 1608
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v4

    if-eq v4, v0, :cond_410

    .line 1609
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcActiveState_FALLBACK_Retry: WEIRD mConnectionsParams:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1610
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " != cp:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1609
    invoke-virtual {v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1613
    :cond_410
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v4

    if-eqz v4, :cond_434

    .line 1614
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcActiveState_FALLBACK_Retry onSetupConnectionCompleted result="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1617
    :cond_434
    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$3;->$SwitchMap$com$android$internal$telephony$dataconnection$DataConnection$SetupResult:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_5fc

    .line 1672
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v2

    if-eqz v2, :cond_537

    .line 1673
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v4, "DcActiveState_FALLBACK_Retry: Another error cause, Not retry anymore"

    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_537

    .line 1666
    :sswitch_44e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState_FALLBACK_Retry: stale EVENT_SETUP_DATA_CONNECTION_DONE tag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v2, v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Not retry anymore"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1670
    goto/16 :goto_537

    .line 1624
    :sswitch_477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActiveState_FALLBACK_Retry: ERROR_DATA_SERVICE_SPECIFIC_ERROR result="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " result.isRadioRestartFailure="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1628
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1629
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    .line 1628
    invoke-static {v4, v5, v6}, Landroid/telephony/DataFailCause;->isRadioRestartFailure(Landroid/content/Context;II)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " result.isPermanentFailure="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1631
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFailure(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1632
    .local v2, "str":Ljava/lang/String;
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v4

    if-eqz v4, :cond_4c9

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1634
    :cond_4c9
    iget v4, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    const/16 v5, -0x3e8

    if-ne v4, v5, :cond_51f

    .line 1636
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    if-eqz v4, :cond_537

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP19:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-virtual {v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->isSpecificNetworkAndSimOperator(Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;)Z

    move-result v4

    if-eqz v4, :cond_537

    .line 1638
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # operator++ for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15708(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    .line 1639
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFcMgr:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mRetryCount:I
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v6

    sget-object v8, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP19:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-virtual {v4, v6, v8}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->getRetryTimeByIndex(ILcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;)J

    move-result-wide v8

    .line 1642
    .local v8, "retryTime":J
    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-gez v4, :cond_50f

    .line 1643
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v4

    if-eqz v4, :cond_509

    .line 1644
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v5, "DcActiveState_FALLBACK_Retry: No retry but at least one IPv4 or IPv6 is accepted"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1648
    :cond_509
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I
    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    goto :goto_51e

    .line 1651
    :cond_50f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15902(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1652
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const v5, 0x4002c

    iget v6, v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->startRetryAlarm(IIJ)V

    .line 1655
    .end local v8    # "retryTime":J
    :goto_51e
    goto :goto_537

    .line 1658
    :cond_51f
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v4

    if-eqz v4, :cond_537

    .line 1659
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v5, "DcActiveState_FALLBACK_Retry: ERROR_DATA_SERVICE_SPECIFIC_ERROR Not retry anymore"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_537

    .line 1620
    .end local v2    # "str":Ljava/lang/String;
    :sswitch_52d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I
    invoke-static {v2, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$15302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1621
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->resetRetryCount()V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 1677
    :cond_537
    :goto_537
    const/4 v2, 0x1

    .line 1678
    .local v2, "retVal":Z
    move v1, v2

    goto/16 :goto_5c9

    .line 1424
    .end local v0    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v1    # "dataCallResponse":Landroid/telephony/data/DataCallResponse;
    .end local v2    # "retVal":Z
    .end local v3    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    :sswitch_53b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1427
    .restart local v0    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    not-int v2, v2

    # &= operator for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisabledApnTypeBitMask:I
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11772(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1431
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_57a

    .line 1432
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActiveState: EVENT_CONNECT cp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1437
    :cond_57a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_5c1

    .line 1438
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$11900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1440
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1441
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5c1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsSuspended:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Z

    move-result v1

    if-nez v1, :cond_5c1

    .line 1442
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v2, "DcActiveState: inform UI connected state"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1443
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcNetworkAgent;->markConnected()V

    .line 1448
    :cond_5c1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActiveState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const/4 v2, -0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V
    invoke-static {v1, v0, v7, v2, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$12200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IIZ)V

    .line 1450
    const/4 v1, 0x1

    .line 1451
    .local v1, "retVal":Z
    nop

    .line 1715
    .end local v0    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :goto_5c9
    return v1

    :sswitch_data_5ca
    .sparse-switch
        0x40000 -> :sswitch_53b
        0x40001 -> :sswitch_3c7
        0x40004 -> :sswitch_2d6
        0x40009 -> :sswitch_26d
        0x40017 -> :sswitch_25e
        0x40019 -> :sswitch_248
        0x4001b -> :sswitch_25e
        0x40028 -> :sswitch_219
        0x40029 -> :sswitch_135
        0x4002b -> :sswitch_109
        0x4002c -> :sswitch_94
        0x4002d -> :sswitch_16
    .end sparse-switch

    :sswitch_data_5fc
    .sparse-switch
        0x1 -> :sswitch_52d
        0x6 -> :sswitch_477
        0x7 -> :sswitch_44e
    .end sparse-switch
.end method

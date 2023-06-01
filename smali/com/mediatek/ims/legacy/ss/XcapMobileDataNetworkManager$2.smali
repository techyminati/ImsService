.class Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;
.super Landroid/telephony/PhoneStateListener;
.source "XcapMobileDataNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->startListenXcapDataConnectionState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 344
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 8
    .param p1, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .line 346
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result v0

    .line 347
    .local v0, "newState":I
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionApnTypeBitMask()I

    move-result v1

    .line 348
    .local v1, "apnType":I
    const-string v2, "XcapMobileDataNetworkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreciseDataConnectionStateChanged: apnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    .line 349
    # invokes: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->dataStateToString(I)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$300(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentXcapState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    .line 350
    # getter for: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapDataConnectionState:I
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$400(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)I

    move-result v5

    # invokes: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->dataStateToString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$300(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/16 v2, 0x800

    if-eq v1, v2, :cond_43

    .line 352
    return-void

    .line 354
    :cond_43
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # getter for: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapDataConnectionState:I
    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$400(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6d

    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    .line 355
    # getter for: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapDataConnectionState:I
    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$400(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)I

    move-result v2

    if-eq v2, v0, :cond_6d

    if-nez v0, :cond_6d

    .line 357
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # setter for: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->isNotifyByDataDisconnected:Z
    invoke-static {v2, v3}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$502(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;Z)Z

    .line 358
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # invokes: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->stopListenXcapDataConnectionState()V
    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$200(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;)V

    .line 359
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    monitor-enter v2

    .line 360
    :try_start_63
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 361
    monitor-exit v2

    .line 362
    return-void

    .line 361
    :catchall_6a
    move-exception v3

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_6a

    throw v3

    .line 364
    :cond_6d
    const/4 v2, -0x1

    if-eq v0, v2, :cond_75

    .line 365
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager$2;->this$0:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    # setter for: Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->mXcapDataConnectionState:I
    invoke-static {v2, v0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->access$402(Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;I)I

    .line 367
    :cond_75
    return-void
.end method

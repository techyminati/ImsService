.class Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
.super Landroid/os/Handler;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WFOServHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/impl/WifiOffloadService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 711
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 712
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 713
    return-void
.end method

.method private handleWifiStateChange(I)V
    .registers 6
    .param p1, "wifiState"    # I

    .line 842
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5300(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    .line 843
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    const-string v2, "Unexpected error, mWifiManager is null!"

    invoke-virtual {v0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v0

    const/16 v2, 0x13

    invoke-virtual {v0, v2, p1, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 845
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4900(Lcom/mediatek/wfo/impl/WifiOffloadService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 846
    :try_start_23
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mPendingMsgs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5000(Lcom/mediatek/wfo/impl/WifiOffloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    monitor-exit v2

    .line 848
    return-void

    .line 847
    :catchall_2e
    move-exception v1

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_2e

    throw v1

    .line 851
    .end local v0    # "msg":Landroid/os/Message;
    :cond_31
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWifiStateChange wifiState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    sget-object v2, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;I)V
    invoke-static {v0, v2, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5400(Lcom/mediatek/wfo/impl/WifiOffloadService;Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;I)V

    .line 854
    const/16 v0, 0x26ac

    const/16 v2, 0x14

    if-ne p1, v0, :cond_6d

    .line 855
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # setter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5502(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)Z

    .line 856
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ac

    .line 858
    :cond_6d
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5300(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 859
    .local v0, "isWifiEnabled":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Z

    move-result v1

    if-eq v0, v1, :cond_97

    .line 860
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # setter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5502(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)Z

    .line 861
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 864
    :cond_97
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 866
    .end local v0    # "isWifiEnabled":Z
    :goto_ac
    return-void
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 869
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 911
    const-string v0, "UNKNOWN"

    return-object v0

    .line 909
    :pswitch_8
    const-string v0, "EVENT_NOTIRY_MAL_USER_PROFILE"

    return-object v0

    .line 907
    :pswitch_b
    const-string v0, "EVENT_WIFI_STATE_CHANGE"

    return-object v0

    .line 905
    :pswitch_e
    const-string v0, "EVENT_RETRY_UPDATE_WIFI_CONNTECTED_INFO"

    return-object v0

    .line 903
    :pswitch_11
    const-string v0, "EVENT_RETRY_CHECK_IF_START_WIFI_SCAN"

    return-object v0

    .line 901
    :pswitch_14
    const-string v0, "EVENT_WIFI_SCAN_AVAILABLE"

    return-object v0

    .line 899
    :pswitch_17
    const-string v0, "EVENT_RETRY_INIT"

    return-object v0

    .line 897
    :pswitch_1a
    const-string v0, "EVENT_NOTIFY_WIFI_NO_INTERNET"

    return-object v0

    .line 895
    :pswitch_1d
    const-string v0, "EVENT_WIFI_SCAN"

    return-object v0

    .line 893
    :pswitch_20
    const-string v0, "EVENT_HANDLE_MODEM_POWER"

    return-object v0

    .line 891
    :pswitch_23
    const-string v0, "EVENT_REQUEST_LOCATION"

    return-object v0

    .line 889
    :pswitch_26
    const-string v0, "EVENT_LOCATION_CHANGED"

    return-object v0

    .line 887
    :pswitch_29
    const-string v0, "EVENT_ON_REQUEST_IMS_SWITCH"

    return-object v0

    .line 885
    :pswitch_2c
    const-string v0, "EVENT_ON_ROVE_OUT"

    return-object v0

    .line 883
    :pswitch_2f
    const-string v0, "EVENT_ON_HANDOVER"

    return-object v0

    .line 881
    :pswitch_32
    const-string v0, "EVENT_WIFI_SIGNAL_STRENGTH_CHANGE"

    return-object v0

    .line 879
    :pswitch_35
    const-string v0, "EVENT_NATIVE_MAL_CONNECTION_READY"

    return-object v0

    .line 877
    :pswitch_38
    const-string v0, "EVENT_NATIVE_MAL_CONNECTION_RESET"

    return-object v0

    .line 875
    :pswitch_3b
    const-string v0, "EVENT_NOTIFY_SERVICE_STATE_CHANGE"

    return-object v0

    .line 873
    :pswitch_3e
    const-string v0, "EVENT_SUBSCRIPTION_INFO_CHANGED"

    return-object v0

    .line 871
    :pswitch_41
    const-string v0, "EVENT_WIFI_NETWORK_STATE_CHANGE"

    return-object v0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 717
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 718
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1c6

    goto/16 :goto_1c5

    .line 828
    :pswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 829
    .local v0, "sim_id":Ljava/lang/Integer;
    if-nez v0, :cond_38

    .line 830
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalUserProfile()V
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5200(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    goto/16 :goto_1c5

    .line 832
    :cond_38
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalUserProfile(I)V
    invoke-static {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3700(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    .line 834
    goto/16 :goto_1c5

    .line 824
    .end local v0    # "sim_id":Ljava/lang/Integer;
    :pswitch_43
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->handleWifiStateChange(I)V

    .line 825
    goto/16 :goto_1c5

    .line 819
    :pswitch_4a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 820
    .local v0, "isConnected":I
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->updateWifiConnectedInfo(I)V
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2700(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    .line 821
    goto/16 :goto_1c5

    .line 797
    .end local v0    # "isConnected":I
    :pswitch_53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 798
    .local v0, "scanImmediately":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry checkIfstartWifiScan, scanImmediately: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 799
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkIfstartWifiScan(Z)V
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4800(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)V

    .line 800
    goto/16 :goto_1c5

    .line 806
    .end local v0    # "scanImmediately":Z
    :pswitch_78
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4900(Lcom/mediatek/wfo/impl/WifiOffloadService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 807
    :try_start_7f
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mPendingMsgs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5000(Lcom/mediatek/wfo/impl/WifiOffloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_89
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 808
    .local v2, "retryMsg":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 809
    .end local v2    # "retryMsg":Landroid/os/Message;
    goto :goto_89

    .line 810
    :cond_99
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mPendingMsgs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5000(Lcom/mediatek/wfo/impl/WifiOffloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 811
    monitor-exit v0

    .line 812
    goto/16 :goto_1c5

    .line 811
    :catchall_a5
    move-exception v1

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_7f .. :try_end_a7} :catchall_a5

    throw v1

    .line 815
    :pswitch_a8
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->initWifiManager()V
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5100(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    .line 816
    goto/16 :goto_1c5

    .line 803
    :pswitch_af
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkIfShowNoInternetError(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$600(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)V

    .line 804
    goto/16 :goto_1c5

    .line 794
    :pswitch_b6
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkIfstartWifiScan(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4800(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)V

    .line 795
    goto/16 :goto_1c5

    .line 789
    :pswitch_bd
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->handleModemPower()V
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1500(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    .line 790
    goto/16 :goto_1c5

    .line 785
    :pswitch_c4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 786
    .local v0, "simIndex":I
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->requestLocationFromNetwork(I)Z
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4700(Lcom/mediatek/wfo/impl/WifiOffloadService;I)Z

    .line 787
    goto/16 :goto_1c5

    .line 768
    .end local v0    # "simIndex":I
    :pswitch_cd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 769
    .local v0, "location":Landroid/location/Location;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 770
    .local v1, "simId":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->getCountryIdFromLocation(Landroid/location/Location;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4400(Lcom/mediatek/wfo/impl/WifiOffloadService;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, "countryId":Ljava/lang/String;
    if-nez v2, :cond_e4

    .line 772
    const-string v3, "WifiOffloadService"

    const-string v4, "onRequestLocationInfo countryId is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c5

    .line 774
    :cond_e4
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z
    invoke-static {v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Z

    move-result v3

    if-eqz v3, :cond_1c5

    .line 776
    :try_start_ec
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;
    invoke-static {v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4600(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 777
    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    .line 776
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetLocationInfo(BLjava/lang/String;)V
    :try_end_fe
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_fe} :catch_ff

    goto :goto_107

    .line 778
    :catch_ff
    move-exception v3

    .line 779
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WifiOffloadService"

    const-string v5, "Wos HIDL Exception:"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_107
    goto/16 :goto_1c5

    .line 763
    .end local v0    # "location":Landroid/location/Location;
    .end local v1    # "simId":I
    .end local v2    # "countryId":Ljava/lang/String;
    :pswitch_109
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 764
    .local v0, "simIdx":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_110

    move v1, v2

    .line 765
    .local v1, "isImsOn":Z
    :cond_110
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyOnRequestImsSwitch(IZ)V
    invoke-static {v2, v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4300(Lcom/mediatek/wfo/impl/WifiOffloadService;IZ)V

    .line 766
    goto/16 :goto_1c5

    .line 759
    .end local v0    # "simIdx":I
    .end local v1    # "isImsOn":Z
    :pswitch_117
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;

    .line 760
    .local v0, "roMsg":Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    iget v2, v0, Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;->mSimIdx:I

    iget-boolean v3, v0, Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;->mRoveOut:Z

    iget v4, v0, Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;->mRssi:I

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyOnRoveOut(IZI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4200(Lcom/mediatek/wfo/impl/WifiOffloadService;IZI)V

    .line 761
    goto/16 :goto_1c5

    .line 755
    .end local v0    # "roMsg":Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;
    :pswitch_128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;

    .line 756
    .local v0, "hoMsg":Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    iget v2, v0, Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;->mSimIdx:I

    iget v3, v0, Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;->mStage:I

    iget v4, v0, Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;->mRatType:I

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyOnHandover(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4100(Lcom/mediatek/wfo/impl/WifiOffloadService;III)V

    .line 757
    goto/16 :goto_1c5

    .line 750
    .end local v0    # "hoMsg":Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;
    :pswitch_139
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 751
    .local v0, "rssi":I
    const/16 v1, 0x3c

    .line 752
    .local v1, "snr":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalWifiQuality(II)V
    invoke-static {v2, v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4000(Lcom/mediatek/wfo/impl/WifiOffloadService;II)V

    .line 753
    goto/16 :goto_1c5

    .line 735
    .end local v0    # "rssi":I
    .end local v1    # "snr":I
    :pswitch_144
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    const/4 v1, 0x2

    # setter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I
    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3202(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I

    .line 737
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalWifiState()V
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3400(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    .line 739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_150
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$100(Lcom/mediatek/wfo/impl/WifiOffloadService;)I

    move-result v1

    if-ge v0, v1, :cond_18f

    .line 740
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mFqdn:[Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3500(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->getProvisioningFqdn()Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3600(Lcom/mediatek/wfo/impl/WifiOffloadService;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 741
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalUserProfile(I)V
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3700(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    .line 742
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->getModemIdFromPhoneId(I)I
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$800(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I

    move-result v2

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalServiceState(II)V
    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$900(Lcom/mediatek/wfo/impl/WifiOffloadService;II)V

    .line 743
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->getModemIdFromPhoneId(I)I
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$800(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I

    move-result v2

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalVoiceState(II)V
    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3800(Lcom/mediatek/wfo/impl/WifiOffloadService;II)V

    .line 744
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalSimInfo(I)V
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1300(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    .line 745
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalRadioState(I)V
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3900(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    .line 746
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalWfcSupported(I)V
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$400(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_150

    .line 748
    .end local v0    # "i":I
    :cond_18f
    goto :goto_1c5

    .line 731
    :pswitch_190
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # setter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I
    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3202(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I

    .line 732
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->initMalConnection()V
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3300(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    .line 733
    goto :goto_1c5

    .line 727
    :pswitch_19b
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ServiceState;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->updateServiceState(ILandroid/telephony/ServiceState;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3000(Lcom/mediatek/wfo/impl/WifiOffloadService;ILandroid/telephony/ServiceState;)V

    .line 728
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ServiceState;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->updateVoiceState(ILandroid/telephony/ServiceState;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$3100(Lcom/mediatek/wfo/impl/WifiOffloadService;ILandroid/telephony/ServiceState;)V

    .line 729
    goto :goto_1c5

    .line 723
    :pswitch_1b2
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->updateServiceStateListeners()V
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2800(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    .line 724
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->updateDataRoamingSetting()V
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2900(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    .line 725
    goto :goto_1c5

    .line 720
    :pswitch_1bd
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->updateWifiConnectedInfo(I)V
    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2700(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    .line 721
    nop

    .line 839
    :cond_1c5
    :goto_1c5
    return-void

    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_1bd
        :pswitch_1b2
        :pswitch_19b
        :pswitch_190
        :pswitch_144
        :pswitch_139
        :pswitch_128
        :pswitch_117
        :pswitch_109
        :pswitch_cd
        :pswitch_c4
        :pswitch_bd
        :pswitch_b6
        :pswitch_af
        :pswitch_a8
        :pswitch_78
        :pswitch_53
        :pswitch_4a
        :pswitch_43
        :pswitch_2b
    .end packed-switch
.end method

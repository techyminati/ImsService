.class Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;
.super Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkDcActivatingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 2

    .line 1012
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;

    .line 1012
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 1016
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1017
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActivatingState: enter dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1020
    :cond_1e
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->enter()V

    .line 1021
    return-void
.end method

.method public exit()V
    .registers 4

    .line 1026
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1027
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActivatingState: exit dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1030
    :cond_1e
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->exit()V

    .line 1031
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 1039
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActivatingState: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1400(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1040
    :cond_20
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_386

    .line 1228
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    .local v0, "retVal":Z
    goto/16 :goto_385

    .line 1224
    .end local v0    # "retVal":Z
    :sswitch_2c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->deferMessage(Landroid/os/Message;)V

    .line 1225
    const/4 v0, 0x1

    .line 1226
    .restart local v0    # "retVal":Z
    goto/16 :goto_385

    .line 1215
    .end local v0    # "retVal":Z
    :sswitch_34
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1216
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActivatingState deferMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", address info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1219
    :cond_64
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->deferMessage(Landroid/os/Message;)V

    .line 1220
    const/4 v0, 0x1

    .line 1221
    .restart local v0    # "retVal":Z
    goto/16 :goto_385

    .line 1058
    .end local v0    # "retVal":Z
    :sswitch_6c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1063
    .local v0, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 1064
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActivatingState ERROR no such apnContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in this dc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1066
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    invoke-static {v2, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto :goto_ab

    .line 1068
    :cond_a6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->deferMessage(Landroid/os/Message;)V

    .line 1070
    :goto_ab
    const/4 v1, 0x1

    .line 1071
    .local v1, "retVal":Z
    move v0, v1

    goto/16 :goto_385

    .line 1073
    .end local v0    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v1    # "retVal":Z
    :sswitch_af
    const/4 v0, 0x0

    .line 1075
    .local v0, "dataCallResponse":Landroid/telephony/data/DataCallResponse;
    const/4 v2, 0x0

    .line 1077
    .local v2, "resultCode":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-eqz v3, :cond_c5

    .line 1078
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1079
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/telephony/data/DataCallResponse;

    .line 1080
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .local v4, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    goto :goto_d9

    .line 1082
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :cond_c5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1083
    .restart local v4    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "data_call_response"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/telephony/data/DataCallResponse;

    .line 1085
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1088
    :goto_d9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v3, v2, v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->onSetupConnectionCompleted(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    move-result-object v3

    .line 1090
    .local v3, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    if-eq v3, v5, :cond_10f

    .line 1091
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v5

    if-eq v5, v4, :cond_10f

    .line 1092
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DcActivatingState: WEIRD mConnectionsParams:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " != cp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1096
    :cond_10f
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v5

    if-eqz v5, :cond_135

    .line 1097
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DcActivatingState onSetupConnectionCompleted result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " dc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1100
    :cond_135
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v5, :cond_14f

    .line 1101
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSetupConnectionCompleted result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1103
    :cond_14f
    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$3;->$SwitchMap$com$android$internal$telephony$dataconnection$DataConnection$SetupResult:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, -0x1

    packed-switch v5, :pswitch_data_3a8

    .line 1203
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v5, "Unknown SetupResult, should not happen"

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1199
    :pswitch_163
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActivatingState: stale EVENT_SETUP_DATA_CONNECTION_DONE tag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " != mTag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v6, v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->loge(Ljava/lang/String;)V

    .line 1201
    goto/16 :goto_328

    .line 1155
    :pswitch_189
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getSuggestedRetryDelay(Landroid/telephony/data/DataCallResponse;)J

    move-result-wide v7

    .line 1156
    .local v7, "delay":J
    const-wide/16 v9, -0x1

    .line 1157
    .local v9, "retryTime":J
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v1, v7, v11

    if-nez v1, :cond_1a0

    .line 1158
    const-wide v9, 0x7fffffffffffffffL

    goto :goto_1ac

    .line 1159
    :cond_1a0
    const-wide/16 v11, 0x0

    cmp-long v1, v7, v11

    if-ltz v1, :cond_1ac

    .line 1160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long v9, v11, v7

    .line 1162
    :cond_1ac
    :goto_1ac
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1163
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mHandoverFailureMode:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v1

    iget v5, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v11

    .line 1162
    invoke-static {v1, v5, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->calculateNewRetryRequestType(III)I

    move-result v1

    .line 1164
    .local v1, "newRequestType":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataThrottler()Lcom/android/internal/telephony/dataconnection/DataThrottler;

    move-result-object v5

    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v11

    invoke-virtual {v5, v11, v9, v10, v1}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->setRetryTime(IJI)V

    .line 1167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DcActivatingState: ERROR_DATA_SERVICE_SPECIFIC_ERROR  delay="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " result="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " result.isRadioRestartFailure="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1171
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    iget-object v13, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1172
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v13}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v13

    .line 1171
    invoke-static {v11, v12, v13}, Landroid/telephony/DataFailCause;->isRadioRestartFailure(Landroid/content/Context;II)Z

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " isPermanentFailure="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1174
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v11

    iget v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFailure(I)Z

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1175
    .local v5, "str":Ljava/lang/String;
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v11

    if-eqz v11, :cond_22b

    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v11, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1176
    :cond_22b
    iget-object v11, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v11, :cond_234

    iget-object v11, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v11, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1179
    :cond_234
    iget v11, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    const/16 v12, -0x3e8

    if-ne v11, v12, :cond_25d

    .line 1181
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->onSetupFallbackConnection(Landroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    invoke-static {v6, v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Landroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 1183
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I
    invoke-static {v6, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3802(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1184
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const v11, 0x4002c

    iget v12, v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v6, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->deferMessage(Landroid/os/Message;)V

    .line 1185
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$3900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_328

    .line 1191
    :cond_25d
    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v11

    iget v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    .line 1192
    if-eqz v0, :cond_26c

    .line 1193
    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result v6

    goto :goto_26d

    .line 1194
    :cond_26c
    nop

    .line 1191
    :goto_26d
    invoke-virtual {v11, v4, v12, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;II)V

    .line 1195
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1197
    goto/16 :goto_328

    .line 1142
    .end local v1    # "newRequestType":I
    .end local v5    # "str":Ljava/lang/String;
    .end local v7    # "delay":J
    .end local v9    # "retryTime":J
    :pswitch_27b
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_288

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v5, "DcActivatingState: NO_DEFAULT_DATA"

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1145
    :cond_288
    :pswitch_288
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->tearDownData(Ljava/lang/Object;)V

    .line 1146
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1147
    goto/16 :goto_328

    .line 1122
    :pswitch_298
    const-wide/16 v7, -0x1

    .line 1123
    .local v7, "retry":J
    iget-object v1, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v1, :cond_2b7

    .line 1124
    const-wide v7, 0x7fffffffffffffffL

    .line 1125
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataThrottler()Lcom/android/internal/telephony/dataconnection/DataThrottler;

    move-result-object v1

    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1126
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v5

    const/4 v9, 0x1

    .line 1125
    invoke-virtual {v1, v5, v7, v8, v9}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->setRetryTime(IJI)V

    .line 1129
    :cond_2b7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcActivatingState: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    .line 1130
    invoke-static {v5}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " retry="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "logStr":Ljava/lang/String;
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2e1

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1133
    :cond_2e1
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v5, :cond_2ea

    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1134
    :cond_2ea
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v5

    iget v9, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    invoke-virtual {v5, v4, v9, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;II)V

    .line 1136
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1137
    goto :goto_328

    .line 1115
    .end local v1    # "logStr":Ljava/lang/String;
    .end local v7    # "retry":J
    :pswitch_2ff
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    iget v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;II)V

    .line 1117
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1118
    goto :goto_328

    .line 1106
    :pswitch_314
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDcFailCause:I
    invoke-static {v5, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2102(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)I

    .line 1108
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->resetRetryCount()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 1109
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$2300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1110
    nop

    .line 1205
    :goto_328
    const/4 v1, 0x1

    .line 1206
    .local v1, "retVal":Z
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object v5

    iget v7, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1208
    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getApnTypeBitmask()I
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)I

    move-result v8

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$4300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v9

    iget v10, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    .line 1207
    move-object v6, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onSetupDataCallResponse(Landroid/telephony/data/DataCallResponse;IIII)V

    .line 1210
    move v0, v1

    goto :goto_385

    .line 1046
    .end local v0    # "dataCallResponse":Landroid/telephony/data/DataCallResponse;
    .end local v1    # "retVal":Z
    .end local v2    # "resultCode":I
    .end local v3    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .end local v4    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_349
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1047
    .local v0, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_37e

    .line 1049
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState: mApnContexts size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1054
    .end local v0    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :cond_37e
    :sswitch_37e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcActivatingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->deferMessage(Landroid/os/Message;)V

    .line 1055
    const/4 v0, 0x1

    .line 1056
    .local v0, "retVal":Z
    nop

    .line 1231
    :goto_385
    return v0

    :sswitch_data_386
    .sparse-switch
        0x40000 -> :sswitch_349
        0x40001 -> :sswitch_af
        0x40004 -> :sswitch_6c
        0x4000b -> :sswitch_37e
        0x40028 -> :sswitch_34
        0x40029 -> :sswitch_34
        0x4002b -> :sswitch_2c
        0x4002d -> :sswitch_34
    .end sparse-switch

    :pswitch_data_3a8
    .packed-switch 0x1
        :pswitch_314
        :pswitch_2ff
        :pswitch_298
        :pswitch_27b
        :pswitch_288
        :pswitch_189
        :pswitch_163
    .end packed-switch
.end method

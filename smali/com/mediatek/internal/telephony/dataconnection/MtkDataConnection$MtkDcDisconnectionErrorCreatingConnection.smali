.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;
.super Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MtkDcDisconnectionErrorCreatingConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method protected constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1719
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1724
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    .line 1749
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;->processMessage(Landroid/os/Message;)Z

    move-result v2

    .local v2, "retVal":Z
    goto :goto_73

    .line 1726
    .end local v2    # "retVal":Z
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1727
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1728
    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v3, v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    if-ne v2, v3, :cond_47

    .line 1729
    const-string v2, "DcDisconnectionErrorCreatingConnection msg.what=EVENT_DEACTIVATE_DONE"

    .line 1731
    .local v2, "str":Ljava/lang/String;
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1732
    :cond_27
    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v3, :cond_30

    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1735
    :cond_30
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v3

    const v4, 0x10002

    const/4 v5, -0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;II)V

    .line 1738
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1739
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_71

    .line 1740
    :cond_47
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1741
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDisconnectionErrorCreatingConnection stale EVENT_DEACTIVATE_DONE dp.tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectionErrorCreatingConnection;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v4, v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1745
    :cond_71
    :goto_71
    const/4 v2, 0x1

    .line 1746
    .local v2, "retVal":Z
    nop

    .line 1752
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :goto_73
    return v2

    :pswitch_data_74
    .packed-switch 0x40003
        :pswitch_a
    .end packed-switch
.end method

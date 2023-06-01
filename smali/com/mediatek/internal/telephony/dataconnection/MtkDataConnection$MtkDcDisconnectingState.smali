.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;
.super Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MtkDcDisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method protected constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1756
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1761
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8a

    .line 1782
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;->processMessage(Landroid/os/Message;)Z

    move-result v3

    .local v3, "retVal":Z
    goto/16 :goto_89

    .line 1763
    .end local v3    # "retVal":Z
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1764
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1766
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDisconnectingState msg.what=EVENT_DEACTIVATE_DONE RefCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1767
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1768
    .local v2, "str":Ljava/lang/String;
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1769
    :cond_39
    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v3, :cond_42

    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1770
    :cond_42
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v4, v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    if-ne v3, v4, :cond_5d

    .line 1773
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 1774
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_87

    .line 1776
    :cond_5d
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v3

    if-eqz v3, :cond_87

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcDisconnectState stale EVENT_DEACTIVATE_DONE dp.tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mTag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDisconnectingState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v5, v5, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1779
    :cond_87
    :goto_87
    const/4 v3, 0x1

    .line 1780
    .restart local v3    # "retVal":Z
    nop

    .line 1785
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v2    # "str":Ljava/lang/String;
    :goto_89
    return v3

    :pswitch_data_8a
    .packed-switch 0x40003
        :pswitch_b
    .end packed-switch
.end method

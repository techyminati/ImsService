.class Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "MtkIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 85
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyPending(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;Ljava/lang/Object;)V
    .registers 5
    .param p1, "request"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .param p2, "result"    # Ljava/lang/Object;

    .line 132
    if-eqz p1, :cond_13

    .line 133
    monitor-enter p1

    .line 134
    :try_start_3
    iput-object p2, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    .line 135
    iget-object v0, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit p1

    goto :goto_13

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0

    .line 139
    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 89
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    .line 92
    .local v1, "request":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_ba

    goto/16 :goto_b8

    .line 97
    :pswitch_f
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    const-string v3, "EVENT_UPDATE_DONE"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 98
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 99
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x1

    if-nez v2, :cond_22

    move v2, v3

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    .line 100
    .local v2, "success":Z
    :goto_23
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_UPDATE_DONE success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 101
    if-nez v2, :cond_5e

    .line 102
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_4f

    .line 103
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    # invokes: Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getErrorCauseFromException(Lcom/android/internal/telephony/CommandException;)I
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->access$200(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;Lcom/android/internal/telephony/CommandException;)I

    move-result v4

    # setter for: Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->access$102(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;I)I

    goto :goto_63

    .line 106
    :cond_4f
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    const-string v4, "Error : Unknow exception instance"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    const/16 v4, -0xa

    # setter for: Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->access$102(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;I)I

    goto :goto_63

    .line 111
    :cond_5e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    # setter for: Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->access$102(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;I)I

    .line 113
    :goto_63
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update done result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->access$100(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;Ljava/lang/Object;)V

    .line 115
    goto :goto_b8

    .line 117
    .end local v2    # "success":Z
    :pswitch_87
    const/4 v2, 0x0

    .line 118
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_92

    .line 119
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Ljava/util/List;

    goto :goto_aa

    .line 121
    :cond_92
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_LOAD_DONE: Cannot load ADN records; ex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 124
    :goto_aa
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;Ljava/lang/Object;)V

    .line 125
    goto :goto_b8

    .line 94
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :pswitch_ae
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;->this$0:Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->access$000(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    nop

    .line 129
    :goto_b8
    return-void

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_87
        :pswitch_f
    .end packed-switch
.end method

.class Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;
.super Landroid/os/Handler;
.source "MtkUiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    .line 129
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mDisposed:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->access$000(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " after dispose(); ignoring the message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->loge(Ljava/lang/String;)V

    .line 135
    return-void

    .line 139
    :cond_26
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandlerEx Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->log(Ljava/lang/String;)V

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a2

    .line 159
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_a0

    .line 144
    :pswitch_58
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->access$100(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 145
    :try_start_5f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->mFdnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->access$200(Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 146
    monitor-exit v0

    .line 147
    goto :goto_a0

    .line 146
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_6a

    throw v1

    .line 151
    :pswitch_6d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 152
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8d

    .line 153
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in SIM access with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;->loge(Ljava/lang/String;)V

    .line 155
    :cond_8d
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 156
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 157
    nop

    .line 161
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x65
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_58
    .end packed-switch
.end method

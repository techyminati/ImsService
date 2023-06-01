.class Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;
.super Landroid/os/Handler;
.source "IWlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

.field final synthetic val$this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;Landroid/os/Looper;Lcom/mediatek/internal/telephony/IWlanNetworkService;)V
    .registers 4
    .param p1, "this$1"    # Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 129
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    iput-object p3, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;->val$this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    # getter for: Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->access$200(Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkServiceCallback;

    .line 135
    .local v0, "callback":Landroid/telephony/NetworkServiceCallback;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_9e

    .line 164
    return-void

    .line 145
    :pswitch_12
    iget-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    .line 146
    # getter for: Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mWfcState:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->access$300(Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;)I

    move-result v2

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->createRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo;
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->access$400(Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;I)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 147
    .local v1, "netState":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v2, 0x0

    .line 150
    .local v2, "resultCode":I
    :try_start_1d
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling callback.onGetNetworkRegistrationStateComplete.resultCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", netState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", slotid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    .line 153
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->getSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$100(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v2, v1}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_4e} :catch_4f

    .line 159
    goto :goto_9c

    .line 157
    :catch_4f
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 161
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_9c

    .line 137
    .end local v1    # "netState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v2    # "resultCode":I
    :pswitch_69
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 138
    .local v1, "state":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IWLAN_REGISTRATION_STATE_CHANGED, slotid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->getSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$100(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    # setter for: Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->mWfcState:I
    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->access$302(Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;I)I

    .line 141
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWlanNetworkServiceProvider;->notifyNetworkRegistrationInfoChanged()V

    .line 142
    nop

    .line 166
    .end local v1    # "state":I
    :goto_9c
    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_69
        :pswitch_12
    .end packed-switch
.end method

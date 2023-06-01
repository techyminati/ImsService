.class Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;
.super Landroid/os/Handler;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;-><init>(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

.field final synthetic val$this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;Landroid/os/Looper;Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;)V
    .registers 4
    .param p1, "this$1"    # Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 101
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->val$this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->access$000(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataServiceCallback;

    .line 106
    .local v0, "callback":Landroid/telephony/data/DataServiceCallback;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 107
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_8c

    .line 142
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->access$200(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;Ljava/lang/String;)V

    goto :goto_8b

    .line 139
    :pswitch_32
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->notifyApnUnthrottled(Ljava/lang/String;)V

    .line 140
    goto :goto_8b

    .line 136
    :pswitch_3c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->toResultCode(Ljava/lang/Throwable;)I
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->access$100(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataServiceCallback;->onHandoverCancelled(I)V

    .line 137
    goto :goto_8b

    .line 133
    :pswitch_48
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->toResultCode(Ljava/lang/Throwable;)I
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->access$100(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataServiceCallback;->onHandoverStarted(I)V

    .line 134
    goto :goto_8b

    .line 130
    :pswitch_54
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->notifyDataCallListChanged(Ljava/util/List;)V

    .line 131
    goto :goto_8b

    .line 121
    :pswitch_5e
    nop

    .line 122
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_64

    .line 123
    goto :goto_65

    .line 124
    :cond_64
    move v3, v4

    .line 125
    :goto_65
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6b

    .line 126
    const/4 v2, 0x0

    goto :goto_6f

    :cond_6b
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 121
    :goto_6f
    invoke-virtual {v0, v3, v2}, Landroid/telephony/data/DataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V

    .line 128
    goto :goto_8b

    .line 116
    :pswitch_73
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_78

    .line 117
    goto :goto_79

    .line 118
    :cond_78
    move v3, v4

    .line 116
    :goto_79
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    .line 119
    goto :goto_8b

    .line 109
    :pswitch_7d
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/DataCallResponse;

    .line 110
    .local v2, "response":Landroid/telephony/data/DataCallResponse;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_86

    .line 111
    goto :goto_87

    .line 112
    :cond_86
    move v3, v4

    .line 110
    :goto_87
    invoke-virtual {v0, v3, v2}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 114
    nop

    .line 144
    .end local v2    # "response":Landroid/telephony/data/DataCallResponse;
    :goto_8b
    return-void

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_73
        :pswitch_5e
        :pswitch_54
        :pswitch_48
        :pswitch_3c
        :pswitch_32
    .end packed-switch
.end method

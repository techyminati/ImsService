.class Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;
.super Landroid/os/Handler;
.source "MtkQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;

.field final synthetic val$this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;Landroid/os/Looper;Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;)V
    .registers 4
    .param p1, "this$1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 97
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;

    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;->val$this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "message"    # Landroid/os/Message;

    .line 101
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 102
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_9a

    .line 128
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;Ljava/lang/String;)V

    .line 129
    return-void

    .line 109
    :pswitch_24
    const/4 v1, 0x2

    .line 110
    .local v1, "idx":I
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 111
    .local v2, "availabilityUpdate":[I
    array-length v3, v2

    .line 112
    .local v3, "length":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v4, "qualifiedNetworkTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    aget v5, v2, v5

    .line 114
    .local v5, "mode":I
    const/4 v6, 0x1

    aget v6, v2, v6

    .line 116
    .local v6, "apnTypes":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE_QUALIFIED_NETWORKS mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " apnTypes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;Ljava/lang/String;)V

    .line 118
    move v7, v1

    .local v7, "i":I
    :goto_56
    if-ge v7, v3, :cond_92

    .line 119
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;

    aget v9, v2, v7

    .line 120
    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->converNetworkType(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 119
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "availabilityUpdate["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;

    aget v11, v2, v7

    .line 122
    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->converNetworkType(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 121
    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;Ljava/lang/String;)V

    .line 118
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    .line 125
    .end local v7    # "i":I
    :cond_92
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;->this$1:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;

    invoke-virtual {v7, v6, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->updateQualifiedNetworkTypes(ILjava/util/List;)V

    .line 126
    nop

    .line 131
    .end local v1    # "idx":I
    .end local v2    # "availabilityUpdate":[I
    .end local v3    # "length":I
    .end local v4    # "qualifiedNetworkTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "mode":I
    .end local v6    # "apnTypes":I
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_24
    .end packed-switch
.end method

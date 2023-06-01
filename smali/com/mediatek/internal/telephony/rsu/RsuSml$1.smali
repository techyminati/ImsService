.class Lcom/mediatek/internal/telephony/rsu/RsuSml$1;
.super Landroid/os/Handler;
.source "RsuSml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/rsu/RsuSml;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/rsu/RsuSml;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/rsu/RsuSml;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/rsu/RsuSml;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 98
    iput-object p1, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml$1;->this$0:Lcom/mediatek/internal/telephony/rsu/RsuSml;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 102
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml$1;->this$0:Lcom/mediatek/internal/telephony/rsu/RsuSml;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/rsu/RsuSml;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/rsu/RsuSml;->access$000(Lcom/mediatek/internal/telephony/rsu/RsuSml;Ljava/lang/String;)V

    .line 103
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_66

    .line 120
    iget-object v1, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml$1;->this$0:Lcom/mediatek/internal/telephony/rsu/RsuSml;

    const-string v2, "Unknown urc or urc that need not handle"

    # invokes: Lcom/mediatek/internal/telephony/rsu/RsuSml;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/rsu/RsuSml;->access$100(Lcom/mediatek/internal/telephony/rsu/RsuSml;Ljava/lang/String;)V

    goto :goto_65

    .line 105
    :pswitch_29
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;

    .line 106
    .local v1, "rri":Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 107
    .local v2, "cb":Landroid/os/Message;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3e

    .line 108
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_61

    .line 110
    :cond_3e
    const/4 v3, -0x3

    .line 111
    .local v3, "status":I
    if-eqz v1, :cond_59

    .line 112
    iget v3, v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;->status:I

    .line 113
    iget-object v4, p0, Lcom/mediatek/internal/telephony/rsu/RsuSml$1;->this$0:Lcom/mediatek/internal/telephony/rsu/RsuSml;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSU_MESSAGE_GET_LOCK_STATUS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/rsu/RsuSml;->logi(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/rsu/RsuSml;->access$100(Lcom/mediatek/internal/telephony/rsu/RsuSml;Ljava/lang/String;)V

    .line 115
    :cond_59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 117
    .end local v3    # "status":I
    :goto_61
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 118
    nop

    .line 123
    .end local v1    # "rri":Lvendor/mediatek/hardware/mtkradioex/V3_0/RsuResponseInfo;
    .end local v2    # "cb":Landroid/os/Message;
    :goto_65
    return-void

    :pswitch_data_66
    .packed-switch 0x64
        :pswitch_29
    .end packed-switch
.end method

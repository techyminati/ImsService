.class Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$MyHandler;
.super Landroid/os/Handler;
.source "ImsSelfActivatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 133
    iput-object p1, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$MyHandler;->this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    .line 134
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 135
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    goto :goto_44

    .line 157
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$MyHandler;->this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    # invokes: Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->dialAnyway()V
    invoke-static {v0}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->access$500(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)V

    .line 158
    goto :goto_44

    .line 141
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 142
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, 0x2

    aget v1, v1, v2

    .line 143
    .local v1, "socketId":I
    const-string v3, "ImsExtSelfActivatorImpl"

    const-string v4, "handle EVENT_IMS_REGISTRATION_INFO"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v4, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$MyHandler;->this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    # getter for: Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mPhoneId:I
    invoke-static {v4}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->access$400(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)I

    move-result v4

    if-eq v1, v4, :cond_2c

    .line 146
    const-string v2, "Socket id and phone id not matched"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 150
    :cond_2c
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_44

    .line 152
    iget-object v3, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$MyHandler;->this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    # invokes: Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->dialAnyway()V
    invoke-static {v3}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->access$500(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)V

    .line 153
    iget-object v3, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$MyHandler;->this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    # getter for: Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->access$600(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "socketId":I
    :cond_44
    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

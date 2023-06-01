.class Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;
.super Landroid/os/Handler;
.source "MtkNetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkNetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkNetworkTypeController;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;Lcom/mediatek/internal/telephony/MtkNetworkTypeController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/MtkNetworkTypeController;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/MtkNetworkTypeController$1;

    .line 141
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;-><init>(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkNetworkTypeController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9a

    goto/16 :goto_99

    .line 169
    :pswitch_1f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    # getter for: Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->access$500(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;)Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    .line 170
    goto :goto_99

    .line 148
    :pswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 149
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_92

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_36

    goto :goto_92

    .line 152
    :cond_36
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 153
    .local v2, "info":[I
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5a

    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5a

    .line 154
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_5G_ICON_INFO_CHANGED data size wrong: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->access$200(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;Ljava/lang/String;)V

    .line 155
    return-void

    .line 157
    :cond_5a
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 158
    .local v3, "display":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_5G_ICON_INFO_CHANGED: new= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", oldDisplay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    .line 159
    # getter for: Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mDisplayNrAdvanced:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->access$300(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    # getter for: Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mDisplayNrAdvanced:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->access$300(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;)I

    move-result v1

    if-eq v3, v1, :cond_91

    .line 161
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    # setter for: Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->mDisplayNrAdvanced:I
    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->access$302(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;I)I

    .line 162
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    # invokes: Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->updateOverrideNetworkType()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->access$400(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;)V

    .line 165
    .end local v2    # "info":[I
    .end local v3    # "display":I
    :cond_91
    goto :goto_99

    .line 150
    :cond_92
    :goto_92
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkNetworkTypeController$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkNetworkTypeController;

    const-string v2, "EVENT_5G_ICON_INFO_CHANGED exception"

    # invokes: Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkNetworkTypeController;->access$100(Lcom/mediatek/internal/telephony/MtkNetworkTypeController;Ljava/lang/String;)V

    .line 174
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_99
    return-void

    :pswitch_data_9a
    .packed-switch 0x64
        :pswitch_29
        :pswitch_1f
    .end packed-switch
.end method

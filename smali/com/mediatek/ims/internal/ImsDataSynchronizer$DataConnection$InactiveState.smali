.class Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;
.super Lcom/android/internal/util/State;
.source "ImsDataSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Lcom/mediatek/ims/internal/ImsDataSynchronizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
    .param p2, "x1"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$1;

    .line 212
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v1, "InactiveState"

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$602(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V

    .line 217
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public exit()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 228
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$800(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not handle the messag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$800(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->loge(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x0

    .local v0, "retVal":Z
    goto :goto_0

    .line 255
    .end local v0    # "retVal":Z
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->clear()V

    .line 256
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1500(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V

    .line 257
    const/4 v0, 0x1

    .line 258
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 246
    .end local v0    # "retVal":Z
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1400(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v2, "handle pdn abort requested"

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1100(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;II)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1500(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V

    .line 251
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1600(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;I)V

    .line 252
    const/4 v0, 0x1

    .line 253
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 241
    .end local v0    # "retVal":Z
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1300(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 242
    const/4 v0, 0x1

    .line 243
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 232
    .end local v0    # "retVal":Z
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$900(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$1000(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0, v1, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1100(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;II)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1200(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 238
    :cond_2
    const/4 v0, 0x1

    .line 239
    .restart local v0    # "retVal":Z
    nop

    .line 265
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

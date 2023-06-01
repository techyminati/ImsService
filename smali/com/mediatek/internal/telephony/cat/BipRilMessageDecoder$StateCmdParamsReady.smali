.class Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;
.super Lcom/android/internal/telephony/State;
.source "BipRilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateCmdParamsReady"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;

    .line 174
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 178
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->access$400(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/ResultCode;->fromInt(I)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 179
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->access$400(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mData:Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->access$400(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->sendCmdForExecution(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->access$500(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V

    .line 181
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->access$600(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_4b

    .line 183
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateCmdParamsReady expecting CMD_PARAMS_READY=2 got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->deferMessage(Landroid/os/Message;)V

    .line 187
    :goto_4b
    const/4 v0, 0x1

    return v0
.end method

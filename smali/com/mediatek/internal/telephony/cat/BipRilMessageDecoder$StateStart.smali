.class Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;
.super Lcom/android/internal/telephony/State;
.source "BipRilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;->this$0:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$1;

    .line 159
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;-><init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 163
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;->this$0:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->decodeMessageParams(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)Z
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->access$200(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 164
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateStart;->this$0:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    # getter for: Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->access$300(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;)Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_31

    .line 167
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateStart unexpected expecting START=1 got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    :cond_31
    :goto_31
    return v1
.end method

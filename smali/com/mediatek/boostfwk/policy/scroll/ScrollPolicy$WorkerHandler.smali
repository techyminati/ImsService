.class Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;
.super Landroid/os/Handler;
.source "ScrollPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field public static final MSG_RELEASE_BEGIN:I = 0x1

.field public static final MSG_RELEASE_END:I = 0x2

.field public static final MSG_RELEASE_FPS_CHECK:I = 0x3

.field public static final MSG_RELEASE_FPS_TIMEOUT:I = 0x4

.field public static final MSG_SBE_DELAY_RELEASE_FPSGO:I = 0xb

.field public static final MSG_SBE_DISABLE_FPSGO_COUNT_DOWN:I = 0xc

.field public static final MSG_SBE_FLING_POLICY_BEGIN:I = 0x8

.field public static final MSG_SBE_FLING_POLICY_END:I = 0x9

.field public static final MSG_SBE_FLING_POLICY_FLAG_END:I = 0xa

.field public static final MSG_SBE_POLICY_BEGIN:I = 0x5

.field public static final MSG_SBE_POLICY_END:I = 0x6

.field public static final MSG_SBE_POLICY_FLAG_END:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;


# direct methods
.method constructor <init>(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 154
    iput-object p1, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    .line 155
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_a2

    goto/16 :goto_a0

    .line 210
    :pswitch_9
    sput-boolean v2, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->useFPSGo:Z

    .line 211
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # getter for: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->scrollingFingStep:I
    invoke-static {v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$700(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;)I

    move-result v1

    # invokes: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->enableFPSGo(ZI)V
    invoke-static {v0, v2, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$500(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;ZI)V

    .line 212
    goto/16 :goto_a0

    .line 205
    :pswitch_16
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # setter for: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgo:Z
    invoke-static {v0, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$802(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)Z

    .line 206
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # getter for: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgoStep:I
    invoke-static {v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$900(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;)I

    move-result v1

    # invokes: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->enableFPSGo(ZI)V
    invoke-static {v0, v2, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$500(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;ZI)V

    .line 207
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    const/4 v1, -0x1

    # setter for: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->waitingForReleaseFpsgoStep:I
    invoke-static {v0, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$902(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;I)I

    .line 208
    goto/16 :goto_a0

    .line 197
    :pswitch_2c
    # getter for: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I
    invoke-static {}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$600()I

    move-result v0

    if-lez v0, :cond_a0

    .line 198
    # setter for: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mFlingPolicyExeCount:I
    invoke-static {v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$602(I)I

    .line 199
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # getter for: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->scrollingFingStep:I
    invoke-static {v0}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$700(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;)I

    move-result v1

    # invokes: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->enableFPSGo(ZI)V
    invoke-static {v0, v2, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$500(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;ZI)V

    .line 200
    invoke-static {}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->getInstance()Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    move-result-object v0

    const-string v1, "MSG_SBE_FLING_POLICY_FLAG_END"

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->setScrolling(ZLjava/lang/String;)V

    goto :goto_a0

    .line 186
    :pswitch_48
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # invokes: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mtkScrollingFlingPolicy(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$300(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)V

    .line 187
    goto :goto_a0

    .line 181
    :pswitch_4e
    invoke-static {}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->getInstance()Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    move-result-object v0

    const-string v2, "MSG_SBE_FLING_POLICY_BEGIN"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->setScrolling(ZLjava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # invokes: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mtkScrollingFlingPolicy(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$300(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)V

    .line 184
    goto :goto_a0

    .line 189
    :pswitch_5d
    # getter for: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPolicyExeCount:I
    invoke-static {}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$400()I

    move-result v0

    if-lez v0, :cond_a0

    .line 190
    # setter for: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mPolicyExeCount:I
    invoke-static {v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$402(I)I

    .line 191
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # invokes: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->enableFPSGo(ZI)V
    invoke-static {v0, v2, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$500(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;ZI)V

    .line 192
    invoke-static {}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->getInstance()Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    move-result-object v0

    const-string v1, "MSG_SBE_POLICY_FLAG_END"

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->setScrolling(ZLjava/lang/String;)V

    goto :goto_a0

    .line 178
    :pswitch_75
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # invokes: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mtkScrollingPolicy(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$200(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)V

    .line 179
    goto :goto_a0

    .line 174
    :pswitch_7b
    invoke-static {}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->getInstance()Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;

    move-result-object v0

    const-string v2, "MSG_SBE_POLICY_BEGIN"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/boostfwk/identify/scroll/ScrollIdentify;->setScrolling(ZLjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # invokes: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->mtkScrollingPolicy(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$200(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)V

    .line 176
    goto :goto_a0

    .line 171
    :pswitch_8a
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # invokes: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->releaseTargetFPSInternel(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$000(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)V

    .line 172
    goto :goto_a0

    .line 168
    :pswitch_90
    # setter for: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->isCorrectFPS:Z
    invoke-static {v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$102(Z)Z

    .line 169
    goto :goto_a0

    .line 165
    :pswitch_94
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # invokes: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->releaseTargetFPSInternel(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$000(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)V

    .line 166
    goto :goto_a0

    .line 162
    :pswitch_9a
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;

    # invokes: Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->releaseTargetFPSInternel(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;->access$000(Lcom/mediatek/boostfwk/policy/scroll/ScrollPolicy;Z)V

    .line 163
    nop

    .line 216
    :cond_a0
    :goto_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_94
        :pswitch_90
        :pswitch_8a
        :pswitch_7b
        :pswitch_75
        :pswitch_5d
        :pswitch_4e
        :pswitch_48
        :pswitch_2c
        :pswitch_16
        :pswitch_9
    .end packed-switch
.end method

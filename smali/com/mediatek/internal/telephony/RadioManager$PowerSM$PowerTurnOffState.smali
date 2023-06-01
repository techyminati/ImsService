.class Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;
.super Lcom/android/internal/telephony/State;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerTurnOffState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)V
    .registers 2

    .line 2113
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Lcom/mediatek/internal/telephony/RadioManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/RadioManager$1;

    .line 2113
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;-><init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 2116
    const-string v0, "RadioManager"

    const-string v1, "PowerTurnOffState: enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->waitForReady(Z)Z

    move-result v0

    if-nez v0, :cond_50

    .line 2118
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 2119
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->isCapabilitySwitching()Z

    move-result v0

    if-nez v0, :cond_50

    .line 2120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 2121
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v2

    # getter for: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$1500(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)I

    move-result v2

    # setter for: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemCause:I
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$1402(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;I)I

    .line 2122
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v2

    iget v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mPhoneBitMap:I

    # invokes: Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->access$1600(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    .line 2124
    :cond_50
    return-void
.end method

.method public exit()V
    .registers 3

    .line 2127
    const-string v0, "RadioManager"

    const-string v1, "PowerTurnOffState: exit"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_5a

    .line 2142
    :pswitch_22
    const-string v0, "un-expected event, stay at PowerTurnOffState"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 2139
    :pswitch_28
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2140
    goto :goto_58

    .line 2134
    :pswitch_3e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 2135
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2136
    nop

    .line 2144
    :goto_58
    return v2

    nop

    :pswitch_data_5a
    .packed-switch 0x3
        :pswitch_3e
        :pswitch_22
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

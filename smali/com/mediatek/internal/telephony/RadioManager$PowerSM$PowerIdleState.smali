.class Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;
.super Lcom/android/internal/telephony/State;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerIdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)V
    .registers 2

    .line 2008
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Lcom/mediatek/internal/telephony/RadioManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/RadioManager$1;

    .line 2008
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;-><init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 2011
    const-string v0, "RadioManager"

    const-string v1, "PowerIdleState: enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredModemPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-boolean v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentModemPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-boolean v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$1200(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Ljava/lang/String;)V

    .line 2014
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    if-eq v0, v1, :cond_7a

    .line 2015
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    if-eqz v0, :cond_65

    .line 2016
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_7a

    .line 2018
    :cond_65
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2021
    :cond_7a
    :goto_7a
    return-void
.end method

.method public exit()V
    .registers 3

    .line 2024
    const-string v0, "RadioManager"

    const-string v1, "PowerIdleState: exit"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 2028
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

    .line 2029
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "the same power state: "

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_192

    .line 2071
    :pswitch_24
    const-string v0, "un-expected event, stay at idle"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_191

    .line 2062
    :pswitch_2b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 2063
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    if-eq v0, v4, :cond_7a

    .line 2064
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    if-eqz v1, :cond_6b

    .line 2065
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    goto :goto_75

    :cond_6b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    .line 2064
    :goto_75
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_191

    .line 2067
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    goto/16 :goto_191

    .line 2052
    :pswitch_94
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 2053
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    if-eq v0, v1, :cond_191

    .line 2054
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    if-eqz v0, :cond_d7

    .line 2055
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_191

    .line 2057
    :cond_d7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_191

    .line 2045
    :pswitch_ee
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    if-eq v0, v4, :cond_11a

    .line 2046
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_191

    .line 2048
    :cond_11a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    goto :goto_191

    .line 2031
    :pswitch_133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    if-eq v0, v4, :cond_15f

    .line 2032
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_191

    .line 2034
    :cond_15f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.intent.action.MODEM_POWER_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2040
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "modemPower"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2041
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;->this$1:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$1300(Lcom/mediatek/internal/telephony/RadioManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2043
    .end local v0    # "intent":Landroid/content/Intent;
    nop

    .line 2073
    :cond_191
    :goto_191
    return v3

    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_133
        :pswitch_ee
        :pswitch_94
        :pswitch_24
        :pswitch_2b
    .end packed-switch
.end method

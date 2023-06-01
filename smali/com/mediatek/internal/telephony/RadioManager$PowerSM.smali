.class Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
.super Lcom/android/internal/telephony/StateMachine;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;,
        Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;,
        Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;
    }
.end annotation


# instance fields
.field private mCurrentModemCause:I

.field public mCurrentModemPower:Z

.field private mDesiredModemCause:I

.field public mDesiredModemPower:Z

.field protected mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

.field protected mPhoneBitMap:I

.field protected mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

.field protected mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

.field private self:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/RadioManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/RadioManager;Ljava/lang/String;)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;

    .line 1936
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    .line 1937
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;)V

    .line 1916
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->self:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    .line 1918
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;-><init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Lcom/mediatek/internal/telephony/RadioManager$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    .line 1919
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;-><init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Lcom/mediatek/internal/telephony/RadioManager$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    .line 1920
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;-><init>(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Lcom/mediatek/internal/telephony/RadioManager$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    .line 1938
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 1939
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 1940
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemCause:I

    .line 1941
    iput p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    .line 1944
    iget-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->addState(Lcom/android/internal/telephony/State;)V

    .line 1945
    iget-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOnState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOnState;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->addState(Lcom/android/internal/telephony/State;)V

    .line 1946
    iget-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mTurnOffState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerTurnOffState;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->addState(Lcom/android/internal/telephony/State;)V

    .line 1947
    iget-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mIdleState:Lcom/mediatek/internal/telephony/RadioManager$PowerSM$PowerIdleState;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 1948
    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1915
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p1, "x1"    # I

    .line 1915
    iput p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemCause:I

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    .line 1915
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 1915
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->updateModemPowerState(ZII)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .param p1, "x1"    # I

    .line 1915
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    return-void
.end method

.method private sendEvent(I)V
    .registers 4
    .param p1, "event"    # I

    .line 2003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2005
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2006
    return-void
.end method

.method private sendEvent(II)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "arg1"    # I

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;->print(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1998
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1999
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2000
    return-void
.end method

.method private updateModemPowerState(ZII)V
    .registers 9
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I
    .param p3, "cause"    # I

    .line 1952
    xor-int/lit8 v0, p1, 0x1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 1953
    const-string v0, "Skip MODEM_POWER_OFF due to CryptKeeper mode"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->log(Ljava/lang/String;)V

    .line 1954
    return-void

    .line 1956
    :cond_f
    iput p2, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mPhoneBitMap:I

    .line 1957
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, p3, :cond_3c

    .line 1958
    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget-boolean v4, v4, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v4, v3, :cond_35

    .line 1959
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1960
    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    .line 1961
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$1100(Lcom/mediatek/internal/telephony/RadioManager;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1963
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    goto :goto_35

    .line 1966
    :cond_33
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 1969
    :cond_35
    :goto_35
    if-eqz p1, :cond_38

    move v2, v3

    :cond_38
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    goto :goto_81

    .line 1970
    :cond_3c
    if-ne v2, p3, :cond_4c

    .line 1972
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    .line 1973
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 1974
    if-eqz p1, :cond_48

    move v2, v3

    :cond_48
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    goto :goto_81

    .line 1975
    :cond_4c
    const/16 v1, 0x10

    if-ne v1, p3, :cond_5b

    .line 1977
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    .line 1978
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 1979
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    goto :goto_81

    .line 1980
    :cond_5b
    const/16 v1, 0x8

    if-ne v1, p3, :cond_6d

    .line 1982
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemCause:I

    .line 1983
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 1984
    if-eqz p1, :cond_69

    move v2, v3

    :cond_69
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    goto :goto_81

    .line 1985
    :cond_6d
    const/16 v1, 0x40

    if-ne v1, p3, :cond_79

    .line 1987
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    .line 1988
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    .line 1989
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    goto :goto_81

    .line 1990
    :cond_79
    const/16 v0, 0x80

    if-ne v0, p3, :cond_81

    .line 1991
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V

    .line 1993
    :cond_81
    :goto_81
    return-void
.end method

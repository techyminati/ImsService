.class Lcom/mediatek/internal/telephony/test/CallInfo;
.super Ljava/lang/Object;
.source "MtkSimulatedGsmCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/test/CallInfo$State;
    }
.end annotation


# instance fields
.field mIsMT:Z

.field mIsMpty:Z

.field mNumber:Ljava/lang/String;

.field mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field mTOA:I


# direct methods
.method constructor <init>(ZLcom/mediatek/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V
    .registers 7
    .param p1, "isMT"    # Z
    .param p2, "state"    # Lcom/mediatek/internal/telephony/test/CallInfo$State;
    .param p3, "isMpty"    # Z
    .param p4, "number"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMT:Z

    .line 53
    iput-object p2, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 54
    iput-boolean p3, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    .line 55
    iput-object p4, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mNumber:Ljava/lang/String;

    .line 57
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1f

    .line 58
    const/16 v0, 0x91

    iput v0, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mTOA:I

    goto :goto_23

    .line 60
    :cond_1f
    const/16 v0, 0x81

    iput v0, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mTOA:I

    .line 62
    :goto_23
    return-void
.end method

.method static createIncomingCall(Ljava/lang/String;)Lcom/mediatek/internal/telephony/test/CallInfo;
    .registers 5
    .param p0, "number"    # Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/mediatek/internal/telephony/test/CallInfo;

    sget-object v1, Lcom/mediatek/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, p0}, Lcom/mediatek/internal/telephony/test/CallInfo;-><init>(ZLcom/mediatek/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V

    return-object v0
.end method

.method static createOutgoingCall(Ljava/lang/String;)Lcom/mediatek/internal/telephony/test/CallInfo;
    .registers 4
    .param p0, "number"    # Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/mediatek/internal/telephony/test/CallInfo;

    sget-object v1, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2, p0}, Lcom/mediatek/internal/telephony/test/CallInfo;-><init>(ZLcom/mediatek/internal/telephony/test/CallInfo$State;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method isActiveOrHeld()Z
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method isConnecting()Z
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method isRinging()Z
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/mediatek/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method toCLCCLine(I)Ljava/lang/String;
    .registers 7
    .param p1, "index"    # I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+CLCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMT:Z

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_1c

    move-object v2, v3

    goto :goto_1d

    :cond_1c
    move-object v2, v4

    :goto_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 79
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/test/CallInfo$State;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-eqz v1, :cond_36

    goto :goto_37

    :cond_36
    move-object v3, v4

    :goto_37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mTOA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    return-object v0
.end method

.method toDriverCall(I)Lcom/android/internal/telephony/DriverCall;
    .registers 6
    .param p1, "index"    # I

    .line 87
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 89
    .local v0, "ret":Lcom/android/internal/telephony/DriverCall;
    iput p1, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 90
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMT:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 93
    :try_start_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/test/CallInfo$State;->value()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;
    :try_end_17
    .catch Lcom/android/internal/telephony/ATParseEx; {:try_start_b .. :try_end_17} :catch_2b

    .line 96
    nop

    .line 98
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 99
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 100
    iget v1, p0, Lcom/mediatek/internal/telephony/test/CallInfo;->mTOA:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 102
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 104
    return-object v0

    .line 94
    :catch_2b
    move-exception v1

    .line 95
    .local v1, "ex":Lcom/android/internal/telephony/ATParseEx;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "should never happen"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

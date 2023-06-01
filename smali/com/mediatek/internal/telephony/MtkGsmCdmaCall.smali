.class public Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;
.super Lcom/android/internal/telephony/GsmCdmaCall;
.source "MtkGsmCdmaCall.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V
    .registers 2
    .param p1, "owner"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    .line 50
    return-void
.end method


# virtual methods
.method public isMultiparty()Z
    .registers 8

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "discConn":I
    const/4 v1, 0x0

    .line 59
    .local v1, "isMptyCall":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_a
    if-ltz v2, :cond_21

    .line 60
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 62
    .local v4, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_1e

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 59
    .end local v4    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 67
    .end local v2    # "j":I
    :cond_21
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v3, :cond_2b

    .line 68
    const/4 v1, 0x0

    goto :goto_4b

    .line 69
    :cond_2b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_4a

    .line 70
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-gt v2, v3, :cond_3e

    .line 71
    const/4 v1, 0x0

    goto :goto_4b

    .line 72
    :cond_3e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_48

    .line 73
    const/4 v1, 0x0

    goto :goto_4b

    .line 75
    :cond_48
    const/4 v1, 0x1

    goto :goto_4b

    .line 78
    :cond_4a
    const/4 v1, 0x0

    .line 81
    :goto_4b
    return v1
.end method

.method public onHangupLocal()V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_9

    .line 88
    return-void

    .line 90
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 91
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    .line 92
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    goto :goto_11

    .line 96
    :cond_24
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;->getConnectionsCount()I

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 97
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 100
    :cond_38
    return-void
.end method

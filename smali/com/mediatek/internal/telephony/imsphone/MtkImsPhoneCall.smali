.class public Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
.source "MtkImsPhoneCall.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsPhoneCall"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p2, "context"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public hangupIfAlive(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 75
    const-string v0, "MtkImsPhoneCall"

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 77
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupIfAlive with reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;->hangupWithCause(I)V
    :try_end_21
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_a .. :try_end_21} :catch_22

    .line 81
    goto :goto_37

    .line 79
    :catch_22
    move-exception v1

    .line 80
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " hangupIfActive: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_37
    :goto_37
    return-void
.end method

.method public hangupWithCause(I)V
    .registers 4
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangup with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsPhoneCall"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;I)V

    .line 92
    return-void
.end method

.method protected makeTempImsPhoneCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .registers 4

    .line 66
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "UK"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    return-object v0
.end method

.method resetRingbackTone()V
    .registers 2

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;->mIsRingbackTonePlaying:Z

    .line 61
    return-void
.end method

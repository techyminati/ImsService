.class public Lcom/mediatek/internal/telephony/MtkCallManager;
.super Lcom/android/internal/telephony/CallManager;
.source "MtkCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkCallManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkCallManager;

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkCallManager;->hasMoreThanOneRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkCallManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkCallManager;

    .line 51
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object v0
.end method


# virtual methods
.method protected registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    .line 82
    .local v0, "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    if-eqz v0, :cond_12

    .line 83
    const-string v1, "CallManager"

    const-string v2, "This phone has already been registered."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 88
    :cond_12
    new-instance v1, Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;-><init>(Lcom/mediatek/internal/telephony/MtkCallManager;)V

    move-object v0, v1

    .line 89
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 96
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    const/16 v1, 0x66

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 100
    const/16 v1, 0x67

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    const/16 v1, 0x68

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    const/16 v1, 0x69

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    const/16 v1, 0x6a

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    const/16 v1, 0x6b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    const/16 v1, 0x6d

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    const/16 v1, 0x6e

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 114
    const/16 v1, 0x70

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    const/16 v1, 0x71

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    const/16 v1, 0x72

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    const/16 v2, 0x75

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    const/16 v1, 0x76

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkCallManager;->mRegistrantidentifier:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    const/16 v1, 0x77

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    const/16 v1, 0x6f

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    const/16 v1, 0x74

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    const/16 v1, 0x6c

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    const/16 v1, 0x73

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 139
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    const/16 v1, 0x7a

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    return-void
.end method

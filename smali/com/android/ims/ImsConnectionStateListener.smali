.class public Lcom/android/ims/ImsConnectionStateListener;
.super Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
.source "ImsConnectionStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureCapabilityChanged(I[I[I)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .line 170
    return-void
.end method

.method public onFeatureCapabilityChangedAdapter(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 6
    .param p1, "imsRadioTech"    # I
    .param p2, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 75
    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 77
    .local v1, "enabledCapabilities":[I
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 79
    new-array v0, v0, [I

    .line 80
    .local v0, "disabledCapabilities":[I
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 82
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p2, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    aput v3, v1, v3

    .line 104
    :cond_1
    invoke-virtual {p2, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    const/4 v3, 0x3

    aput v3, v1, v3

    .line 108
    :cond_2
    invoke-virtual {p2, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 109
    const/4 v2, 0x5

    aput v2, v1, v2

    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p2, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 86
    const/4 v5, 0x0

    aput v5, v1, v5

    .line 89
    :cond_4
    invoke-virtual {p2, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 90
    aput v4, v1, v4

    .line 93
    :cond_5
    invoke-virtual {p2, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 94
    aput v2, v1, v2

    .line 117
    :cond_6
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_8

    .line 118
    aget v3, v1, v2

    if-eq v3, v2, :cond_7

    .line 119
    aput v2, v0, v2

    .line 117
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    .end local v2    # "i":I
    :cond_8
    invoke-virtual {p0, v4, v1, v0}, Lcom/android/ims/ImsConnectionStateListener;->onFeatureCapabilityChanged(I[I[I)V

    .line 124
    return-void
.end method

.method public onImsConnected(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I

    .line 130
    return-void
.end method

.method public onImsDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 144
    return-void
.end method

.method public onImsProgressing(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I

    .line 137
    return-void
.end method

.method public onImsResumed()V
    .locals 0

    .line 153
    return-void
.end method

.method public onImsSuspended()V
    .locals 0

    .line 161
    return-void
.end method

.method public final onRegistered(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected(I)V

    .line 40
    return-void
.end method

.method public final onRegistering(I)V
    .locals 0
    .param p1, "imsRadioTech"    # I

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsProgressing(I)V

    .line 45
    return-void
.end method

.method public onRegistrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsRadioTech"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 192
    return-void
.end method

.method public onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 0
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    .line 61
    return-void
.end method

.method public final onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsConnectionStateListener;->onRegistrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 56
    return-void
.end method

.method public final onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 50
    return-void
.end method

.method public onVoiceMessageCountChanged(I)V
    .locals 0
    .param p1, "count"    # I

    .line 178
    return-void
.end method

.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 0
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 185
    return-void
.end method

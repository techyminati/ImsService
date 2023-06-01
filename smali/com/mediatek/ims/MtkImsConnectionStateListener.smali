.class public Lcom/mediatek/ims/MtkImsConnectionStateListener;
.super Lcom/android/ims/ImsConnectionStateListener;
.source "MtkImsConnectionStateListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/android/ims/ImsConnectionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 2
    .param p1, "config"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 42
    return-void
.end method

.method public onImsEmergencyCapabilityChanged(Z)V
    .registers 2
    .param p1, "eccSupport"    # Z

    .line 17
    return-void
.end method

.method public onRedirectIncomingCallInd(I[Ljava/lang/String;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "info"    # [Ljava/lang/String;

    .line 57
    return-void
.end method

.method public onRegistrationErrorCodeInd(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 32
    return-void
.end method

.method public onRegistrationImsStateInd(I[Landroid/net/Uri;IILjava/lang/String;)V
    .registers 6
    .param p1, "indType"    # I
    .param p2, "uris"    # [Landroid/net/Uri;
    .param p3, "expireTime"    # I
    .param p4, "errCode"    # I
    .param p5, "errMsg"    # Ljava/lang/String;

    .line 54
    return-void
.end method

.method public onWifiPdnOOSStateChanged(I)V
    .registers 2
    .param p1, "oosState"    # I

    .line 24
    return-void
.end method

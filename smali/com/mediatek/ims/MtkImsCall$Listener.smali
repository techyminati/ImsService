.class public Lcom/mediatek/ims/MtkImsCall$Listener;
.super Lcom/android/ims/ImsCall$Listener;
.source "MtkImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallRedialEcc(Lcom/android/ims/ImsCall;Z)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "isNeedUserConfirm"    # Z

    .line 90
    return-void
.end method

.method public onNotificationRingtoneReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .registers 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "causeNume"    # I
    .param p3, "causeText"    # Ljava/lang/String;

    .line 98
    return-void
.end method

.method public onPauInfoChanged(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 76
    return-void
.end method

.method public onRttEventReceived(Lcom/android/ims/ImsCall;I)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "event"    # I

    .line 86
    return-void
.end method

.method public onTextCapabilityChanged(Lcom/android/ims/ImsCall;IIII)V
    .registers 6
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "localCapability"    # I
    .param p3, "remoteCapability"    # I
    .param p4, "localTextStatus"    # I
    .param p5, "realRemoteCapability"    # I

    .line 82
    return-void
.end method

.method public onVideoRingtoneEventReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .registers 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "eventType"    # I
    .param p3, "event"    # Ljava/lang/String;

    .line 94
    return-void
.end method

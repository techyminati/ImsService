.class public abstract Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;
.super Lcom/android/internal/telephony/Connection$ListenerBase;
.source "MtkImsPhoneConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MtkListenerBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressDisplayChanged()V
    .registers 1

    .line 421
    return-void
.end method

.method public onConferenceConnectionsConfigured(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .line 419
    .local p1, "radioConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    return-void
.end method

.method public onConferenceParticipantsInvited(Z)V
    .registers 2
    .param p1, "isSuccess"    # Z

    .line 412
    return-void
.end method

.method public onRedialEcc(Z)V
    .registers 2
    .param p1, "isNeedUserConfirm"    # Z

    .line 432
    return-void
.end method

.method public onTextCapabilityChanged(IIII)V
    .registers 5
    .param p1, "localCapability"    # I
    .param p2, "remoteCapability"    # I
    .param p3, "localTextStatus"    # I
    .param p4, "realRemoteTextCapability"    # I

    .line 427
    return-void
.end method

.class public Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.source "MtkImsPhoneConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;
    }
.end annotation


# static fields
.field private static final EXTRA_IMS_GWSD:Ljava/lang/String; = "ims_gwsd"

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsPhoneConnection"

.field public static final STATE_AUDIO_RINGTONE:I = 0x1

.field public static final STATE_VIDEO_RINGTONE:I = 0x2

.field public static final SUPPORTS_AUDIO_RINGTONE:I = 0x40

.field public static final SUPPORTS_VIDEO_RINGTONE:I = 0x80


# instance fields
.field private mCallIdBeforeDisconnected:I

.field private mConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private mIsIncomingCallDuringRttEmcGuard:Z

.field private mIsIncomingCallGwsd:Z

.field private mIsRttVideoSwitchSupported:Z

.field public mWasMultiparty:Z

.field public mWasPreMultipartyHost:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .registers 10
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isUnknown"    # Z

    .line 101
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    .line 78
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mCallIdBeforeDisconnected:I

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    .line 93
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z

    .line 564
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    .line 103
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 104
    nop

    .line 105
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    const-string v3, "ims_gwsd"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_2b

    move v0, v1

    :cond_2b
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z

    .line 108
    :cond_2d
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->fetchIsRttVideoSwitchSupported(Lcom/android/internal/telephony/Phone;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZ)V
    .registers 9
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isEmergency"    # Z
    .param p6, "isWpsCall"    # Z

    .line 114
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZ)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    .line 78
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mCallIdBeforeDisconnected:I

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    .line 93
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z

    .line 564
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    .line 117
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 118
    iput-object p2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 122
    :cond_21
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->fetchIsRttVideoSwitchSupported(Lcom/android/internal/telephony/Phone;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .registers 8
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "participantsToDial"    # [Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isEmergency"    # Z

    .line 128
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    .line 78
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mCallIdBeforeDisconnected:I

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    .line 93
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z

    .line 564
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    .line 130
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->fetchIsRttVideoSwitchSupported(Lcom/android/internal/telephony/Phone;)V

    .line 131
    return-void
.end method

.method private fetchIsRttVideoSwitchSupported(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 611
    nop

    .line 612
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 613
    .local v0, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 614
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_20

    .line 615
    nop

    .line 616
    const-string v2, "rtt_supported_for_vt_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    .line 618
    :cond_20
    return-void
.end method

.method private isParticipantHost([Landroid/net/Uri;Landroid/net/Uri;)Z
    .registers 11
    .param p1, "hostHandles"    # [Landroid/net/Uri;
    .param p2, "handle"    # Landroid/net/Uri;

    .line 312
    const/4 v0, 0x0

    if-eqz p1, :cond_32

    array-length v1, p1

    if-eqz v1, :cond_32

    if-nez p2, :cond_9

    goto :goto_32

    .line 317
    :cond_9
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "number":Ljava/lang/String;
    const-string v2, "[@;:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "numberParts":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_17

    .line 321
    return v0

    .line 323
    :cond_17
    aget-object v1, v2, v0

    .line 325
    array-length v3, p1

    move v4, v0

    :goto_1b
    if-ge v4, v3, :cond_31

    aget-object v5, p1, v4

    .line 326
    .local v5, "hostHandle":Landroid/net/Uri;
    if-nez v5, :cond_22

    .line 327
    goto :goto_2e

    .line 331
    :cond_22
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "hostNumber":Ljava/lang/String;
    invoke-static {v6, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 337
    .local v7, "isHost":Z
    if-eqz v7, :cond_2e

    .line 338
    const/4 v0, 0x1

    return v0

    .line 325
    .end local v5    # "hostHandle":Landroid/net/Uri;
    .end local v6    # "hostNumber":Ljava/lang/String;
    .end local v7    # "isHost":Z
    :cond_2e
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 341
    :cond_31
    return v0

    .line 313
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "numberParts":[Ljava/lang/String;
    :cond_32
    :goto_32
    const-string v1, "MtkImsPhoneConnection"

    const-string v2, "isParticipantHost(N) : host or participant uri null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return v0
.end method

.method private isTestSim()Z
    .registers 4

    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "isTestSim":Z
    const-string v1, "vendor.gsm.sim.ril.testsim"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 630
    const-string v1, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 631
    const-string v1, "vendor.gsm.sim.ril.testsim.3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 632
    const-string v1, "vendor.gsm.sim.ril.testsim.4"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_36

    :cond_34
    const/4 v1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v1, 0x1

    :goto_37
    move v0, v1

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTestSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsPhoneConnection"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return v0
.end method

.method private removeHostAddress()V
    .registers 9

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "hostAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 284
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCurrentSubscriberUris()[Landroid/net/Uri;

    move-result-object v2

    const-string v3, "MtkImsPhoneConnection"

    if-eqz v2, :cond_6a

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    .line 286
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCurrentSubscriberUris()[Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 285
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 292
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/Uri;

    .line 293
    .local v2, "conferenceHostAddress":[Landroid/net/Uri;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, [Landroid/net/Uri;

    .line 295
    const/4 v4, 0x0

    .line 297
    .local v4, "hostParticipant":Lcom/android/ims/internal/ConferenceParticipant;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/internal/ConferenceParticipant;

    .line 298
    .local v6, "participant":Lcom/android/ims/internal/ConferenceParticipant;
    invoke-virtual {v6}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->isParticipantHost([Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 299
    move-object v4, v6

    .line 300
    goto :goto_4e

    .line 302
    .end local v6    # "participant":Lcom/android/ims/internal/ConferenceParticipant;
    :cond_4d
    goto :goto_35

    .line 304
    :cond_4e
    :goto_4e
    if-eqz v4, :cond_55

    .line 305
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 307
    :cond_55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove host participant: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 288
    .end local v2    # "conferenceHostAddress":[Landroid/net/Uri;
    .end local v4    # "hostParticipant":Lcom/android/ims/internal/ConferenceParticipant;
    :cond_6a
    const-string v2, "remove host participant failed "

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private setConnectionAddressDisplay()V
    .registers 4

    .line 475
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 476
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    instance-of v2, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    if-eqz v2, :cond_1c

    .line 477
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;->onAddressDisplayChanged()V

    .line 479
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_1c
    goto :goto_6

    .line 480
    :cond_1d
    return-void
.end method


# virtual methods
.method protected allowedUpdateMOAddress()Z
    .registers 2

    .line 560
    const/4 v0, 0x1

    return v0
.end method

.method protected applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .registers 6
    .param p1, "localProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "capabilities"    # I

    .line 599
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I

    move-result p2

    .line 600
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->isRttEnabledForCall()Z

    move-result v0

    .line 601
    .local v0, "isRttActive":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLocalCallCapabilities: isRttEnabledForCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsRttVideoSwitchSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsPhoneConnection"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    if-eqz v0, :cond_33

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsRttVideoSwitchSupported:Z

    if-nez v1, :cond_33

    .line 604
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeCapability(II)I

    move-result p2

    .line 607
    :cond_33
    return p2
.end method

.method protected applyVideoRingtoneCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .registers 10
    .param p1, "remoteProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "capabilities"    # I

    .line 485
    move v0, p2

    .line 486
    .local v0, "remoteCapabilities":I
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 487
    .local v1, "ringtoneState":I
    const/16 v2, 0x40

    const/16 v3, 0x80

    if-ltz v1, :cond_3e

    .line 488
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    const-string v6, "MtkImsPhoneConnection"

    if-ne v4, v5, :cond_1c

    .line 489
    const-string v4, "Add video ringtone capability"

    invoke-static {v6, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->addCapability(II)I

    move-result v0

    goto :goto_25

    .line 492
    :cond_1c
    const-string v4, "Remove video ringtone capability"

    invoke-static {v6, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeCapability(II)I

    move-result v0

    .line 495
    :goto_25
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_34

    .line 496
    const-string v3, "Add audio ringtone capability"

    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->addCapability(II)I

    move-result v0

    goto :goto_46

    .line 499
    :cond_34
    const-string v3, "Remove audio ringtone capability"

    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeCapability(II)I

    move-result v0

    goto :goto_46

    .line 503
    :cond_3e
    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeCapability(II)I

    move-result v0

    .line 504
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeCapability(II)I

    move-result v0

    .line 506
    :goto_46
    return v0
.end method

.method protected callNumberPresentation(Landroid/telephony/ims/ImsCallProfile;)I
    .registers 4
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 531
    nop

    .line 532
    const-string v0, "oir"

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    .line 531
    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v0

    .line 534
    .local v0, "nump":I
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncoming:Z

    if-nez v1, :cond_10

    .line 535
    const/4 v0, 0x1

    .line 538
    :cond_10
    return v0
.end method

.method getCallId()I
    .registers 6

    .line 222
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 223
    .local v0, "call":Lcom/android/ims/ImsCall;
    const/4 v1, -0x1

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_25

    .line 227
    :cond_e
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "callId":Ljava/lang/String;
    if-nez v2, :cond_20

    .line 229
    const-string v3, "MtkImsPhoneConnection"

    const-string v4, "Abnormal! Call Id = null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return v1

    .line 233
    :cond_20
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 224
    .end local v2    # "callId":Ljava/lang/String;
    :cond_25
    :goto_25
    return v1
.end method

.method getCallIdBeforeDisconnected()I
    .registers 2

    .line 244
    iget v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mCallIdBeforeDisconnected:I

    return v0
.end method

.method public getConferenceParticipantAddress(I)Ljava/lang/String;
    .registers 9
    .param p1, "index"    # I

    .line 255
    const-string v0, ""

    .line 257
    .local v0, "emptyAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    const-string v2, "MtkImsPhoneConnection"

    if-nez v1, :cond_e

    .line 258
    const-string v1, "getConferenceParticipantAddress(): no XML information"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v0

    .line 262
    :cond_e
    if-ltz p1, :cond_59

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_17

    goto :goto_59

    .line 267
    :cond_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/ConferenceParticipant;

    .line 268
    .local v1, "participant":Lcom/android/ims/internal/ConferenceParticipant;
    if-nez v1, :cond_27

    .line 269
    const-string v3, "getConferenceParticipantAddress(): empty participant info"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-object v0

    .line 273
    :cond_27
    invoke-virtual {v1}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v3

    .line 274
    .local v3, "userEntity":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConferenceParticipantAddress(): ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 275
    invoke-static {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 263
    .end local v1    # "participant":Lcom/android/ims/internal/ConferenceParticipant;
    .end local v3    # "userEntity":Landroid/net/Uri;
    :cond_59
    :goto_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConferenceParticipantAddress(): invalid index: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-object v0
.end method

.method getParentCallName()Ljava/lang/String;
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-nez v0, :cond_7

    .line 347
    const-string v0, "Unknown"

    return-object v0

    .line 350
    :cond_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_12

    .line 351
    const-string v0, "Foreground Call"

    return-object v0

    .line 352
    :cond_12
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_1d

    .line 353
    const-string v0, "Background Call"

    return-object v0

    .line 354
    :cond_1d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_28

    .line 355
    const-string v0, "Ringing Call"

    return-object v0

    .line 356
    :cond_28
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_33

    .line 357
    const-string v0, "Handover Call"

    return-object v0

    .line 359
    :cond_33
    const-string v0, "Abnormal"

    return-object v0
.end method

.method public hangup()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    if-eqz v0, :cond_17

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v1, "CC"

    const-string v2, "Hangup"

    const-string v3, "MtkImsphoneConnection.hangup"

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 147
    :cond_17
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hangup()V

    .line 148
    return-void
.end method

.method public isConfHostBeforeHandover()Z
    .registers 2

    .line 371
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    return v0
.end method

.method public isIncomingCallDuringRttEmcGuard()Z
    .registers 3

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIncomingCallDuringRttEmcGuard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    return v0
.end method

.method public declared-synchronized isIncomingCallGwsd()Z
    .registers 4

    monitor-enter p0

    .line 134
    :try_start_1
    const-string v0, "MtkImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIncomingCallGwsd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallGwsd:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return v0

    .line 133
    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIncomingCallMultiparty()Z
    .registers 2

    monitor-enter p0

    .line 391
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    instance-of v0, v0, Lcom/mediatek/ims/MtkImsCall;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    check-cast v0, Lcom/mediatek/ims/MtkImsCall;

    .line 392
    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCall;->isIncomingCallMultiparty()Z

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    :cond_17
    const/4 v0, 0x0

    .line 391
    :goto_18
    monitor-exit p0

    return v0

    .line 390
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMultipartyBeforeHandover()Z
    .registers 2

    .line 381
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    return v0
.end method

.method protected needUpdateAddress(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mAddress:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->isMultiparty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    const-string v1, "MtkImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 552
    const/4 v0, 0x1

    return v0

    .line 555
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method public notifyConferenceConnectionsConfigured(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .line 455
    .local p1, "radioConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 456
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    instance-of v2, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    if-eqz v2, :cond_1c

    .line 457
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;->onConferenceConnectionsConfigured(Ljava/util/ArrayList;)V

    .line 459
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_1c
    goto :goto_6

    .line 460
    :cond_1d
    return-void
.end method

.method notifyConferenceParticipantsInvited(Z)V
    .registers 5
    .param p1, "isSuccess"    # Z

    .line 442
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 443
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    instance-of v2, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    if-eqz v2, :cond_1c

    .line 444
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;->onConferenceParticipantsInvited(Z)V

    .line 446
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_1c
    goto :goto_6

    .line 447
    :cond_1d
    return-void
.end method

.method public notifyRedialEcc(Z)V
    .registers 5
    .param p1, "isNeedUserConfirm"    # Z

    .line 463
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 464
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    instance-of v2, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    if-eqz v2, :cond_1c

    .line 465
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection$MtkListenerBase;->onRedialEcc(Z)V

    .line 467
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_1c
    goto :goto_6

    .line 468
    :cond_1d
    return-void
.end method

.method public onDisconnect()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mDisconnected:Z

    if-nez v0, :cond_a

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getCallId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mCallIdBeforeDisconnected:I

    .line 159
    :cond_a
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    move-result v0

    return v0
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .registers 6
    .param p1, "endpoint"    # Landroid/net/Uri;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    if-eqz v0, :cond_3b

    .line 172
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, "CC"

    const-string v3, "RemoveMember"

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 176
    :cond_3b
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnectConferenceParticipant(Landroid/net/Uri;)V

    .line 177
    return-void
.end method

.method public setIncomingCallDuringRttEmcGuard(Z)V
    .registers 4
    .param p1, "isDuringRttGuard"    # Z

    .line 571
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIncomingCallDuringRttEmcGuard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mIsIncomingCallDuringRttEmcGuard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return-void
.end method

.method protected skipSwitchingCallToForeground()Z
    .registers 3

    .line 511
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eq v0, v1, :cond_20

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update() - Switch Connection to foreground call:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v0, 0x0

    return v0

    .line 515
    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method protected switchCallToBackgroundIfNecessary()V
    .registers 3

    .line 521
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_2e

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update() - Switch Connection to background call:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 524
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 525
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    .line 527
    :cond_2e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, " mParent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getParentCallName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateAddressDisplay(Lcom/android/ims/ImsCall;)Z
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 188
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    move-result v0

    .line 189
    .local v0, "changed":Z
    if-eqz v0, :cond_9

    .line 190
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->setConnectionAddressDisplay()V

    .line 192
    :cond_9
    return v0
.end method

.method public updateConferenceParticipants(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/internal/ConferenceParticipant;>;"
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    .line 398
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->removeHostAddress()V

    .line 399
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateConferenceParticipants(Ljava/util/List;)V

    .line 400
    return-void
.end method

.method public updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 588
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    move-result v0

    .line 590
    .local v0, "changed":Z
    if-eqz v0, :cond_20

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMediaCapabilities capabilities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getConnectionCapabilities()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsPhoneConnection"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_20
    return v0
.end method

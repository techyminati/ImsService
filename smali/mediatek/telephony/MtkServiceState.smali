.class public Lmediatek/telephony/MtkServiceState;
.super Landroid/telephony/ServiceState;
.source "MtkServiceState.java"


# static fields
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "MTKSS"

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xa

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xc

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED_EMERGENCY_CALL_ENABLED:I = 0xd

.field public static final REGISTRATION_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED:I = 0xe

.field public static final RIL_RADIO_TECHNOLOGY_DC_DPA:I = 0x85

.field public static final RIL_RADIO_TECHNOLOGY_DC_HSDPAP:I = 0x87

.field public static final RIL_RADIO_TECHNOLOGY_DC_HSDPAP_DPA:I = 0x89

.field public static final RIL_RADIO_TECHNOLOGY_DC_HSDPAP_UPA:I = 0x88

.field public static final RIL_RADIO_TECHNOLOGY_DC_HSPAP:I = 0x8a

.field public static final RIL_RADIO_TECHNOLOGY_DC_UPA:I = 0x86

.field public static final RIL_RADIO_TECHNOLOGY_HSDPAP:I = 0x81

.field public static final RIL_RADIO_TECHNOLOGY_HSDPAP_UPA:I = 0x82

.field public static final RIL_RADIO_TECHNOLOGY_HSUPAP:I = 0x83

.field public static final RIL_RADIO_TECHNOLOGY_HSUPAP_DPA:I = 0x84

.field public static final RIL_RADIO_TECHNOLOGY_MTK:I = 0x80


# instance fields
.field private mCellularDataNetworkType:I

.field private mDataRejectCause:I

.field private mRilCellularDataRegState:I

.field private mRilDataRegState:I

.field private mRilVoiceRegState:I

.field private mVoiceRejectCause:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 148
    invoke-direct {p0}, Landroid/telephony/ServiceState;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 119
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 121
    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 125
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 126
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 151
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->setStateOutOfService()V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 190
    invoke-direct {p0, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/os/Parcel;)V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 119
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 121
    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 125
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 126
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 170
    invoke-direct {p0}, Landroid/telephony/ServiceState;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 119
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 121
    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 125
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 126
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 171
    move-object v0, p1

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {p0, v0}, Lmediatek/telephony/MtkServiceState;->copyFrom(Lmediatek/telephony/MtkServiceState;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lmediatek/telephony/MtkServiceState;)V
    .registers 4
    .param p1, "s"    # Lmediatek/telephony/MtkServiceState;

    .line 159
    invoke-direct {p0}, Landroid/telephony/ServiceState;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 119
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 121
    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 125
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 126
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 160
    invoke-virtual {p0, p1}, Lmediatek/telephony/MtkServiceState;->copyFrom(Lmediatek/telephony/MtkServiceState;)V

    .line 161
    return-void
.end method

.method public static mergeMtkServiceStates(Lmediatek/telephony/MtkServiceState;Lmediatek/telephony/MtkServiceState;)Lmediatek/telephony/MtkServiceState;
    .registers 4
    .param p0, "baseSs"    # Lmediatek/telephony/MtkServiceState;
    .param p1, "voiceSs"    # Lmediatek/telephony/MtkServiceState;

    .line 381
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    if-eqz v0, :cond_5

    .line 382
    return-object p0

    .line 385
    :cond_5
    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v0, p0}, Lmediatek/telephony/MtkServiceState;-><init>(Lmediatek/telephony/MtkServiceState;)V

    .line 388
    .local v0, "newSs":Lmediatek/telephony/MtkServiceState;
    iget v1, p1, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    iput v1, v0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    .line 389
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmediatek/telephony/MtkServiceState;->mIsEmergencyOnly:Z

    .line 391
    return-object v0
.end method

.method private static mtkNetworkTypeToRilRadioTechnology(I)I
    .registers 2
    .param p0, "networkType"    # I

    .line 632
    packed-switch p0, :pswitch_data_38

    .line 672
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 670
    :pswitch_5
    const/16 v0, 0x14

    return v0

    .line 668
    :pswitch_8
    const/16 v0, 0x13

    return v0

    .line 666
    :pswitch_b
    const/16 v0, 0x12

    return v0

    .line 664
    :pswitch_e
    const/16 v0, 0x11

    return v0

    .line 662
    :pswitch_11
    const/16 v0, 0x10

    return v0

    .line 660
    :pswitch_14
    const/16 v0, 0xf

    return v0

    .line 656
    :pswitch_17
    const/16 v0, 0xd

    return v0

    .line 658
    :pswitch_1a
    const/16 v0, 0xe

    return v0

    .line 654
    :pswitch_1d
    const/16 v0, 0xc

    return v0

    .line 644
    :pswitch_20
    const/16 v0, 0xb

    return v0

    .line 642
    :pswitch_23
    const/16 v0, 0xa

    return v0

    .line 640
    :pswitch_26
    const/16 v0, 0x9

    return v0

    .line 648
    :pswitch_29
    const/4 v0, 0x6

    return v0

    .line 652
    :pswitch_2b
    const/16 v0, 0x8

    return v0

    .line 650
    :pswitch_2e
    const/4 v0, 0x7

    return v0

    .line 646
    :pswitch_30
    const/4 v0, 0x4

    return v0

    .line 638
    :pswitch_32
    const/4 v0, 0x3

    return v0

    .line 636
    :pswitch_34
    const/4 v0, 0x2

    return v0

    .line 634
    :pswitch_36
    const/4 v0, 0x1

    return v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_36
        :pswitch_34
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_2b
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_3
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .registers 2
    .param p0, "m"    # Landroid/os/Bundle;

    .line 140
    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v0}, Lmediatek/telephony/MtkServiceState;-><init>()V

    .line 141
    .local v0, "ret":Lmediatek/telephony/MtkServiceState;
    invoke-virtual {v0, p0}, Lmediatek/telephony/MtkServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 142
    return-object v0
.end method


# virtual methods
.method public compareTwoRadioTechnology(II)Z
    .registers 6
    .param p1, "nRadioTechnology1"    # I
    .param p2, "nRadioTechnology2"    # I

    .line 454
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 455
    return v0

    .line 456
    :cond_4
    const/16 v1, 0xe

    const/4 v2, 0x1

    if-ne p1, v1, :cond_a

    .line 457
    return v2

    .line 458
    :cond_a
    if-ne p2, v1, :cond_d

    .line 459
    return v0

    .line 460
    :cond_d
    const/16 v1, 0x10

    if-ne p1, v1, :cond_15

    .line 462
    if-nez p2, :cond_14

    .line 463
    return v2

    .line 466
    :cond_14
    return v0

    .line 467
    :cond_15
    if-ne p2, v1, :cond_1b

    .line 469
    if-nez p1, :cond_1a

    .line 470
    return v0

    .line 473
    :cond_1a
    return v2

    .line 474
    :cond_1b
    if-le p1, p2, :cond_1e

    .line 475
    return v2

    .line 477
    :cond_1e
    return v0
.end method

.method protected copyFrom(Lmediatek/telephony/MtkServiceState;)V
    .registers 3
    .param p1, "s"    # Lmediatek/telephony/MtkServiceState;

    .line 175
    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 177
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 178
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 179
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 180
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 181
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 182
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 184
    return-void
.end method

.method public bridge synthetic createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lmediatek/telephony/MtkServiceState;->createLocationInfoSanitizedCopy(Z)Lmediatek/telephony/MtkServiceState;

    move-result-object p1

    return-object p1
.end method

.method public createLocationInfoSanitizedCopy(Z)Lmediatek/telephony/MtkServiceState;
    .registers 6
    .param p1, "removeCoarseLocation"    # Z

    .line 203
    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v0, p0}, Lmediatek/telephony/MtkServiceState;-><init>(Lmediatek/telephony/MtkServiceState;)V

    .line 204
    .local v0, "state":Lmediatek/telephony/MtkServiceState;
    iget-object v1, v0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v1

    .line 205
    :try_start_8
    iget-object v2, v0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 206
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lmediatek/telephony/MtkServiceState$$ExternalSyntheticLambda0;->INSTANCE:Lmediatek/telephony/MtkServiceState$$ExternalSyntheticLambda0;

    .line 207
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 208
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 209
    .local v2, "networkRegistrationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    iget-object v3, v0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 210
    iget-object v3, v0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    nop

    .end local v2    # "networkRegistrationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NetworkRegistrationInfo;>;"
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_35

    .line 212
    if-nez p1, :cond_2d

    return-object v0

    .line 214
    :cond_2d
    const/4 v1, 0x0

    iput-object v1, v0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 215
    iput-object v1, v0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 216
    iput-object v1, v0, Lmediatek/telephony/MtkServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 218
    return-object v0

    .line 211
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 239
    const/4 v0, 0x0

    :try_start_1
    move-object v1, p1

    check-cast v1, Lmediatek/telephony/MtkServiceState;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_10f

    .line 242
    .local v1, "s":Lmediatek/telephony/MtkServiceState;
    nop

    .line 244
    if-nez p1, :cond_8

    .line 245
    return v0

    .line 247
    :cond_8
    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v2

    .line 248
    :try_start_b
    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    if-ne v3, v4, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mDataRegState:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mDataRegState:I

    if-ne v3, v4, :cond_109

    iget-boolean v3, p0, Lmediatek/telephony/MtkServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v4, v1, Lmediatek/telephony/MtkServiceState;->mIsManualNetworkSelection:Z

    if-ne v3, v4, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mChannelNumber:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mChannelNumber:I

    if-ne v3, v4, :cond_109

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mCellBandwidths:[I

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mCellBandwidths:[I

    .line 252
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_109

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 253
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 254
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 255
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget-boolean v3, p0, Lmediatek/telephony/MtkServiceState;->mCssIndicator:Z

    .line 256
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Lmediatek/telephony/MtkServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mNetworkId:I

    .line 257
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mSystemId:I

    .line 258
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mCdmaRoamingIndicator:I

    .line 259
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 260
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 261
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 260
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget-boolean v3, p0, Lmediatek/telephony/MtkServiceState;->mIsEmergencyOnly:Z

    iget-boolean v4, v1, Lmediatek/telephony/MtkServiceState;->mIsEmergencyOnly:Z

    if-ne v3, v4, :cond_109

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 263
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 264
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 265
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_109

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 266
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mNrFrequencyRange:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mNrFrequencyRange:I

    if-ne v3, v4, :cond_109

    iget-boolean v3, p0, Lmediatek/telephony/MtkServiceState;->mIsIwlanPreferred:Z

    iget-boolean v4, v1, Lmediatek/telephony/MtkServiceState;->mIsIwlanPreferred:Z

    if-ne v3, v4, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    if-ne v3, v4, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    if-ne v3, v4, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    if-ne v3, v4, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    if-ne v3, v4, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    if-ne v3, v4, :cond_109

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    if-ne v3, v4, :cond_109

    const/4 v0, 0x1

    goto :goto_10a

    :cond_109
    nop

    :goto_10a
    monitor-exit v2

    .line 248
    return v0

    .line 277
    :catchall_10c
    move-exception v0

    monitor-exit v2
    :try_end_10e
    .catchall {:try_start_b .. :try_end_10e} :catchall_10c

    throw v0

    .line 240
    .end local v1    # "s":Lmediatek/telephony/MtkServiceState;
    :catch_10f
    move-exception v1

    .line 241
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .line 363
    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 365
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    const-string v1, "RilVoiceRegState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    const-string v1, "RilDataRegState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    const-string v1, "VoiceRejectCause"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    const-string v1, "DataRejectCause"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    const-string v1, "RilCellularDataRegState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 370
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    const-string v1, "CellularDataNetworkType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    return-void
.end method

.method public getCellularDataNetworkType()I
    .registers 2

    .line 501
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    return v0
.end method

.method public getCellularDataRegState()I
    .registers 4

    .line 551
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    return v0

    .line 552
    :cond_8
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 554
    .local v0, "regPsState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v1, 0x0

    return v1

    .line 555
    :cond_18
    return v1
.end method

.method public getCellularDataRoaming()Z
    .registers 5

    .line 487
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 489
    .local v0, "regState":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 490
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    return v1

    .line 492
    :cond_12
    return v2
.end method

.method public getCellularDataRoamingType()I
    .registers 5

    .line 568
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 571
    .local v0, "regPsState":Landroid/telephony/NetworkRegistrationInfo;
    iget v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_d

    return v2

    .line 572
    :cond_d
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v1

    return v1

    .line 573
    :cond_14
    return v2
.end method

.method public getCellularRegState()I
    .registers 3

    .line 516
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularVoiceRegState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    return v1

    .line 517
    :cond_8
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularDataRegState()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return v0

    .line 518
    :cond_10
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularVoiceRegState()I

    move-result v0

    return v0
.end method

.method public getCellularVoiceRegState()I
    .registers 5

    .line 532
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 534
    .local v1, "regCsState":Landroid/telephony/NetworkRegistrationInfo;
    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    return v0

    .line 535
    :cond_d
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x0

    return v0

    .line 536
    :cond_17
    return v0
.end method

.method public getDataRejectCause()I
    .registers 2

    .line 413
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    return v0
.end method

.method public getIwlanRegState()I
    .registers 3

    .line 593
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 595
    .local v0, "regIwlanState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    return v1

    .line 596
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method public getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;
    .registers 9
    .param p1, "domain"    # I
    .param p2, "transportType"    # I

    .line 679
    iget-object v0, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 680
    :try_start_3
    iget-object v1, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 682
    .local v2, "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v2, :cond_30

    .line 684
    const-string v3, "MTKSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkRegistrationInfo find null nris="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 686
    :cond_30
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v3

    if-ne v3, p2, :cond_43

    .line 687
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v3

    if-ne v3, p1, :cond_43

    .line 688
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v1, v2}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    monitor-exit v0

    return-object v1

    .line 690
    .end local v2    # "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_43
    :goto_43
    goto :goto_9

    .line 691
    :cond_44
    monitor-exit v0

    .line 693
    const/4 v0, 0x0

    return-object v0

    .line 691
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public getRilCellularDataRegState()I
    .registers 2

    .line 559
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    return v0
.end method

.method public getRilDataRadioTechnology()I
    .registers 2

    .line 617
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Lmediatek/telephony/MtkServiceState;->mtkNetworkTypeToRilRadioTechnology(I)I

    move-result v0

    return v0
.end method

.method public getRilDataRegState()I
    .registers 2

    .line 433
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    return v0
.end method

.method public getRilVoiceRadioTechnology()I
    .registers 3

    .line 622
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 624
    .local v0, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_10

    .line 626
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    invoke-static {v1}, Lmediatek/telephony/MtkServiceState;->mtkNetworkTypeToRilRadioTechnology(I)I

    move-result v1

    return v1

    .line 628
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public getRilVoiceRegState()I
    .registers 2

    .line 428
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    return v0
.end method

.method public getVoiceRejectCause()I
    .registers 2

    .line 403
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    return v0
.end method

.method protected init()V
    .registers 3

    .line 330
    invoke-super {p0}, Landroid/telephony/ServiceState;->init()V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 333
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 334
    const/4 v1, -0x1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 335
    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 336
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 337
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 339
    return-void
.end method

.method public isUsingCellularCarrierAggregation()Z
    .registers 2

    .line 581
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    return v0
.end method

.method public keepCellularDataServiceState()V
    .registers 3

    .line 606
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 608
    .local v0, "regPsState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_14

    .line 609
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 610
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 612
    :cond_14
    return-void
.end method

.method public setDataRejectCause(I)V
    .registers 2
    .param p1, "cause"    # I

    .line 423
    iput p1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 424
    return-void
.end method

.method protected setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "m"    # Landroid/os/Bundle;

    .line 349
    const-string v0, "android.intent.extra.SERVICE_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    .line 350
    .local v0, "ssFromBundle":Lmediatek/telephony/MtkServiceState;
    if-eqz v0, :cond_d

    .line 351
    invoke-virtual {p0, v0}, Lmediatek/telephony/MtkServiceState;->copyFrom(Lmediatek/telephony/MtkServiceState;)V

    .line 353
    :cond_d
    return-void
.end method

.method public setRilDataRegState(I)V
    .registers 2
    .param p1, "nDataRegState"    # I

    .line 447
    iput p1, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 448
    return-void
.end method

.method public setRilVoiceRegState(I)V
    .registers 2
    .param p1, "nRegState"    # I

    .line 440
    iput p1, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 441
    return-void
.end method

.method public setVoiceRejectCause(I)V
    .registers 2
    .param p1, "cause"    # I

    .line 418
    iput p1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 419
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 282
    iget-object v0, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 283
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{mVoiceRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    .line 284
    invoke-static {v3}, Lmediatek/telephony/MtkServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDataRegState="

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mDataRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mDataRegState:I

    .line 286
    invoke-static {v3}, Lmediatek/telephony/MtkServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mChannelNumber="

    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", duplexMode()="

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getDuplexMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCellBandwidths="

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mCellBandwidths:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mOperatorAlphaLong="

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mOperatorAlphaShort="

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isManualNetworkSelection="

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmediatek/telephony/MtkServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 293
    iget-boolean v2, p0, Lmediatek/telephony/MtkServiceState;->mIsManualNetworkSelection:Z

    if-eqz v2, :cond_a3

    const-string v2, "(manual)"

    goto :goto_a5

    :cond_a3
    const-string v2, "(automatic)"

    :goto_a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", getRilVoiceRadioTechnology="

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-static {v3}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", getRilDataRadioTechnology="

    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-static {v3}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCssIndicator="

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmediatek/telephony/MtkServiceState;->mCssIndicator:Z

    if-eqz v2, :cond_10e

    const-string v2, "supported"

    goto :goto_110

    :cond_10e
    const-string v2, "unsupported"

    :goto_110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mNetworkId="

    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSystemId="

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mSystemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCdmaRoamingIndicator="

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCdmaDefaultRoamingIndicator="

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsEmergencyOnly="

    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmediatek/telephony/MtkServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUsingCarrierAggregation="

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->isUsingCarrierAggregation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mNetworkRegistrationInfos="

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNrFrequencyRange="

    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_167

    .line 307
    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mNrFrequencyRange:I

    goto :goto_168

    :cond_167
    const/4 v2, 0x0

    .line 306
    :goto_168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOperatorAlphaLongRaw="

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mOperatorAlphaShortRaw="

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsIwlanPreferred="

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmediatek/telephony/MtkServiceState;->mIsIwlanPreferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Ril Voice Regist state="

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Ril Data Regist state="

    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", VoiceRejectCause="

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", DataRejectCause="

    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", IwlanRegState="

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CellularVoiceRegState="

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularVoiceRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CellularDataRegState="

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", RilCellularDataRegState="

    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getRilCellularDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CellularDataRoamingType="

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularDataRoamingType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CellularDataNetworkType="

    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularDataNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}"

    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 283
    return-object v1

    .line 324
    :catchall_204
    move-exception v1

    monitor-exit v0
    :try_end_206
    .catchall {:try_start_3 .. :try_end_206} :catchall_204

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 223
    invoke-super {p0, p1, p2}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 225
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    return-void
.end method

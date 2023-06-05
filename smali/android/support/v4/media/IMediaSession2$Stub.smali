.class public abstract Landroid/support/v4/media/IMediaSession2$Stub;
.super Landroid/os/Binder;
.source "IMediaSession2.java"

# interfaces
.implements Landroid/support/v4/media/IMediaSession2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/IMediaSession2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.IMediaSession2"

.field static final TRANSACTION_addPlaylistItem:I = 0x17

.field static final TRANSACTION_adjustVolume:I = 0x4

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_fastForward:I = 0x9

.field static final TRANSACTION_getChildren:I = 0x24

.field static final TRANSACTION_getItem:I = 0x23

.field static final TRANSACTION_getLibraryRoot:I = 0x22

.field static final TRANSACTION_getSearchResult:I = 0x26

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x5

.field static final TRANSACTION_playFromMediaId:I = 0x12

.field static final TRANSACTION_playFromSearch:I = 0x11

.field static final TRANSACTION_playFromUri:I = 0x10

.field static final TRANSACTION_prepare:I = 0x8

.field static final TRANSACTION_prepareFromMediaId:I = 0xf

.field static final TRANSACTION_prepareFromSearch:I = 0xe

.field static final TRANSACTION_prepareFromUri:I = 0xd

.field static final TRANSACTION_release:I = 0x2

.field static final TRANSACTION_removePlaylistItem:I = 0x18

.field static final TRANSACTION_replacePlaylistItem:I = 0x19

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_rewind:I = 0xa

.field static final TRANSACTION_search:I = 0x25

.field static final TRANSACTION_seekTo:I = 0xb

.field static final TRANSACTION_selectRoute:I = 0x21

.field static final TRANSACTION_sendCustomCommand:I = 0xc

.field static final TRANSACTION_setPlaybackSpeed:I = 0x14

.field static final TRANSACTION_setPlaylist:I = 0x15

.field static final TRANSACTION_setRating:I = 0x13

.field static final TRANSACTION_setRepeatMode:I = 0x1d

.field static final TRANSACTION_setShuffleMode:I = 0x1e

.field static final TRANSACTION_setVolumeTo:I = 0x3

.field static final TRANSACTION_skipToNextItem:I = 0x1c

.field static final TRANSACTION_skipToPlaylistItem:I = 0x1a

.field static final TRANSACTION_skipToPreviousItem:I = 0x1b

.field static final TRANSACTION_subscribe:I = 0x27

.field static final TRANSACTION_subscribeRoutesInfo:I = 0x1f

.field static final TRANSACTION_unsubscribe:I = 0x28

.field static final TRANSACTION_unsubscribeRoutesInfo:I = 0x20

.field static final TRANSACTION_updatePlaylistMetadata:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.support.v4.media.IMediaSession2"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaSession2;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "android.support.v4.media.IMediaSession2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/v4/media/IMediaSession2;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Landroid/support/v4/media/IMediaSession2;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Landroid/support/v4/media/IMediaSession2$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/support/v4/media/IMediaSession2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    move-object v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const v0, 0x5f4e5446

    const/4 v9, 0x1

    const-string v1, "android.support.v4.media.IMediaSession2"

    if-eq v7, v0, :cond_18

    packed-switch v7, :pswitch_data_0

    .line 595
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 586
    :pswitch_0
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 590
    .local v0, "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaSession2$Stub;->unsubscribe(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;)V

    .line 592
    return v9

    .line 569
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 573
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 575
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg2":Landroid/os/Bundle;
    goto :goto_0

    .line 579
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    .line 581
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->subscribe(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 582
    return v9

    .line 548
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v10

    .line 552
    .local v10, "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 554
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 556
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 558
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v14, v0

    .local v0, "_arg4":Landroid/os/Bundle;
    goto :goto_1

    .line 562
    .end local v0    # "_arg4":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    move-object v14, v0

    .line 564
    .local v14, "_arg4":Landroid/os/Bundle;
    :goto_1
    move-object v0, p0

    move-object v1, v10

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/IMediaSession2$Stub;->getSearchResult(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 565
    return v9

    .line 531
    .end local v10    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 535
    .local v0, "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 537
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 538
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_2

    .line 541
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    .line 543
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->search(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 544
    return v9

    .line 510
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v10

    .line 514
    .restart local v10    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 516
    .restart local v11    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 518
    .restart local v12    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 520
    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v14, v0

    .local v0, "_arg4":Landroid/os/Bundle;
    goto :goto_3

    .line 524
    .end local v0    # "_arg4":Landroid/os/Bundle;
    :cond_3
    const/4 v0, 0x0

    move-object v14, v0

    .line 526
    .restart local v14    # "_arg4":Landroid/os/Bundle;
    :goto_3
    move-object v0, p0

    move-object v1, v10

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/IMediaSession2$Stub;->getChildren(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 527
    return v9

    .line 500
    .end local v10    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 504
    .local v0, "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaSession2$Stub;->getItem(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;)V

    .line 506
    return v9

    .line 485
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 489
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 490
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .line 493
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_4
    const/4 v1, 0x0

    .line 495
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaSession2$Stub;->getLibraryRoot(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V

    .line 496
    return v9

    .line 470
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_7
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 474
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 475
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 478
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_5
    const/4 v1, 0x0

    .line 480
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaSession2$Stub;->selectRoute(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V

    .line 481
    return v9

    .line 462
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_8
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 465
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->unsubscribeRoutesInfo(Landroid/support/v4/media/IMediaController2;)V

    .line 466
    return v9

    .line 454
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    :pswitch_9
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 457
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->subscribeRoutesInfo(Landroid/support/v4/media/IMediaController2;)V

    .line 458
    return v9

    .line 444
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    :pswitch_a
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 448
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 449
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaSession2$Stub;->setShuffleMode(Landroid/support/v4/media/IMediaController2;I)V

    .line 450
    return v9

    .line 434
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":I
    :pswitch_b
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 438
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 439
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaSession2$Stub;->setRepeatMode(Landroid/support/v4/media/IMediaController2;I)V

    .line 440
    return v9

    .line 426
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":I
    :pswitch_c
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 429
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->skipToNextItem(Landroid/support/v4/media/IMediaController2;)V

    .line 430
    return v9

    .line 418
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    :pswitch_d
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 421
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->skipToPreviousItem(Landroid/support/v4/media/IMediaController2;)V

    .line 422
    return v9

    .line 403
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    :pswitch_e
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 407
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 408
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_6

    .line 411
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_6
    const/4 v1, 0x0

    .line 413
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaSession2$Stub;->skipToPlaylistItem(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V

    .line 414
    return v9

    .line 386
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_f
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 390
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 392
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 393
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_7

    .line 396
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_7
    const/4 v2, 0x0

    .line 398
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->replacePlaylistItem(Landroid/support/v4/media/IMediaController2;ILandroid/os/Bundle;)V

    .line 399
    return v9

    .line 371
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_10
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 375
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 376
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_8

    .line 379
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_8
    const/4 v1, 0x0

    .line 381
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaSession2$Stub;->removePlaylistItem(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V

    .line 382
    return v9

    .line 354
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_11
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 358
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 361
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_9

    .line 364
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_9
    const/4 v2, 0x0

    .line 366
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->addPlaylistItem(Landroid/support/v4/media/IMediaController2;ILandroid/os/Bundle;)V

    .line 367
    return v9

    .line 339
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_12
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 343
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 344
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_a

    .line 347
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_a
    const/4 v1, 0x0

    .line 349
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaSession2$Stub;->updatePlaylistMetadata(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V

    .line 350
    return v9

    .line 322
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_13
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 326
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 328
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 329
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_b

    .line 332
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_b
    const/4 v2, 0x0

    .line 334
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_b
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->setPlaylist(Landroid/support/v4/media/IMediaController2;Ljava/util/List;Landroid/os/Bundle;)V

    .line 335
    return v9

    .line 312
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_14
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 316
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 317
    .local v1, "_arg1":F
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaSession2$Stub;->setPlaybackSpeed(Landroid/support/v4/media/IMediaController2;F)V

    .line 318
    return v9

    .line 295
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":F
    :pswitch_15
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 299
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 302
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_c

    .line 305
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_c
    const/4 v2, 0x0

    .line 307
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->setRating(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 308
    return v9

    .line 278
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_16
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 282
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 285
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_d

    .line 288
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_d
    const/4 v2, 0x0

    .line 290
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_d
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->playFromMediaId(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 291
    return v9

    .line 261
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_17
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 265
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 268
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_e

    .line 271
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_e
    const/4 v2, 0x0

    .line 273
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_e
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->playFromSearch(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 274
    return v9

    .line 239
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_18
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 243
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 244
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg1":Landroid/net/Uri;
    goto :goto_f

    .line 247
    .end local v1    # "_arg1":Landroid/net/Uri;
    :cond_f
    const/4 v1, 0x0

    .line 250
    .restart local v1    # "_arg1":Landroid/net/Uri;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    .line 251
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_10

    .line 254
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_10
    const/4 v2, 0x0

    .line 256
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_10
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->playFromUri(Landroid/support/v4/media/IMediaController2;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 257
    return v9

    .line 222
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_19
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 226
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 229
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_11

    .line 232
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_11
    const/4 v2, 0x0

    .line 234
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_11
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->prepareFromMediaId(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 235
    return v9

    .line 205
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_1a
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 209
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    .line 212
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_12

    .line 215
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_12
    const/4 v2, 0x0

    .line 217
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_12
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->prepareFromSearch(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 218
    return v9

    .line 183
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_1b
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 187
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 188
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg1":Landroid/net/Uri;
    goto :goto_13

    .line 191
    .end local v1    # "_arg1":Landroid/net/Uri;
    :cond_13
    const/4 v1, 0x0

    .line 194
    .restart local v1    # "_arg1":Landroid/net/Uri;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 195
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_14

    .line 198
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_14
    const/4 v2, 0x0

    .line 200
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_14
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->prepareFromUri(Landroid/support/v4/media/IMediaController2;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 201
    return v9

    .line 154
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_1c
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 158
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 159
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_15

    .line 162
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_15
    const/4 v1, 0x0

    .line 165
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    .line 166
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_16

    .line 169
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_16
    const/4 v2, 0x0

    .line 172
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 173
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .local v3, "_arg3":Landroid/os/ResultReceiver;
    goto :goto_17

    .line 176
    .end local v3    # "_arg3":Landroid/os/ResultReceiver;
    :cond_17
    const/4 v3, 0x0

    .line 178
    .restart local v3    # "_arg3":Landroid/os/ResultReceiver;
    :goto_17
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/media/IMediaSession2$Stub;->sendCustomCommand(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 179
    return v9

    .line 144
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/os/ResultReceiver;
    :pswitch_1d
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 148
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 149
    .local v1, "_arg1":J
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->seekTo(Landroid/support/v4/media/IMediaController2;J)V

    .line 150
    return v9

    .line 136
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":J
    :pswitch_1e
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 139
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->rewind(Landroid/support/v4/media/IMediaController2;)V

    .line 140
    return v9

    .line 128
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    :pswitch_1f
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 131
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->fastForward(Landroid/support/v4/media/IMediaController2;)V

    .line 132
    return v9

    .line 120
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    :pswitch_20
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->prepare(Landroid/support/v4/media/IMediaController2;)V

    .line 124
    return v9

    .line 112
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    :pswitch_21
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 115
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->reset(Landroid/support/v4/media/IMediaController2;)V

    .line 116
    return v9

    .line 104
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    :pswitch_22
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 107
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->pause(Landroid/support/v4/media/IMediaController2;)V

    .line 108
    return v9

    .line 96
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    :pswitch_23
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->play(Landroid/support/v4/media/IMediaController2;)V

    .line 100
    return v9

    .line 84
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    :pswitch_24
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 88
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->adjustVolume(Landroid/support/v4/media/IMediaController2;II)V

    .line 92
    return v9

    .line 72
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_25
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 76
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaSession2$Stub;->setVolumeTo(Landroid/support/v4/media/IMediaController2;II)V

    .line 80
    return v9

    .line 64
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_26
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 67
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaSession2$Stub;->release(Landroid/support/v4/media/IMediaController2;)V

    .line 68
    return v9

    .line 54
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    :pswitch_27
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v0

    .line 58
    .restart local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaSession2$Stub;->connect(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;)V

    .line 60
    return v9

    .line 49
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaController2;
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

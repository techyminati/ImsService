.class Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;
.super Landroid/os/Handler;
.source "MtkSimulatedGsmCallState.java"


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final EVENT_PROGRESS_CALL_STATE:I = 0x1

.field static final MAX_CALLS:I = 0x7


# instance fields
.field private mAutoProgressConnecting:Z

.field mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

.field private mNextDialFailImmediately:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 155
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mediatek/internal/telephony/test/CallInfo;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mAutoProgressConnecting:Z

    .line 156
    return-void
.end method

.method private countActiveLines()I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/internal/telephony/test/InvalidStateEx;
        }
    .end annotation

    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, "hasMpty":Z
    const/4 v1, 0x0

    .line 769
    .local v1, "hasHeld":Z
    const/4 v2, 0x0

    .line 770
    .local v2, "hasActive":Z
    const/4 v3, 0x0

    .line 771
    .local v3, "hasConnecting":Z
    const/4 v4, 0x0

    .line 772
    .local v4, "hasRinging":Z
    const/4 v5, 0x0

    .line 774
    .local v5, "mptyIsHeld":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    iget-object v7, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v8, v7

    if-ge v6, v8, :cond_77

    .line 775
    aget-object v7, v7, v6

    .line 777
    .local v7, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v7, :cond_74

    .line 778
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_23

    iget-boolean v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-eqz v10, :cond_23

    .line 779
    iget-object v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v11, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v10, v11, :cond_20

    move v10, v9

    goto :goto_21

    :cond_20
    move v10, v8

    :goto_21
    move v5, v10

    goto :goto_55

    .line 780
    :cond_23
    iget-boolean v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    const-string v11, "Invalid state"

    const-string v12, "MtkModelInterpreter"

    if-eqz v10, :cond_3d

    if-eqz v5, :cond_3d

    iget-object v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v13, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v10, v13, :cond_34

    goto :goto_3d

    .line 783
    :cond_34
    invoke-static {v12, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v8, Lcom/mediatek/internal/telephony/test/InvalidStateEx;

    invoke-direct {v8}, Lcom/mediatek/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v8

    .line 785
    :cond_3d
    :goto_3d
    iget-boolean v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    if-nez v10, :cond_55

    if-eqz v0, :cond_55

    if-eqz v5, :cond_55

    iget-object v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v13, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v10, v13, :cond_4c

    goto :goto_55

    .line 788
    :cond_4c
    invoke-static {v12, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v8, Lcom/mediatek/internal/telephony/test/InvalidStateEx;

    invoke-direct {v8}, Lcom/mediatek/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v8

    .line 792
    :cond_55
    :goto_55
    iget-boolean v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    or-int/2addr v0, v10

    .line 793
    iget-object v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v11, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v10, v11, :cond_60

    move v10, v9

    goto :goto_61

    :cond_60
    move v10, v8

    :goto_61
    or-int/2addr v1, v10

    .line 794
    iget-object v10, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v11, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v10, v11, :cond_69

    move v8, v9

    :cond_69
    or-int/2addr v2, v8

    .line 795
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v8

    or-int/2addr v3, v8

    .line 796
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v8

    or-int/2addr v4, v8

    .line 774
    .end local v7    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 800
    .end local v6    # "i":I
    :cond_77
    const/4 v6, 0x0

    .line 802
    .local v6, "ret":I
    if-eqz v1, :cond_7c

    add-int/lit8 v6, v6, 0x1

    .line 803
    :cond_7c
    if-eqz v2, :cond_80

    add-int/lit8 v6, v6, 0x1

    .line 804
    :cond_80
    if-eqz v3, :cond_84

    add-int/lit8 v6, v6, 0x1

    .line 805
    :cond_84
    if-eqz v4, :cond_88

    add-int/lit8 v6, v6, 0x1

    .line 807
    :cond_88
    return v6
.end method


# virtual methods
.method public conference()Z
    .registers 6

    .line 608
    const/4 v0, 0x0

    .line 611
    .local v0, "countCalls":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_18

    .line 612
    aget-object v2, v2, v1

    .line 614
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_15

    .line 615
    add-int/lit8 v0, v0, 0x1

    .line 617
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 618
    const/4 v3, 0x0

    return v3

    .line 611
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 622
    .end local v1    # "i":I
    :cond_18
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_19
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2e

    .line 623
    aget-object v2, v2, v1

    .line 625
    .restart local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_2b

    .line 626
    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 627
    if-lez v0, :cond_2b

    .line 628
    iput-boolean v4, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    .line 622
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 633
    .end local v1    # "i":I
    :cond_2e
    return v4
.end method

.method public explicitCallTransfer()Z
    .registers 5

    .line 638
    const/4 v0, 0x0

    .line 641
    .local v0, "countCalls":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_18

    .line 642
    aget-object v2, v2, v1

    .line 644
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_15

    .line 645
    add-int/lit8 v0, v0, 0x1

    .line 647
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 648
    const/4 v3, 0x0

    return v3

    .line 641
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 654
    .end local v1    # "i":I
    :cond_18
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerHangupAll()Z

    move-result v1

    return v1
.end method

.method public getClccLines()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 754
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 755
    aget-object v2, v2, v1

    .line 757
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_1b

    .line 758
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/test/CallInfo;->toCLCCLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 762
    .end local v1    # "i":I
    :cond_1e
    return-object v0
.end method

.method public getDriverCalls()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 734
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 735
    aget-object v2, v2, v1

    .line 737
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_1b

    .line 740
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/test/CallInfo;->toDriverCall(I)Lcom/android/internal/telephony/DriverCall;

    move-result-object v3

    .line 741
    .local v3, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 745
    .end local v1    # "i":I
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SC< getDriverCalls "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 161
    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    goto :goto_a

    .line 166
    :pswitch_7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->progressConnectingCallState()V

    .line 168
    :goto_a
    monitor-exit p0

    .line 169
    return-void

    .line 168
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onAnswer()Z
    .registers 5

    .line 359
    monitor-enter p0

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 361
    aget-object v1, v1, v0

    .line 363
    .local v1, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_17

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1d

    .line 367
    :cond_17
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v2

    monitor-exit p0

    return v2

    .line 360
    .end local v1    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 370
    .end local v0    # "i":I
    :cond_20
    monitor-exit p0

    .line 372
    const/4 v0, 0x0

    return v0

    .line 370
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public onChld(CC)Z
    .registers 6
    .param p1, "c0"    # C
    .param p2, "c1"    # C

    .line 394
    const/4 v0, 0x0

    .line 396
    .local v0, "callIndex":I
    if-eqz p2, :cond_e

    .line 397
    add-int/lit8 v0, p2, -0x31

    .line 399
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v1, v1

    if-lt v0, v1, :cond_e

    .line 400
    :cond_c
    const/4 v1, 0x0

    return v1

    .line 404
    :cond_e
    packed-switch p1, :pswitch_data_46

    .line 440
    const/4 v1, 0x0

    .local v1, "ret":Z
    goto :goto_44

    .line 436
    .end local v1    # "ret":Z
    :pswitch_13
    const/4 v1, 0x0

    .line 438
    .restart local v1    # "ret":Z
    goto :goto_44

    .line 431
    .end local v1    # "ret":Z
    :pswitch_15
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->explicitCallTransfer()Z

    move-result v1

    .line 432
    .restart local v1    # "ret":Z
    goto :goto_44

    .line 428
    .end local v1    # "ret":Z
    :pswitch_1a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->conference()Z

    move-result v1

    .line 429
    .restart local v1    # "ret":Z
    goto :goto_44

    .line 421
    .end local v1    # "ret":Z
    :pswitch_1f
    if-gtz p2, :cond_26

    .line 422
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_44

    .line 424
    .end local v1    # "ret":Z
    :cond_26
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->separateCall(I)Z

    move-result v1

    .line 426
    .restart local v1    # "ret":Z
    goto :goto_44

    .line 409
    .end local v1    # "ret":Z
    :pswitch_2b
    if-gtz p2, :cond_32

    .line 410
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->releaseActiveAcceptHeldOrWaiting()Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_44

    .line 412
    .end local v1    # "ret":Z
    :cond_32
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v2, v1, v0

    if-nez v2, :cond_3a

    .line 413
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_44

    .line 415
    .end local v1    # "ret":Z
    :cond_3a
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 416
    const/4 v1, 0x1

    .line 419
    .restart local v1    # "ret":Z
    goto :goto_44

    .line 406
    .end local v1    # "ret":Z
    :pswitch_3f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->releaseHeldOrUDUB()Z

    move-result v1

    .line 407
    .restart local v1    # "ret":Z
    nop

    .line 444
    :goto_44
    return v1

    nop

    :pswitch_data_46
    .packed-switch 0x30
        :pswitch_3f
        :pswitch_2b
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_13
    .end packed-switch
.end method

.method public onDial(Ljava/lang/String;)Z
    .registers 11
    .param p1, "address"    # Ljava/lang/String;

    .line 660
    const-string v0, "SC< dial fail (invalid call state)"

    const/4 v1, -0x1

    .line 662
    .local v1, "freeSlot":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SC> dial \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GSM"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mNextDialFailImmediately:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_2b

    .line 665
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mNextDialFailImmediately:Z

    .line 667
    const-string v0, "SC< dial fail (per request)"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v4

    .line 671
    :cond_2b
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "phNum":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3b

    .line 674
    const-string v0, "SC< dial fail (invalid ph num)"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return v4

    .line 679
    :cond_3b
    const-string v5, "*99"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_52

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 680
    const-string v0, "SC< dial ignored (gprs)"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return v6

    .line 687
    :cond_52
    :try_start_52
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->countActiveLines()I

    move-result v5

    if-le v5, v6, :cond_5c

    .line 688
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Lcom/mediatek/internal/telephony/test/InvalidStateEx; {:try_start_52 .. :try_end_5b} :catch_ca

    .line 689
    return v4

    .line 694
    :cond_5c
    nop

    .line 696
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5e
    iget-object v7, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v8, v7

    if-ge v5, v8, :cond_93

    .line 697
    if-gez v1, :cond_6a

    aget-object v8, v7, v5

    if-nez v8, :cond_6a

    .line 698
    move v1, v5

    .line 701
    :cond_6a
    aget-object v8, v7, v5

    if-eqz v8, :cond_7a

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/test/CallInfo;->isActiveOrHeld()Z

    move-result v7

    if-nez v7, :cond_7a

    .line 704
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return v4

    .line 706
    :cond_7a
    iget-object v7, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v8, v7, v5

    if-eqz v8, :cond_90

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v8, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v7, v8, :cond_90

    .line 708
    iget-object v7, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v7, v7, v5

    sget-object v8, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v8, v7, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 696
    :cond_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    .line 712
    .end local v5    # "i":I
    :cond_93
    if-gez v1, :cond_99

    .line 713
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return v4

    .line 717
    :cond_99
    invoke-static {v2}, Lcom/mediatek/internal/telephony/test/CallInfo;->createOutgoingCall(Ljava/lang/String;)Lcom/mediatek/internal/telephony/test/CallInfo;

    move-result-object v0

    aput-object v0, v7, v1

    .line 719
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mAutoProgressConnecting:Z

    if-eqz v0, :cond_b0

    .line 720
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v0, v0, v1

    .line 721
    invoke-virtual {p0, v6, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    .line 720
    invoke-virtual {p0, v0, v4, v5}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 725
    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SC< dial (slot = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return v6

    .line 691
    :catch_ca
    move-exception v5

    .line 692
    .local v5, "ex":Lcom/mediatek/internal/telephony/test/InvalidStateEx;
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return v4
.end method

.method public onHangup()Z
    .registers 6

    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 380
    aget-object v2, v2, v1

    .line 382
    .local v2, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_17

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_17

    .line 383
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 384
    const/4 v0, 0x1

    .line 379
    .end local v2    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 388
    .end local v1    # "i":I
    :cond_1a
    return v0
.end method

.method public progressConnectingCallState()V
    .registers 6

    .line 220
    monitor-enter p0

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_35

    .line 222
    aget-object v1, v1, v0

    .line 224
    .local v1, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_25

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_25

    .line 225
    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 227
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mAutoProgressConnecting:Z

    if-eqz v2, :cond_35

    .line 228
    nop

    .line 229
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    .line 228
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_35

    .line 233
    :cond_25
    if-eqz v1, :cond_32

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_32

    .line 236
    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 237
    goto :goto_35

    .line 221
    .end local v1    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 240
    .end local v0    # "i":I
    :cond_35
    :goto_35
    monitor-exit p0

    .line 241
    return-void

    .line 240
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public progressConnectingToActive()V
    .registers 5

    .line 246
    monitor-enter p0

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 248
    aget-object v1, v1, v0

    .line 250
    .local v1, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_1c

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_17

    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1c

    .line 253
    :cond_17
    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 254
    goto :goto_1f

    .line 247
    .end local v1    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 257
    .end local v0    # "i":I
    :cond_1f
    :goto_1f
    monitor-exit p0

    .line 258
    return-void

    .line 257
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public releaseActiveAcceptHeldOrWaiting()Z
    .registers 8

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "foundHeld":Z
    const/4 v1, 0x0

    .line 482
    .local v1, "foundActive":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1b

    .line 483
    aget-object v3, v3, v2

    .line 485
    .local v3, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v3, :cond_18

    iget-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v4, v6, :cond_18

    .line 486
    iget-object v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v5, v4, v2

    .line 487
    const/4 v1, 0x1

    .line 482
    .end local v3    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 491
    .end local v2    # "i":I
    :cond_1b
    if-nez v1, :cond_3b

    .line 494
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v4, v3

    if-ge v2, v4, :cond_3b

    .line 495
    aget-object v3, v3, v2

    .line 497
    .restart local v3    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v3, :cond_38

    iget-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v4, v6, :cond_33

    iget-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v4, v6, :cond_38

    .line 501
    :cond_33
    iget-object v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v5, v4, v2

    .line 502
    const/4 v1, 0x1

    .line 494
    .end local v3    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 507
    .end local v2    # "i":I
    :cond_3b
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v4, v3

    if-ge v2, v4, :cond_53

    .line 508
    aget-object v3, v3, v2

    .line 510
    .restart local v3    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v3, :cond_50

    iget-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_50

    .line 511
    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 512
    const/4 v0, 0x1

    .line 507
    .end local v3    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 516
    .end local v2    # "i":I
    :cond_53
    const/4 v2, 0x1

    if-eqz v0, :cond_57

    .line 517
    return v2

    .line 520
    :cond_57
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_58
    iget-object v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v5, v4

    if-ge v3, v5, :cond_6f

    .line 521
    aget-object v4, v4, v3

    .line 523
    .local v4, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v4, :cond_6c

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 524
    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v5, v4, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 525
    return v2

    .line 520
    .end local v4    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 529
    .end local v3    # "i":I
    :cond_6f
    return v2
.end method

.method public releaseHeldOrUDUB()Z
    .registers 7

    .line 449
    const/4 v0, 0x0

    .line 451
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1b

    .line 452
    aget-object v2, v2, v1

    .line 454
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 455
    const/4 v0, 0x1

    .line 456
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v4, v3, v1

    .line 457
    goto :goto_1b

    .line 451
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 461
    .end local v1    # "i":I
    :cond_1b
    :goto_1b
    if-nez v0, :cond_35

    .line 462
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_35

    .line 463
    aget-object v2, v2, v1

    .line 465
    .restart local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_32

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v5, :cond_32

    .line 466
    const/4 v0, 0x1

    .line 467
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v4, v3, v1

    .line 462
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 473
    .end local v1    # "i":I
    :cond_35
    const/4 v1, 0x1

    return v1
.end method

.method public separateCall(I)Z
    .registers 11
    .param p1, "index"    # I

    .line 570
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v1, v1, p1

    .line 572
    .local v1, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->countActiveLines()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    goto :goto_42

    .line 576
    :cond_15
    sget-object v2, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v2, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 577
    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z

    .line 579
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    iget-object v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v5, v4

    if-ge v2, v5, :cond_41

    .line 580
    const/4 v5, 0x0

    .local v5, "countHeld":I
    const/4 v6, 0x0

    .line 582
    .local v6, "lastHeld":I
    if-eq v2, p1, :cond_36

    .line 583
    aget-object v4, v4, v2

    .line 585
    .local v4, "cb":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v4, :cond_36

    iget-object v7, v4, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v8, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v7, v8, :cond_36

    .line 586
    sget-object v7, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v7, v4, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 587
    add-int/lit8 v5, v5, 0x1

    .line 588
    move v6, v2

    .line 592
    .end local v4    # "cb":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_36
    if-ne v5, v3, :cond_3e

    .line 594
    iget-object v4, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v4, v4, v6

    iput-boolean v0, v4, Lcom/mediatek/internal/telephony/test/CallInfo;->mIsMpty:Z
    :try_end_3e
    .catch Lcom/mediatek/internal/telephony/test/InvalidStateEx; {:try_start_1 .. :try_end_3e} :catch_43

    .line 579
    .end local v5    # "countHeld":I
    .end local v6    # "lastHeld":I
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 598
    .end local v2    # "i":I
    :cond_41
    return v3

    .line 573
    :cond_42
    :goto_42
    return v0

    .line 599
    .end local v1    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :catch_43
    move-exception v1

    .line 600
    .local v1, "ex":Lcom/mediatek/internal/telephony/test/InvalidStateEx;
    return v0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .registers 2
    .param p1, "b"    # Z

    .line 265
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mAutoProgressConnecting:Z

    .line 266
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .registers 2
    .param p1, "b"    # Z

    .line 270
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mNextDialFailImmediately:Z

    .line 271
    return-void
.end method

.method public switchActiveAndHeldOrWaiting()Z
    .registers 6

    .line 534
    const/4 v0, 0x0

    .line 537
    .local v0, "hasHeld":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 538
    aget-object v2, v2, v1

    .line 540
    .local v2, "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_13

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_13

    .line 541
    const/4 v0, 0x1

    .line 542
    goto :goto_16

    .line 537
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 547
    .end local v1    # "i":I
    :cond_16
    :goto_16
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_17
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_45

    .line 548
    aget-object v2, v2, v1

    .line 550
    .restart local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_42

    .line 551
    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_2b

    .line 552
    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    goto :goto_42

    .line 553
    :cond_2b
    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_36

    .line 554
    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    goto :goto_42

    .line 555
    :cond_36
    if-nez v0, :cond_42

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 556
    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 547
    .end local v2    # "c":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 561
    .end local v1    # "i":I
    :cond_45
    const/4 v1, 0x1

    return v1
.end method

.method public triggerHangupAll()Z
    .registers 6

    .line 340
    monitor-enter p0

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_15

    .line 344
    aget-object v3, v2, v1

    .line 346
    .local v3, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    aget-object v4, v2, v1

    if-eqz v4, :cond_f

    .line 347
    const/4 v0, 0x1

    .line 350
    :cond_f
    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 343
    .end local v3    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 353
    .end local v1    # "i":I
    :cond_15
    monitor-exit p0

    return v0

    .line 354
    .end local v0    # "found":Z
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public triggerHangupBackground()Z
    .registers 6

    .line 318
    monitor-enter p0

    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    .line 322
    aget-object v2, v2, v1

    .line 324
    .local v2, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_18

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_18

    .line 325
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 326
    const/4 v0, 0x1

    .line 321
    .end local v2    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 330
    .end local v1    # "i":I
    :cond_1b
    monitor-exit p0

    return v0

    .line 331
    .end local v0    # "found":Z
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public triggerHangupForeground()Z
    .registers 7

    .line 279
    monitor-enter p0

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_21

    .line 285
    aget-object v2, v2, v1

    .line 287
    .local v2, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_1e

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v3, v5, :cond_19

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v5, :cond_1e

    .line 291
    :cond_19
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v4, v3, v1

    .line 292
    const/4 v0, 0x1

    .line 284
    .end local v2    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 296
    .end local v1    # "i":I
    :cond_21
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_22
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_45

    .line 297
    aget-object v2, v2, v1

    .line 299
    .restart local v2    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-eqz v2, :cond_42

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v3, v5, :cond_3d

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v3, v5, :cond_3d

    iget-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v3, v5, :cond_42

    .line 304
    :cond_3d
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aput-object v4, v3, v1

    .line 305
    const/4 v0, 0x1

    .line 296
    .end local v2    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 308
    .end local v1    # "i":I
    :cond_45
    monitor-exit p0

    return v0

    .line 309
    .end local v0    # "found":Z
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public triggerRing(Ljava/lang/String;)Z
    .registers 9
    .param p1, "number"    # Ljava/lang/String;

    .line 179
    monitor-enter p0

    .line 180
    const/4 v0, -0x1

    .line 181
    .local v0, "empty":I
    const/4 v1, 0x0

    .line 184
    .local v1, "isCallWaiting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_2f

    .line 185
    aget-object v3, v3, v2

    .line 187
    .local v3, "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    if-nez v3, :cond_12

    if-gez v0, :cond_12

    .line 188
    move v0, v2

    goto :goto_2c

    .line 189
    :cond_12
    if-eqz v3, :cond_29

    iget-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-eq v4, v6, :cond_20

    iget-object v4, v3, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    if-ne v4, v6, :cond_29

    .line 193
    :cond_20
    const-string v4, "MtkModelInterpreter"

    const-string v6, "triggerRing failed; phone already ringing"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit p0

    return v5

    .line 196
    :cond_29
    if-eqz v3, :cond_2c

    .line 197
    const/4 v1, 0x1

    .line 184
    .end local v3    # "call":Lcom/mediatek/internal/telephony/test/CallInfo;
    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 201
    .end local v2    # "i":I
    :cond_2f
    if-gez v0, :cond_3a

    .line 202
    const-string v2, "MtkModelInterpreter"

    const-string v3, "triggerRing failed; all full"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit p0

    return v5

    .line 206
    :cond_3a
    nop

    .line 207
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v2}, Lcom/mediatek/internal/telephony/test/CallInfo;->createIncomingCall(Ljava/lang/String;)Lcom/mediatek/internal/telephony/test/CallInfo;

    move-result-object v2

    aput-object v2, v3, v0

    .line 209
    if-eqz v1, :cond_4f

    .line 210
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->mCalls:[Lcom/mediatek/internal/telephony/test/CallInfo;

    aget-object v2, v2, v0

    sget-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    iput-object v3, v2, Lcom/mediatek/internal/telephony/test/CallInfo;->mState:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 213
    .end local v0    # "empty":I
    .end local v1    # "isCallWaiting":Z
    :cond_4f
    monitor-exit p0

    .line 214
    const/4 v0, 0x1

    return v0

    .line 213
    :catchall_52
    move-exception v0

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_52

    throw v0
.end method

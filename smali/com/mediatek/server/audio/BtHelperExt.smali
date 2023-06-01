.class public Lcom/mediatek/server/audio/BtHelperExt;
.super Ljava/lang/Object;
.source "BtHelperExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;
    }
.end annotation


# static fields
.field private static final LE_CG_MODE_MAX:I = 0x2

.field private static final LE_CG_MODE_RAW:I = 0x1

.field static final LE_CG_MODE_UNDEFINED:I = -0x1

.field static final LE_CG_MODE_VIRTUAL_CALL:I = 0x0

.field private static final LE_CG_MODE_VR:I = 0x2

.field private static final LE_CG_STATE_ACTIVATE_REQ:I = 0x1

.field private static final LE_CG_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final LE_CG_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final LE_CG_STATE_DEACTIVATE_REQ:I = 0x4

.field private static final LE_CG_STATE_DEACTIVATING:I = 0x5

.field private static final LE_CG_STATE_INACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AS.BtHelperExt"


# instance fields
.field private mBluetoothLeTbs:Lcom/mediatek/bt/BluetoothTbs;

.field private mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field mDeviceBroker:Ljava/lang/Object;

.field private mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

.field private mLeAudio:Landroid/bluetooth/BluetoothProfile;

.field private mLeAudioProfile:Lcom/mediatek/bt/BluetoothLeAudio;

.field private mLeCallVcAbsVolSupported:Z

.field private mLeCgAudioMode:I

.field private mLeCgConnectionState:I

.field private mLeVcAbsVolSupported:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/mediatek/server/audio/AudioDeviceBrokerExt;)V
    .registers 4
    .param p1, "broker"    # Ljava/lang/Object;
    .param p2, "deviceBrokerExt"    # Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeVcAbsVolSupported:Z

    .line 84
    iput-boolean v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCallVcAbsVolSupported:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 529
    new-instance v0, Lcom/mediatek/server/audio/BtHelperExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/server/audio/BtHelperExt$1;-><init>(Lcom/mediatek/server/audio/BtHelperExt;)V

    iput-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 182
    iput-object p1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBroker:Ljava/lang/Object;

    .line 183
    iput-object p2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 184
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/server/audio/BtHelperExt;Lcom/mediatek/bt/BluetoothLeAudio;)Lcom/mediatek/bt/BluetoothLeAudio;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/audio/BtHelperExt;
    .param p1, "x1"    # Lcom/mediatek/bt/BluetoothLeAudio;

    .line 70
    iput-object p1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeAudioProfile:Lcom/mediatek/bt/BluetoothLeAudio;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/server/audio/BtHelperExt;)Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/audio/BtHelperExt;

    .line 70
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    return-object v0
.end method

.method private broadcastScoConnectionState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 772
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0, p1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postBroadcastLeCgConnectionState(I)V

    .line 773
    return-void
.end method

.method private btLeTbsDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;
    .registers 7
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 467
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 469
    const-string v0, ""

    .line 471
    :cond_c
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 472
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    const/high16 v2, 0x1000000

    .line 473
    .local v2, "nativeType":I
    if-eqz v1, :cond_21

    .line 474
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    sparse-switch v3, :sswitch_data_60

    goto :goto_21

    .line 480
    :sswitch_1c
    const/high16 v2, 0x1000000

    goto :goto_21

    .line 477
    :sswitch_1f
    const/high16 v2, 0x1000000

    .line 484
    :cond_21
    :goto_21
    sget-boolean v3, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v3, :cond_59

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btHeadsetDeviceToAudioDevice btDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " btClass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    if-nez v1, :cond_3c

    const-string v4, "Unknown"

    goto :goto_3d

    :cond_3c
    move-object v4, v1

    :goto_3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " nativeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    const-string v4, "AS.BtHelperExt"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_59
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v3, v2, v0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    return-object v3

    nop

    :sswitch_data_60
    .sparse-switch
        0x404 -> :sswitch_1f
        0x408 -> :sswitch_1f
        0x420 -> :sswitch_1c
    .end sparse-switch
.end method

.method private checkCgAudioState()V
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbs:Lcom/mediatek/bt/BluetoothTbs;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_17

    iget v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    if-nez v2, :cond_17

    .line 355
    invoke-virtual {v0, v1}, Lcom/mediatek/bt/BluetoothTbs;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_17

    .line 357
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 359
    :cond_17
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_3d

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCgAudioState() mLeCgAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBluetoothLeTbsDevice ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelperExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_3d
    return-void
.end method

.method private static connectBluetoothLeCgAudioHelper(Lcom/mediatek/bt/BluetoothTbs;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .param p0, "bluetoothTbs"    # Lcom/mediatek/bt/BluetoothTbs;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "leCgAudioMode"    # I

    .line 345
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_1a

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startIsoUsingVirtualVoiceCall, leCgAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelperExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1a
    invoke-virtual {p0}, Lcom/mediatek/bt/BluetoothTbs;->startIsoUsingVirtualVoiceCall()Z

    move-result v0

    return v0
.end method

.method private static disconnectBluetoothLeCgAudioHelper(Lcom/mediatek/bt/BluetoothTbs;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .param p0, "bluetoothTbs"    # Lcom/mediatek/bt/BluetoothTbs;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "leCgAudioMode"    # I

    .line 337
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_1a

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopIsoUsingVirtualVoiceCall, leCgAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.BtHelperExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1a
    invoke-virtual {p0}, Lcom/mediatek/bt/BluetoothTbs;->stopIsoUsingVirtualVoiceCall()Z

    move-result v0

    return v0
.end method

.method private getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 3
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 524
    if-nez p1, :cond_5

    const-string v0, "(null)"

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method private getBluetoothTbs()Z
    .registers 6

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 639
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_14

    .line 640
    iget-object v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v4, 0x1a

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 648
    :cond_14
    iget-object v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 649
    if-eqz v0, :cond_1b

    const/16 v3, 0xbb8

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    .line 648
    :goto_1c
    invoke-virtual {v2, v3}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->handleFailureToConnectToBluetoothTbsService(I)V

    .line 651
    return v0
.end method

.method static getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 174
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 176
    const-string v1, ""

    return-object v1

    .line 178
    :cond_9
    return-object v0
.end method

.method private handleBtLeCsActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 15
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "isActive"    # Z

    .line 494
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 495
    return v0

    .line 497
    :cond_4
    const/high16 v1, -0x7ff00000

    .line 498
    .local v1, "inDevice":I
    invoke-direct {p0, p1}, Lcom/mediatek/server/audio/BtHelperExt;->btLeTbsDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    .line 499
    .local v2, "audioDevice":Landroid/media/AudioDeviceAttributes;
    invoke-static {p1}, Lcom/mediatek/server/audio/BtHelperExt;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "btDeviceName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 501
    .local v4, "result":Z
    const/4 v5, 0x0

    if-eqz p2, :cond_22

    .line 502
    iget-object v6, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v7

    .line 503
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 502
    invoke-virtual {v6, p2, v7, v8, v3}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v4, v6

    goto :goto_3c

    .line 505
    :cond_22
    new-array v6, v0, [I

    const/high16 v7, 0x1000000

    aput v7, v6, v5

    .line 510
    .local v6, "outDeviceTypes":[I
    array-length v7, v6

    move v8, v5

    :goto_2a
    if-ge v8, v7, :cond_3c

    aget v9, v6, v8

    .line 511
    .local v9, "outDeviceType":I
    iget-object v10, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 512
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 511
    invoke-virtual {v10, p2, v9, v11, v3}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v4, v10

    .line 510
    .end local v9    # "outDeviceType":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 516
    .end local v6    # "outDeviceTypes":[I
    :cond_3c
    :goto_3c
    iget-object v6, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 517
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 516
    invoke-virtual {v6, p2, v1, v7, v3}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b

    if-eqz v4, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v5

    .line 518
    .end local v4    # "result":Z
    .local v0, "result":Z
    :goto_4c
    return v0
.end method

.method private requestLeCgState(II)Z
    .registers 11
    .param p1, "state"    # I
    .param p2, "cGAudioMode"    # I

    .line 658
    invoke-direct {p0}, Lcom/mediatek/server/audio/BtHelperExt;->checkCgAudioState()V

    .line 659
    const-string v0, ", cGAudioMode="

    const/4 v1, 0x1

    const-string v2, "AS.BtHelperExt"

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-ne p1, v4, :cond_f7

    .line 662
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 663
    iget v5, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    const/4 v6, 0x3

    packed-switch v5, :pswitch_data_16a

    .line 721
    :pswitch_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLeCgState: failed to connect in state "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-direct {p0, v3}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 724
    return v3

    .line 711
    :pswitch_37
    iput v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 712
    goto/16 :goto_169

    .line 714
    :pswitch_3b
    iput v6, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 715
    invoke-direct {p0, v1}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 716
    goto/16 :goto_169

    .line 718
    :pswitch_42
    const-string v0, "requestLeCgState: already in ACTIVE mode, simply return"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    goto/16 :goto_169

    .line 665
    :pswitch_49
    iput p2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 666
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7d

    .line 667
    iput v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 668
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_7d

    .line 669
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 670
    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bluetooth_sco_channel_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    .line 672
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 669
    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 674
    if-gt v0, v4, :cond_7b

    if-gez v0, :cond_7d

    .line 675
    :cond_7b
    iput v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 679
    :cond_7d
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbs:Lcom/mediatek/bt/BluetoothTbs;

    if-nez v0, :cond_a5

    .line 680
    invoke-direct {p0}, Lcom/mediatek/server/audio/BtHelperExt;->getBluetoothTbs()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 681
    iput v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    goto/16 :goto_169

    .line 683
    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestScoState: getBluetoothTbs() failed during connection, mLeCgAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-direct {p0, v3}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 687
    return v3

    .line 691
    :cond_a5
    iget-object v4, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_c3

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestScoState: no active device while connecting, mLeCgAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-direct {p0, v3}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 696
    return v3

    .line 698
    :cond_c3
    iget v5, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    invoke-static {v0, v4, v5}, Lcom/mediatek/server/audio/BtHelperExt;->connectBluetoothLeCgAudioHelper(Lcom/mediatek/bt/BluetoothTbs;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 700
    iput v6, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    goto/16 :goto_169

    .line 702
    :cond_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestScoState: connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    .line 703
    invoke-direct {p0, v1}, Lcom/mediatek/server/audio/BtHelperExt;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed, mLeCgAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0, v3}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 707
    return v3

    .line 726
    :cond_f7
    const/16 v4, 0xa

    if-ne p1, v4, :cond_169

    .line 727
    iget v4, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    packed-switch v4, :pswitch_data_17a

    .line 762
    :pswitch_100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLeCgState: failed to disconnect in state "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-direct {p0, v3}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 765
    return v3

    .line 729
    :pswitch_120
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbs:Lcom/mediatek/bt/BluetoothTbs;

    if-nez v0, :cond_14a

    .line 730
    invoke-direct {p0}, Lcom/mediatek/server/audio/BtHelperExt;->getBluetoothTbs()Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 731
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    goto :goto_169

    .line 733
    :cond_12e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestScoState: getBluetoothHeadset failed during disconnection, mLeCgAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iput v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 736
    invoke-direct {p0, v3}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 738
    return v3

    .line 742
    :cond_14a
    iget-object v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_154

    .line 743
    iput v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 744
    invoke-direct {p0, v3}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 746
    goto :goto_169

    .line 748
    :cond_154
    invoke-static {v0, v2, v4}, Lcom/mediatek/server/audio/BtHelperExt;->disconnectBluetoothLeCgAudioHelper(Lcom/mediatek/bt/BluetoothTbs;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 750
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    goto :goto_169

    .line 752
    :cond_15e
    iput v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 753
    invoke-direct {p0, v3}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 756
    goto :goto_169

    .line 758
    :pswitch_164
    iput v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 759
    invoke-direct {p0, v3}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 768
    :cond_169
    :goto_169
    return v1

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_49
        :pswitch_17
        :pswitch_17
        :pswitch_42
        :pswitch_3b
        :pswitch_37
    .end packed-switch

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_164
        :pswitch_100
        :pswitch_120
    .end packed-switch
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 325
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 328
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_19

    .line 330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    nop

    .line 332
    return-void

    .line 330
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    throw v2
.end method

.method private setBLeCgActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBLeCgActiveDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/mediatek/server/audio/BtHelperExt;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-direct {p0, p1}, Lcom/mediatek/server/audio/BtHelperExt;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "AS.BtHelperExt"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    .line 434
    .local v0, "previousActiveDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 435
    return-void

    .line 437
    :cond_31
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/mediatek/server/audio/BtHelperExt;->handleBtLeCsActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v3

    if-nez v3, :cond_50

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBLeCgActiveDevice() failed to remove previous device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-direct {p0, v0}, Lcom/mediatek/server/audio/BtHelperExt;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_50
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/mediatek/server/audio/BtHelperExt;->handleBtLeCsActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v3

    if-nez v3, :cond_70

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBLeCgActiveDevice() failed to add new device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-direct {p0, p1}, Lcom/mediatek/server/audio/BtHelperExt;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 p1, 0x0

    .line 447
    :cond_70
    iput-object p1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    .line 448
    if-nez p1, :cond_7f

    .line 449
    invoke-virtual {p0}, Lcom/mediatek/server/audio/BtHelperExt;->resetBluetoothLeCg()V

    .line 450
    iput-boolean v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCallVcAbsVolSupported:Z

    .line 451
    iget-object v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 452
    invoke-virtual {v1, v2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setBleCallVcSupportsAbsoluteVolume(Z)V

    .line 453
    return-void

    .line 455
    :cond_7f
    return-void
.end method


# virtual methods
.method declared-synchronized disconnectAllBluetoothProfiles()V
    .registers 3

    monitor-enter p0

    .line 560
    :try_start_1
    const-string v0, "AS.BtHelperExt"

    const-string v1, "disconnectAllBluetoothProfiles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postDisconnectLE()V

    .line 562
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postBtTbsProfileDisconnected()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 563
    monitor-exit p0

    return-void

    .line 559
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized disconnectBleTbs()V
    .registers 3

    monitor-enter p0

    .line 420
    :try_start_1
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_c

    .line 421
    const-string v0, "AS.BtHelperExt"

    const-string v1, "disconnectBleTbs()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/server/audio/BtHelperExt;->setBLeCgActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 424
    iput-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbs:Lcom/mediatek/bt/BluetoothTbs;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 425
    monitor-exit p0

    return-void

    .line 419
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getLeTbsAudioDevice()Landroid/media/AudioDeviceAttributes;
    .registers 2

    .line 788
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_6

    .line 789
    const/4 v0, 0x0

    return-object v0

    .line 791
    :cond_6
    invoke-direct {p0, v0}, Lcom/mediatek/server/audio/BtHelperExt;->btLeTbsDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized isBluetoothLeCgOn()Z
    .registers 4

    monitor-enter p0

    .line 799
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbs:Lcom/mediatek/bt/BluetoothTbs;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 800
    monitor-exit p0

    return v1

    .line 802
    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/mediatek/bt/BluetoothTbs;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_15

    const/16 v2, 0xc

    if-ne v0, v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    monitor-exit p0

    return v1

    .line 798
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isBluetoothLeTbsDeviceActive()Z
    .registers 2

    monitor-enter p0

    .line 613
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 613
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isLeVcAbsoluteVolumeSupported()Z
    .registers 2

    monitor-enter p0

    .line 566
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeAudio:Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeVcAbsVolSupported:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    .line 566
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBroadcastLeCgConnectionState(I)V
    .registers 5
    .param p1, "state"    # I

    monitor-enter p0

    .line 776
    :try_start_1
    iget v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgConnectionState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-ne p1, v0, :cond_7

    .line 777
    monitor-exit p0

    return-void

    .line 779
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    invoke-direct {p0, v0}, Lcom/mediatek/server/audio/BtHelperExt;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 784
    iput p1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgConnectionState:I
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_21

    .line 785
    monitor-exit p0

    return-void

    .line 775
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    .end local p1    # "state":I
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onLeProfileConnected(Landroid/bluetooth/BluetoothProfile;)V
    .registers 10
    .param p1, "LeAudio"    # Landroid/bluetooth/BluetoothProfile;

    monitor-enter p0

    .line 213
    :try_start_1
    iput-object p1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeAudio:Landroid/bluetooth/BluetoothProfile;

    .line 214
    invoke-interface {p1}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_27

    if-eqz v1, :cond_f

    .line 216
    monitor-exit p0

    return-void

    .line 218
    :cond_f
    const/4 v1, 0x0

    :try_start_10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 219
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    nop

    .line 220
    invoke-interface {p1, v1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 221
    .local v4, "state":I
    iget-object v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "mBluetoothProfileServiceListener"

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postBluetoothLeAudioDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_27

    .line 226
    monitor-exit p0

    return-void

    .line 212
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "state":I
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    .end local p1    # "LeAudio":Landroid/bluetooth/BluetoothProfile;
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onLeTbsProfileConnected(Lcom/mediatek/bt/BluetoothTbs;)V
    .registers 6
    .param p1, "bluetoothLeTbs"    # Lcom/mediatek/bt/BluetoothTbs;

    monitor-enter p0

    .line 368
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->handleCancelFailureToConnectToBluetoothTbsService()V

    .line 369
    iput-object p1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbs:Lcom/mediatek/bt/BluetoothTbs;

    .line 370
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_22

    .line 371
    const-string v0, "AS.BtHelperExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeTbsProfileConnected bluetoothLeTbs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :cond_22
    invoke-direct {p0}, Lcom/mediatek/server/audio/BtHelperExt;->checkCgAudioState()V

    .line 386
    iget v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_5b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2f

    .line 388
    monitor-exit p0

    return-void

    .line 390
    .restart local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :cond_2f
    const/4 v1, 0x0

    .line 391
    .local v1, "status":Z
    :try_start_30
    iget-object v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_51

    .line 392
    sparse-switch v0, :sswitch_data_5e

    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    goto :goto_51

    .line 402
    .restart local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :sswitch_38
    iget-object v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbs:Lcom/mediatek/bt/BluetoothTbs;

    invoke-static {v3, v2, v0}, Lcom/mediatek/server/audio/BtHelperExt;->disconnectBluetoothLeCgAudioHelper(Lcom/mediatek/bt/BluetoothTbs;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    move v1, v0

    .line 405
    if-eqz v1, :cond_51

    .line 406
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    goto :goto_51

    .line 394
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :sswitch_45
    iget-object v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbs:Lcom/mediatek/bt/BluetoothTbs;

    invoke-static {v3, v2, v0}, Lcom/mediatek/server/audio/BtHelperExt;->connectBluetoothLeCgAudioHelper(Lcom/mediatek/bt/BluetoothTbs;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    move v1, v0

    .line 397
    if-eqz v1, :cond_51

    .line 398
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 411
    :cond_51
    :goto_51
    if-nez v1, :cond_59

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 413
    invoke-direct {p0, v0}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_5b

    .line 415
    :cond_59
    monitor-exit p0

    return-void

    .line 367
    .end local v1    # "status":Z
    .end local p1    # "bluetoothLeTbs":Lcom/mediatek/bt/BluetoothTbs;
    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_45
        0x4 -> :sswitch_38
    .end sparse-switch
.end method

.method declared-synchronized onSystemReady()V
    .registers 6

    monitor-enter p0

    .line 191
    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgConnectionState:I

    .line 192
    invoke-virtual {p0}, Lcom/mediatek/server/audio/BtHelperExt;->resetBluetoothLeCg()V

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    invoke-direct {p0, v0}, Lcom/mediatek/server/audio/BtHelperExt;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 200
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 202
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_39

    .line 203
    invoke-static {}, Lcom/mediatek/bt/BluetoothLeAudioFactory;->getInstance()Lcom/mediatek/bt/BluetoothLeAudioFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 204
    invoke-virtual {v3}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 203
    invoke-virtual {v2, v1, v3, v4}, Lcom/mediatek/bt/BluetoothLeAudioFactory;->onLeAudioSystemReady(Landroid/bluetooth/BluetoothAdapter;Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 206
    iget-object v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v4, 0x1a

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_39
    .catchall {:try_start_2 .. :try_end_39} :catchall_3b

    .line 210
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :cond_39
    monitor-exit p0

    return-void

    .line 190
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receiveBtEvent(Landroid/content/Intent;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;

    monitor-enter p0

    .line 231
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "action":Ljava/lang/String;
    const-string v1, "AS.BtHelperExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveBtEvent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mLeCgAudioMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v1, "android.bluetooth.action.LEAUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 235
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 236
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    sget-boolean v2, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v2, :cond_4f

    .line 237
    const-string v2, "AS.BtHelperExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiveBtEvent() BTactiveDeviceChanged, btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :cond_4f
    invoke-direct {p0, v1}, Lcom/mediatek/server/audio/BtHelperExt;->setBLeCgActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 240
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    goto/16 :goto_14c

    :cond_54
    const-string v1, "android.bluetooth.tbs.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 242
    :cond_64
    const/4 v1, 0x0

    .line 243
    .local v1, "broadcast":Z
    const/4 v2, -0x1

    .line 244
    .local v2, "LeCgAudioMode":I
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 245
    .local v3, "btState":I
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 246
    .local v4, "btDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v5, 0x0

    .line 247
    .local v5, "address":Ljava/lang/String;
    if-eqz v4, :cond_7d

    .line 248
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 250
    :cond_7d
    sget-boolean v6, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v6, :cond_b0

    .line 251
    const/16 v6, 0xc

    if-ne v3, v6, :cond_88

    .line 252
    const-string v6, "AudioConnected"

    goto :goto_8a

    :cond_88
    const-string v6, "AudioDisconnected"

    .line 253
    .local v6, "btStateInfo":Ljava/lang/String;
    :goto_8a
    const-string v7, "AS.BtHelperExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receiveBtEvent() ACTION_AUDIO_STATE_CHANGED, btState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "}address="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v6    # "btStateInfo":Ljava/lang/String;
    :cond_b0
    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    packed-switch v3, :pswitch_data_152

    goto :goto_11e

    .line 258
    :pswitch_b8
    const/4 v2, 0x1

    .line 259
    iget v10, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    if-eq v10, v7, :cond_c2

    if-eq v10, v6, :cond_c2

    .line 261
    iput v9, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    goto :goto_cb

    .line 262
    :cond_c2
    iget-object v6, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v6}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isBluetoothLeCgRequested()Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 264
    const/4 v1, 0x1

    .line 266
    :cond_cb
    :goto_cb
    iput-boolean v8, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCallVcAbsVolSupported:Z

    .line 267
    iget-object v6, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 268
    invoke-virtual {v6, v8}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setBleCallVcSupportsAbsoluteVolume(Z)V

    .line 269
    iget-object v6, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    const-string v7, "BtHelper.receiveBtEvent"

    invoke-virtual {v6, v8, v7}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setBluetoothLeCgOn(ZLjava/lang/String;)V

    .line 270
    goto :goto_11e

    .line 301
    :pswitch_da
    iget v8, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    if-eq v8, v7, :cond_11e

    if-eq v8, v6, :cond_11e

    .line 303
    iput v9, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    goto :goto_11e

    .line 272
    :pswitch_e3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCallVcAbsVolSupported:Z

    .line 273
    iget-object v10, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 274
    invoke-virtual {v10, v6}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setBleCallVcSupportsAbsoluteVolume(Z)V

    .line 275
    iget-object v10, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    const-string v11, "BtHelper.receiveBtEvent"

    invoke-virtual {v10, v6, v11}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setBluetoothLeCgOn(ZLjava/lang/String;)V

    .line 276
    const/4 v2, 0x0

    .line 283
    iget v10, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    if-eq v10, v8, :cond_101

    if-ne v10, v9, :cond_116

    iget-object v8, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 285
    invoke-virtual {v8}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isBluetoothLeCgRequested()Z

    move-result v8

    if-eqz v8, :cond_116

    .line 286
    :cond_101
    iget-object v8, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbs:Lcom/mediatek/bt/BluetoothTbs;

    if-eqz v8, :cond_116

    iget-object v10, p0, Lcom/mediatek/server/audio/BtHelperExt;->mBluetoothLeTbsDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_116

    iget v11, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 287
    invoke-static {v8, v10, v11}, Lcom/mediatek/server/audio/BtHelperExt;->connectBluetoothLeCgAudioHelper(Lcom/mediatek/bt/BluetoothTbs;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v8

    if-eqz v8, :cond_116

    .line 289
    iput v7, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 290
    const/4 v2, 0x2

    .line 291
    const/4 v1, 0x1

    .line 292
    goto :goto_11e

    .line 295
    :cond_116
    iget v7, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    if-eq v7, v9, :cond_11b

    .line 296
    const/4 v1, 0x1

    .line 298
    :cond_11b
    iput v6, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 299
    nop

    .line 309
    :cond_11e
    :goto_11e
    if-eqz v1, :cond_14c

    .line 310
    invoke-direct {p0, v2}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 313
    sget-boolean v6, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v6, :cond_13d

    .line 314
    const-string v6, "AS.BtHelperExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receiveBtEvent(): BR SCOAudioStateChanged, LeCgAudioMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_13d
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v6, "newIntent":Landroid/content/Intent;
    const-string v7, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    invoke-direct {p0, v6}, Lcom/mediatek/server/audio/BtHelperExt;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    :try_end_14c
    .catchall {:try_start_1 .. :try_end_14c} :catchall_14e

    .line 322
    .end local v1    # "broadcast":Z
    .end local v2    # "LeCgAudioMode":I
    .end local v3    # "btState":I
    .end local v4    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "newIntent":Landroid/content/Intent;
    :cond_14c
    :goto_14c
    monitor-exit p0

    return-void

    .line 230
    .end local v0    # "action":Ljava/lang/String;
    .end local p1    # "intent":Landroid/content/Intent;
    :catchall_14e
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_152
    .packed-switch 0xa
        :pswitch_e3
        :pswitch_da
        :pswitch_b8
    .end packed-switch
.end method

.method declared-synchronized resetBluetoothLeCg()V
    .registers 4

    monitor-enter p0

    .line 460
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCgAudioMode:I

    .line 461
    invoke-direct {p0, v0}, Lcom/mediatek/server/audio/BtHelperExt;->broadcastScoConnectionState(I)V

    .line 462
    const-string v1, "BTAudiosuspend=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    const-string v2, "resetBluetoothLeCg"

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setBluetoothLeCgOn(ZLjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    .line 464
    monitor-exit p0

    return-void

    .line 459
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLeCgVcIndex(I)V
    .registers 5
    .param p1, "index"    # I

    monitor-enter p0

    .line 594
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeAudio:Landroid/bluetooth/BluetoothProfile;

    if-nez v0, :cond_12

    .line 595
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_VOL:Z

    if-eqz v0, :cond_12

    .line 596
    const-string v0, "AS.BtHelperExt"

    const-string v1, "setLeCgVcIndex: bailing due to null mLeAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_44

    .line 597
    monitor-exit p0

    return-void

    .line 600
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :cond_12
    :try_start_12
    iget-boolean v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeCallVcAbsVolSupported:Z

    if-nez v0, :cond_1f

    .line 601
    const-string v0, "AS.BtHelperExt"

    const-string v1, "setLeCgVcIndex: abs vol not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_44

    .line 602
    monitor-exit p0

    return-void

    .line 604
    :cond_1f
    :try_start_1f
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_VOL:Z

    if-eqz v0, :cond_39

    .line 605
    const-string v0, "AS.BtHelperExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLeCgVcIndex()mLeAudio.setVcAbsoluteVolume for index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_39
    invoke-static {}, Lcom/mediatek/bt/BluetoothLeAudioFactory;->getInstance()Lcom/mediatek/bt/BluetoothLeAudioFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeAudio:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/bt/BluetoothLeAudioFactory;->setVcAbsoluteVolume(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_44

    .line 610
    monitor-exit p0

    return-void

    .line 593
    .end local p1    # "index":I
    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setLeVcAbsoluteVolumeIndex(I)V
    .registers 5
    .param p1, "index"    # I

    monitor-enter p0

    .line 575
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeAudio:Landroid/bluetooth/BluetoothProfile;

    if-nez v0, :cond_12

    .line 576
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_VOL:Z

    if-eqz v0, :cond_12

    .line 577
    const-string v0, "AS.BtHelperExt"

    const-string v1, "setLEAvrcpAbsoluteVolumeIndex: bailing due to null mLeAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_44

    .line 578
    monitor-exit p0

    return-void

    .line 581
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :cond_12
    :try_start_12
    iget-boolean v0, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeVcAbsVolSupported:Z

    if-nez v0, :cond_1f

    .line 582
    const-string v0, "AS.BtHelperExt"

    const-string v1, "setLeVcAbsoluteVolumeIndex: abs vol not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_44

    .line 583
    monitor-exit p0

    return-void

    .line 585
    :cond_1f
    :try_start_1f
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_VOL:Z

    if-eqz v0, :cond_39

    .line 586
    const-string v0, "AS.BtHelperExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setLeVcAbsoluteVolumeIndex()mLeAudio.setVcAbsoluteVolume for index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_39
    invoke-static {}, Lcom/mediatek/bt/BluetoothLeAudioFactory;->getInstance()Lcom/mediatek/bt/BluetoothLeAudioFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeAudio:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/bt/BluetoothLeAudioFactory;->setVcAbsoluteVolume(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_44

    .line 591
    monitor-exit p0

    return-void

    .line 574
    .end local p1    # "index":I
    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setLeVcAbsoluteVolumeSupported(Z)V
    .registers 5
    .param p1, "supported"    # Z

    monitor-enter p0

    .line 570
    :try_start_1
    iput-boolean p1, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeVcAbsVolSupported:Z

    .line 571
    const-string v0, "AS.BtHelperExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLeVcAbsoluteVolumeSupported supported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/server/audio/BtHelperExt;->mLeVcAbsVolSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 572
    monitor-exit p0

    return-void

    .line 569
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    .end local p1    # "supported":Z
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized startBluetoothLeCg(ILjava/lang/String;)Z
    .registers 6
    .param p1, "LeCgAudioMode"    # I
    .param p2, "eventSource"    # Ljava/lang/String;

    monitor-enter p0

    .line 620
    :try_start_1
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_VOL:Z

    if-eqz v0, :cond_23

    .line 621
    const-string v0, "AS.BtHelperExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBluetoothLeCg() LeCgAudioMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",eventSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :cond_23
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/mediatek/server/audio/BtHelperExt;->requestLeCgState(II)Z

    move-result v0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return v0

    .line 619
    .end local p1    # "LeCgAudioMode":I
    .end local p2    # "eventSource":Ljava/lang/String;
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized stopBluetoothLeCg(Ljava/lang/String;)Z
    .registers 5
    .param p1, "eventSource"    # Ljava/lang/String;

    monitor-enter p0

    .line 630
    :try_start_1
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_VOL:Z

    if-eqz v0, :cond_1b

    .line 631
    const-string v0, "AS.BtHelperExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopBluetoothLeCg() eventSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .end local p0    # "this":Lcom/mediatek/server/audio/BtHelperExt;
    :cond_1b
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/server/audio/BtHelperExt;->requestLeCgState(II)Z

    move-result v0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return v0

    .line 629
    .end local p1    # "eventSource":Ljava/lang/String;
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

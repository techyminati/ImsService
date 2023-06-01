.class public Lcom/mediatek/server/audio/AudioDeviceInventoryExt;
.super Ljava/lang/Object;
.source "AudioDeviceInventoryExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.AudioDeviceInventoryExt"

.field private static mApmConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCheckSendBecomingNoisyIntentIntMethod:Ljava/lang/reflect/Method;

.field private static mConnectedDevices:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mDeviceBroker:Ljava/lang/Object;

.field private static mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

.field private static mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field private static mDevicesLock:Ljava/lang/Object;

.field private static mDevicesLockField:Ljava/lang/reflect/Field;

.field private static mGetA2dpCodecMethod:Ljava/lang/reflect/Method;

.field private static mPostAccessoryPlugMediaUnmuteMethod:Ljava/lang/reflect/Method;

.field private static mPostApplyVolumeOnDeviceMethod:Ljava/lang/reflect/Method;

.field private static mPostBluetoothA2dpDeviceConfigChangeMethod:Ljava/lang/reflect/Method;

.field private static mPostSetVolumeIndexOnDeviceMethod:Ljava/lang/reflect/Method;

.field private static mSetBluetoothA2dpOnIntMethod:Ljava/lang/reflect/Method;

.field private static mSetCurrentAudioRouteNameIfPossibleMethod:Ljava/lang/reflect/Method;


# instance fields
.field mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceBroker:Ljava/lang/Object;

    .line 76
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDevicesLockField:Ljava/lang/reflect/Field;

    .line 77
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDevicesLock:Ljava/lang/Object;

    .line 78
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mCheckSendBecomingNoisyIntentIntMethod:Ljava/lang/reflect/Method;

    .line 79
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mSetCurrentAudioRouteNameIfPossibleMethod:Ljava/lang/reflect/Method;

    .line 80
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mPostAccessoryPlugMediaUnmuteMethod:Ljava/lang/reflect/Method;

    .line 81
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mSetBluetoothA2dpOnIntMethod:Ljava/lang/reflect/Method;

    .line 82
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mPostApplyVolumeOnDeviceMethod:Ljava/lang/reflect/Method;

    .line 83
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mPostSetVolumeIndexOnDeviceMethod:Ljava/lang/reflect/Method;

    .line 84
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mGetA2dpCodecMethod:Ljava/lang/reflect/Method;

    .line 85
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mPostBluetoothA2dpDeviceConfigChangeMethod:Ljava/lang/reflect/Method;

    .line 86
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 89
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 90
    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mApmConnectedDevices:Landroid/util/ArrayMap;

    return-void
.end method

.method constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;Ljava/lang/Object;Lcom/mediatek/server/audio/AudioDeviceBrokerExt;Lcom/android/server/audio/AudioDeviceInventory;)V
    .registers 13
    .param p1, "service"    # Lcom/android/server/audio/AudioService;
    .param p2, "audioSystem"    # Lcom/android/server/audio/AudioSystemAdapter;
    .param p3, "deviceBroker"    # Ljava/lang/Object;
    .param p4, "deviceBrokerExt"    # Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .param p5, "deviceInventory"    # Lcom/android/server/audio/AudioDeviceInventory;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 97
    sput-object p3, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceBroker:Ljava/lang/Object;

    .line 98
    iput-object p2, p0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 99
    sput-object p5, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 100
    sput-object p4, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    .line 101
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "checkSendBecomingNoisyIntentInt"

    invoke-static {p5, v2, v1}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mCheckSendBecomingNoisyIntentIntMethod:Ljava/lang/reflect/Method;

    .line 106
    sget-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v4

    const-string v6, "setCurrentAudioRouteNameIfPossible"

    invoke-static {v1, v6, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mSetCurrentAudioRouteNameIfPossibleMethod:Ljava/lang/reflect/Method;

    .line 110
    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-string v2, "postAccessoryPlugMediaUnmute"

    invoke-static {p3, v2, v1}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mPostAccessoryPlugMediaUnmuteMethod:Ljava/lang/reflect/Method;

    .line 113
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v2, "postSetVolumeIndexOnDevice"

    invoke-static {p3, v2, v1}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mPostSetVolumeIndexOnDeviceMethod:Ljava/lang/reflect/Method;

    .line 119
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-string v1, "postApplyVolumeOnDevice"

    invoke-static {p3, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mPostApplyVolumeOnDeviceMethod:Ljava/lang/reflect/Method;

    .line 124
    new-array v0, v3, [Ljava/lang/Class;

    const-string v1, "mDevicesLock"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDevicesLock:Ljava/lang/Object;

    .line 126
    new-array v0, v3, [Ljava/lang/Class;

    const-string v1, "mConnectedDevices"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 128
    return-void
.end method

.method private checkSendBecomingNoisyIntentInt(III)I
    .registers 10
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "musicDevice"    # I

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "delay":I
    sget-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mCheckSendBecomingNoisyIntentIntMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 140
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 138
    invoke-static {v1, v2, v3}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    return v0
.end method

.method private getAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 265
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_b

    goto :goto_21

    .line 268
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XX:XX:XX"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :cond_21
    :goto_21
    return-object p1
.end method

.method static synthetic lambda$disconnectLE$0(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 4
    .param p0, "toRemove"    # Landroid/util/ArraySet;
    .param p1, "deviceInfo"    # Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 220
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, 0x20000000

    if-ne v0, v1, :cond_b

    .line 221
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_b
    return-void
.end method

.method private makeLeAudioDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 17
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "streamType"    # I
    .param p4, "eventSource"    # Ljava/lang/String;

    .line 150
    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    sget-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    const/4 v9, 0x1

    move-object/from16 v10, p4

    invoke-virtual {v1, v9, v9, v10}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setBluetoothLeOnInt(ZZLjava/lang/String;)V

    .line 151
    iget-object v1, v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v2, 0x20000000

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 154
    iget-object v1, v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v2, "Leaudiosuspendonly=false"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    .line 155
    sget-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mConnectedDevices:Ljava/util/LinkedHashMap;

    const/high16 v2, 0x20000000

    .line 161
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 155
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/4 v11, 0x0

    invoke-direct {v5, v2, p2, p1, v11}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mPostAccessoryPlugMediaUnmuteMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceBroker:Ljava/lang/Object;

    new-array v4, v9, [Ljava/lang/Object;

    .line 161
    aput-object v3, v4, v11

    .line 160
    invoke-static {v1, v2, v4}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mPostApplyVolumeOnDeviceMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceBroker:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 165
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    aput-object v3, v4, v9

    const/4 v3, 0x2

    const-string v5, "makeLeAudioDeviceAvailable"

    aput-object v5, v4, v3

    .line 164
    invoke-static {v1, v2, v4}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-direct {p0, p2, v11}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 168
    iget-object v1, v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v2, -0x60000000

    const/4 v3, 0x1

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 171
    sget-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v4, v2, p2, p1, v11}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method private makeLeAudioDeviceUnavailable(Ljava/lang/String;)V
    .registers 12
    .param p1, "address"    # Ljava/lang/String;

    .line 178
    sget-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "makeLeAudioDeviceUnavailable"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setBluetoothLeOnInt(ZZLjava/lang/String;)V

    .line 179
    iget-object v4, p0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v5, 0x20000000

    const/4 v6, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 182
    sget-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mConnectedDevices:Ljava/util/LinkedHashMap;

    const/high16 v2, 0x20000000

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeLeAudioDeviceUnavailable addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v1, "AS.AudioDeviceInventoryExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v3, -0x60000000

    const/4 v4, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    .line 190
    sget-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mConnectedDevices:Ljava/util/LinkedHashMap;

    const/high16 v1, -0x60000000

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method private setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fromA2dp"    # Z

    .line 131
    sget-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mSetCurrentAudioRouteNameIfPossibleMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 132
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 131
    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method


# virtual methods
.method disconnectLE()V
    .registers 6

    .line 216
    sget-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mConnectedDevices:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 217
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 219
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sget-object v2, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/mediatek/server/audio/AudioDeviceInventoryExt$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 224
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_36

    .line 225
    const/high16 v2, 0x20000000

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 227
    .local v2, "delay":I
    iget-object v3, p0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v4, "Leaudiosuspendonly=true"

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    .line 228
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/mediatek/server/audio/AudioDeviceInventoryExt$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/server/audio/AudioDeviceInventoryExt;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 233
    .end local v1    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "delay":I
    :cond_36
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public synthetic lambda$disconnectLE$1$AudioDeviceInventoryExt(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 230
    invoke-direct {p0, p1}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->makeLeAudioDeviceUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method onSetLeAudioConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 12
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "streamType"    # I

    .line 238
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 240
    const-string v0, ""

    .line 242
    :cond_c
    const-string v1, "AS.AudioDeviceInventoryExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetLeAudioConnectionState addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {p0, v0}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->getAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mConnectedDevices:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 246
    const/high16 v2, 0x20000000

    .line 248
    :try_start_2b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 250
    .local v3, "dio":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    const/high16 v4, -0x60000000

    .line 251
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-static {v4, v5}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 252
    sget-object v4, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 253
    .local v4, "dii":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    if-eqz v3, :cond_54

    if-eqz v4, :cond_54

    const/4 v5, 0x1

    goto :goto_55

    :cond_54
    const/4 v5, 0x0

    .line 255
    .local v5, "isConnected":Z
    :goto_55
    const/4 v6, 0x2

    if-eqz v5, :cond_5e

    if-eq p2, v6, :cond_5e

    .line 256
    invoke-direct {p0, v0}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->makeLeAudioDeviceUnavailable(Ljava/lang/String;)V

    goto :goto_6b

    .line 257
    :cond_5e
    if-nez v5, :cond_6b

    if-ne p2, v6, :cond_6b

    .line 258
    invoke-static {p1}, Lcom/mediatek/server/audio/BtHelperExt;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "onSetLeAudioConnectionState"

    invoke-direct {p0, v0, v6, p3, v7}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->makeLeAudioDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "dio":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v4    # "dii":Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .end local v5    # "isConnected":Z
    :cond_6b
    :goto_6b
    monitor-exit v1

    .line 262
    return-void

    .line 261
    :catchall_6d
    move-exception v2

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_2b .. :try_end_6f} :catchall_6d

    throw v2
.end method

.method setBluetoothLeAudioDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I

    .line 198
    sget-object v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    if-nez p3, :cond_16

    .line 201
    const/4 v1, 0x2

    if-ne p2, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 202
    .local v1, "intState":I
    :goto_b
    const/high16 v2, 0x20000000

    :try_start_d
    invoke-direct {p0, v2, v1, p4}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 204
    .local v2, "delay":I
    if-lez v2, :cond_15

    .line 205
    const/16 v2, 0xfa

    .line 207
    .end local v1    # "intState":I
    :cond_15
    goto :goto_18

    .line 208
    .end local v2    # "delay":I
    :cond_16
    const/4 v1, 0x0

    move v2, v1

    .line 210
    .restart local v2    # "delay":I
    :goto_18
    sget-object v1, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    invoke-virtual {v1, p2, p1, v2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postSetLeAudioConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V

    .line 211
    monitor-exit v0

    return v2

    .line 212
    .end local v2    # "delay":I
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    throw v1
.end method

.class public Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
.super Ljava/lang/Object;
.source "AudioDeviceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;,
        Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;
    }
.end annotation


# static fields
.field static final BT_LE_TBS_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final DEFAULT_ABS_VOL_IDX_DELAY_MS:I = 0xc8

.field private static final MSG_BT_LE_TBS_CNCT_FAILED:I = 0x6c

.field private static final MSG_DISCONNECT_BLE_TBS:I = 0x6a

.field private static final MSG_DISCONNECT_BT_LE:I = 0x67

.field private static final MSG_IIL_SET_FORCE_BT_A2DP_USE:I = 0x5

.field private static final MSG_IL_SET_LE_AUDIO_CONNECTION_STATE:I = 0x64

.field private static final MSG_I_BROADCAST_BT_LE_CG_CONNECTION_STATE:I = 0x6d

.field private static final MSG_I_SET_LE_CG_VC_ABSOLUTE_VOLUME:I = 0x6b

.field private static final MSG_I_SET_LE_VC_ABSOLUTE_VOLUME:I = 0x68

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_LE:I = 0x66

.field private static final MSG_L_BT_SERVICE_CONNECTED_PROFILE_LE_TBS:I = 0x69

.field private static final MSG_L_LE_AUDIO_DEVICE_CONNECTION_CHANGE_EXT:I = 0x65

.field private static final MSG_L_UPDATE_COMMUNICATION_ROUTE:I = 0x27

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AS.AudioDeviceBrokerExt"

.field private static sLastBLeCgDeviceConnectTime:J

.field private static final sLastBLeCgDeviceConnectTimeLock:Ljava/lang/Object;


# instance fields
.field private addCommunicationRouteClientMethod:Ljava/lang/reflect/Method;

.field private getCommunicationDeviceMethod:Ljava/lang/reflect/Method;

.field private getCommunicationRouteClientForPidMethod:Ljava/lang/reflect/Method;

.field private getContentResolverMethod:Ljava/lang/reflect/Method;

.field private handleDeviceConnectionMethod:Ljava/lang/reflect/Method;

.field private isDeviceActiveForCommunicationMethod:Ljava/lang/reflect/Method;

.field private isDeviceRequestedForCommunicationMethod:Ljava/lang/reflect/Method;

.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private mAudioServiceExtImpl:Lcom/mediatek/server/audio/AudioServiceExtImpl;

.field private mBluetoothLeCgOn:Z

.field private mBluetoothLeDeviceStatus:Z

.field private mBrokerHandler:Landroid/os/Handler;

.field private final mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceBroker:Ljava/lang/Object;

.field private final mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field private final mDeviceInventoryExt:Lcom/mediatek/server/audio/AudioDeviceInventoryExt;

.field private mDeviceInventoryField:Ljava/lang/reflect/Field;

.field private mDeviceStateLock:Ljava/lang/Object;

.field private mDeviceStateLockField:Ljava/lang/reflect/Field;

.field private mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

.field private mSetModeLock:Ljava/lang/Object;

.field private mSetModeLockField:Ljava/lang/reflect/Field;

.field private final mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

.field private onSetForceUseMethod:Ljava/lang/reflect/Method;

.field private removeCommunicationRouteClientMethod:Ljava/lang/reflect/Method;

.field private removeMessagesMethod:Ljava/lang/reflect/Method;

.field private sendIILMsgMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sLastBLeCgDeviceConnectTimeLock:Ljava/lang/Object;

    .line 125
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sLastBLeCgDeviceConnectTime:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/mediatek/server/audio/AudioServiceExtImpl;Lcom/android/server/audio/AudioSystemAdapter;Ljava/lang/Object;Lcom/android/server/audio/SystemServerAdapter;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/audio/AudioService;
    .param p3, "serviceExtImpl"    # Lcom/mediatek/server/audio/AudioServiceExtImpl;
    .param p4, "audioSystem"    # Lcom/android/server/audio/AudioSystemAdapter;
    .param p5, "deviceBroker"    # Ljava/lang/Object;
    .param p6, "systemServer"    # Lcom/android/server/audio/SystemServerAdapter;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mAudioServiceExtImpl:Lcom/mediatek/server/audio/AudioServiceExtImpl;

    .line 143
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIILMsgMethod:Ljava/lang/reflect/Method;

    .line 144
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->removeMessagesMethod:Ljava/lang/reflect/Method;

    .line 145
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->onSetForceUseMethod:Ljava/lang/reflect/Method;

    .line 146
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->handleDeviceConnectionMethod:Ljava/lang/reflect/Method;

    .line 147
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isDeviceRequestedForCommunicationMethod:Ljava/lang/reflect/Method;

    .line 148
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isDeviceActiveForCommunicationMethod:Ljava/lang/reflect/Method;

    .line 149
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getCommunicationRouteClientForPidMethod:Ljava/lang/reflect/Method;

    .line 150
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getCommunicationDeviceMethod:Ljava/lang/reflect/Method;

    .line 151
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->addCommunicationRouteClientMethod:Ljava/lang/reflect/Method;

    .line 152
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->removeCommunicationRouteClientMethod:Ljava/lang/reflect/Method;

    .line 153
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getContentResolverMethod:Ljava/lang/reflect/Method;

    .line 154
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLockField:Ljava/lang/reflect/Field;

    .line 155
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLockField:Ljava/lang/reflect/Field;

    .line 156
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceInventoryField:Ljava/lang/reflect/Field;

    .line 158
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    .line 159
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLock:Ljava/lang/Object;

    .line 160
    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBrokerHandler:Landroid/os/Handler;

    .line 169
    iput-object p1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 171
    iput-object p3, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mAudioServiceExtImpl:Lcom/mediatek/server/audio/AudioServiceExtImpl;

    .line 172
    new-instance v0, Lcom/mediatek/server/audio/BtHelperExt;

    invoke-direct {v0, p5, p0}, Lcom/mediatek/server/audio/BtHelperExt;-><init>(Ljava/lang/Object;Lcom/mediatek/server/audio/AudioDeviceBrokerExt;)V

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    .line 174
    iput-object p5, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    .line 175
    iput-object p6, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 177
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/Object;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "sendIILMsg"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIILMsgMethod:Ljava/lang/reflect/Method;

    .line 185
    new-array v0, v2, [Ljava/lang/Class;

    const-string v1, "mBrokerHandler"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBrokerHandler:Landroid/os/Handler;

    .line 187
    new-array v0, v2, [Ljava/lang/Class;

    const-string v1, "getContentResolver"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getContentResolverMethod:Ljava/lang/reflect/Method;

    .line 189
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-string v1, "onSetForceUse"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->onSetForceUseMethod:Ljava/lang/reflect/Method;

    .line 195
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-string v1, "handleDeviceConnection"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->handleDeviceConnectionMethod:Ljava/lang/reflect/Method;

    .line 201
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-string v1, "isDeviceRequestedForCommunication"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isDeviceRequestedForCommunicationMethod:Ljava/lang/reflect/Method;

    .line 204
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-string v1, "isDeviceActiveForCommunication"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isDeviceActiveForCommunicationMethod:Ljava/lang/reflect/Method;

    .line 207
    new-array v0, v2, [Ljava/lang/Class;

    const-string v1, "getCommunicationDevice"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getCommunicationDeviceMethod:Ljava/lang/reflect/Method;

    .line 209
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-string v1, "getCommunicationRouteClientForPid"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getCommunicationRouteClientForPidMethod:Ljava/lang/reflect/Method;

    .line 212
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Landroid/os/IBinder;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Landroid/media/AudioDeviceAttributes;

    aput-object v1, v0, v4

    const-string v1, "addCommunicationRouteClient"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->addCommunicationRouteClientMethod:Ljava/lang/reflect/Method;

    .line 217
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/os/IBinder;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-string v1, "removeCommunicationRouteClient"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->removeCommunicationRouteClientMethod:Ljava/lang/reflect/Method;

    .line 221
    new-array v0, v2, [Ljava/lang/Class;

    const-string v1, "mDeviceStateLock"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    .line 223
    new-array v0, v2, [Ljava/lang/Class;

    const-string v1, "mSetModeLock"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLock:Ljava/lang/Object;

    .line 225
    new-array v0, v2, [Ljava/lang/Class;

    const-string v1, "mDeviceInventory"

    invoke-static {p5, v1, v0}, Lcom/mediatek/server/audio/ReflectionHelper;->getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/audio/AudioDeviceInventory;

    iput-object v6, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 227
    new-instance v0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;Ljava/lang/Object;Lcom/mediatek/server/audio/AudioDeviceBrokerExt;Lcom/android/server/audio/AudioDeviceInventory;)V

    iput-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceInventoryExt:Lcom/mediatek/server/audio/AudioDeviceInventoryExt;

    .line 230
    return-void
.end method

.method private addCommunicationRouteClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;)Ljava/lang/Object;
    .registers 9
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 246
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->addCommunicationRouteClientMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 247
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 246
    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getCommunicationRouteClientForPid(I)Ljava/lang/Object;
    .registers 7
    .param p1, "pid"    # I

    .line 257
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getCommunicationRouteClientForPidMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 257
    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isDeviceActiveForCommunication(I)Z
    .registers 7
    .param p1, "deviceType"    # I

    .line 262
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isDeviceActiveForCommunicationMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 262
    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isDeviceRequestedForCommunication(I)Z
    .registers 7
    .param p1, "deviceType"    # I

    .line 267
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isDeviceRequestedForCommunicationMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 267
    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private removeCommunicationRouteClient(Landroid/os/IBinder;Z)Ljava/lang/Object;
    .registers 8
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "unregister"    # Z

    .line 252
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->removeCommunicationRouteClientMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 253
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 252
    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private sendIILMsg(IIIILjava/lang/Object;I)V
    .registers 12
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 583
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIILMsgMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 584
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x4

    aput-object p5, v2, v3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 583
    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    return-void
.end method

.method private sendIILMsgNoDelay(IIIILjava/lang/Object;)V
    .registers 13
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 574
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 575
    return-void
.end method

.method private sendILMsg(IIILjava/lang/Object;I)V
    .registers 13
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delay"    # I

    .line 578
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 579
    return-void
.end method

.method private sendIMsg(IIII)V
    .registers 12
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I
    .param p4, "delay"    # I

    .line 562
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 563
    return-void
.end method

.method private sendIMsgNoDelay(III)V
    .registers 11
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg"    # I

    .line 570
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 571
    return-void
.end method

.method private sendLMsgNoDelay(IILjava/lang/Object;)V
    .registers 11
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 554
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 555
    return-void
.end method

.method private sendMsg(III)V
    .registers 11
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "delay"    # I

    .line 558
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 559
    return-void
.end method

.method private sendMsgNoDelay(II)V
    .registers 10
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I

    .line 566
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 567
    return-void
.end method


# virtual methods
.method disconnectAllBluetoothProfiles()V
    .registers 3

    .line 588
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v1}, Lcom/mediatek/server/audio/BtHelperExt;->disconnectAllBluetoothProfiles()V

    .line 590
    monitor-exit v0

    .line 591
    return-void

    .line 590
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method getCommunicationDevice()Landroid/media/AudioDeviceInfo;
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getCommunicationDeviceMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceInfo;

    return-object v0
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .registers 4

    .line 859
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getContentResolverMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 860
    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 859
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method handleCancelFailureToConnectToBluetoothTbsService()V
    .registers 3

    .line 715
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBrokerHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 716
    return-void
.end method

.method handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .line 549
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->handleDeviceConnectionMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method handleFailureToConnectToBluetoothTbsService(I)V
    .registers 4
    .param p1, "delay"    # I

    .line 711
    const/16 v0, 0x6c

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendMsg(III)V

    .line 712
    return-void
.end method

.method isBluetoothLeCgActive()Z
    .registers 11

    .line 377
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v0}, Lcom/mediatek/server/audio/BtHelperExt;->isBluetoothLeCgOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 378
    return v1

    .line 380
    :cond_a
    const/4 v0, 0x0

    .line 381
    .local v0, "activeDeviceStatus":Z
    const/4 v2, 0x0

    .line 382
    .local v2, "preferredDeviceStatus":Z
    iget-object v3, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Class;

    .line 384
    const-string v5, "mActiveCommunicationDevice"

    invoke-static {v3, v5, v4}, Lcom/mediatek/server/audio/ReflectionHelper;->getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceInfo;

    .line 386
    .local v3, "mActiveCommunicationDevice":Landroid/media/AudioDeviceInfo;
    if-nez v3, :cond_1e

    .line 387
    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 389
    :cond_1e
    const/16 v4, 0x15

    const/4 v5, 0x1

    const-string v6, "AS.AudioDeviceBrokerExt"

    if-eqz v3, :cond_47

    .line 390
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    .line 391
    .local v7, "deviceType":I
    const/4 v8, 0x7

    if-eq v7, v8, :cond_31

    if-ne v7, v4, :cond_2f

    goto :goto_31

    :cond_2f
    move v8, v1

    goto :goto_32

    :cond_31
    :goto_31
    move v8, v5

    :goto_32
    move v0, v8

    .line 394
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ActiveDevice="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v7    # "deviceType":I
    :cond_47
    iget-object v7, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    new-array v8, v1, [Ljava/lang/Class;

    .line 397
    const-string v9, "mPreferredCommunicationDevice"

    invoke-static {v7, v9, v8}, Lcom/mediatek/server/audio/ReflectionHelper;->getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioDeviceAttributes;

    .line 399
    .local v7, "mPrefComDev":Landroid/media/AudioDeviceAttributes;
    if-eqz v7, :cond_73

    .line 400
    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v8

    .line 401
    .local v8, "prefdeviceType":I
    if-ne v8, v4, :cond_5d

    move v4, v5

    goto :goto_5e

    :cond_5d
    move v4, v1

    :goto_5e
    move v2, v4

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPreferredCommunicationDevice="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v8    # "prefdeviceType":I
    :cond_73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activeDeviceStatus="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",preferredDeviceStatus="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    if-eqz v0, :cond_94

    if-eqz v2, :cond_94

    move v1, v5

    :cond_94
    return v1
.end method

.method isBluetoothLeCgOn()Z
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_3
    iget-boolean v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBluetoothLeCgOn:Z

    monitor-exit v0

    return v1

    .line 288
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isBluetoothLeCgRequested()Z
    .registers 2

    .line 366
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isDeviceRequestedForCommunication(I)Z

    move-result v0

    return v0
.end method

.method isBluetoothLeOn()Z
    .registers 2

    .line 719
    iget-boolean v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBluetoothLeDeviceStatus:Z

    return v0
.end method

.method isBluetoothLeTbsDeviceActive()Z
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v1}, Lcom/mediatek/server/audio/BtHelperExt;->isBluetoothLeTbsDeviceActive()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 294
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method onSystemReady()V
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 239
    :try_start_6
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v2}, Lcom/mediatek/server/audio/BtHelperExt;->onSystemReady()V

    .line 240
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_e

    .line 241
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_11

    .line 242
    return-void

    .line 240
    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .end local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    :try_start_10
    throw v2

    .line 241
    .restart local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_11

    throw v1
.end method

.method postBluetoothLeAudioDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I
    .param p5, "eventSource"    # Ljava/lang/String;

    .line 652
    new-instance v6, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    .line 654
    .local v0, "info":Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;
    const/16 v1, 0x65

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 655
    return-void
.end method

.method postBroadcastLeCgConnectionState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 706
    const/16 v0, 0x6d

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIMsgNoDelay(III)V

    .line 707
    return-void
.end method

.method postBtLEProfileConnected(Landroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .param p1, "LEProfile"    # Landroid/bluetooth/BluetoothProfile;

    .line 693
    const/16 v0, 0x66

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 695
    return-void
.end method

.method postBtTbsProfileConnected(Lcom/mediatek/bt/BluetoothTbs;)V
    .registers 4
    .param p1, "leTbsProfile"    # Lcom/mediatek/bt/BluetoothTbs;

    .line 698
    const/16 v0, 0x69

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 699
    return-void
.end method

.method postBtTbsProfileDisconnected()V
    .registers 3

    .line 702
    const/16 v0, 0x6a

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendMsgNoDelay(II)V

    .line 703
    return-void
.end method

.method postDisconnectLE()V
    .registers 3

    .line 689
    const/16 v0, 0x67

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendMsgNoDelay(II)V

    .line 690
    return-void
.end method

.method postHandleMessageExt(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 754
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v0, :cond_1c

    .line 755
    const-string v0, "AS.AudioDeviceBrokerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postHandleMessageExt msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_1c
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14c

    .line 830
    const-string v0, "AS.AudioDeviceBrokerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14b

    .line 825
    :pswitch_3b
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_3e
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/server/audio/BtHelperExt;->onBroadcastLeCgConnectionState(I)V

    .line 827
    monitor-exit v0

    .line 828
    goto/16 :goto_14b

    .line 827
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_48

    throw v1

    .line 818
    :pswitch_4b
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_4e
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5d

    .line 820
    :try_start_51
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v2}, Lcom/mediatek/server/audio/BtHelperExt;->resetBluetoothLeCg()V

    .line 821
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_5a

    .line 822
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_5d

    .line 823
    goto/16 :goto_14b

    .line 821
    :catchall_5a
    move-exception v2

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    .end local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_5c
    throw v2

    .line 822
    .restart local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_5d

    throw v1

    .line 785
    :pswitch_60
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_63
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/server/audio/BtHelperExt;->setLeCgVcIndex(I)V

    .line 787
    monitor-exit v0

    .line 788
    goto/16 :goto_14b

    .line 787
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_6d

    throw v1

    .line 811
    :pswitch_70
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    :try_start_73
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_82

    .line 813
    :try_start_76
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v2}, Lcom/mediatek/server/audio/BtHelperExt;->disconnectBleTbs()V

    .line 814
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_7f

    .line 815
    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_82

    .line 816
    goto/16 :goto_14b

    .line 814
    :catchall_7f
    move-exception v2

    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    .end local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_81
    throw v2

    .line 815
    .restart local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_82
    move-exception v1

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_82

    throw v1

    .line 804
    :pswitch_85
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_88
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_9b

    .line 806
    :try_start_8b
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/bt/BluetoothTbs;

    invoke-virtual {v2, v3}, Lcom/mediatek/server/audio/BtHelperExt;->onLeTbsProfileConnected(Lcom/mediatek/bt/BluetoothTbs;)V

    .line 807
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_8b .. :try_end_95} :catchall_98

    .line 808
    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_9b

    .line 809
    goto/16 :goto_14b

    .line 807
    :catchall_98
    move-exception v2

    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    .end local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_9a
    throw v2

    .line 808
    .restart local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_9b
    move-exception v1

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9b

    throw v1

    .line 780
    :pswitch_9e
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_a1
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/mediatek/server/audio/BtHelperExt;->setLeVcAbsoluteVolumeIndex(I)V

    .line 782
    monitor-exit v0

    .line 783
    goto/16 :goto_14b

    .line 782
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_a1 .. :try_end_ad} :catchall_ab

    throw v1

    .line 790
    :pswitch_ae
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_b1
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_c0

    .line 792
    :try_start_b4
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceInventoryExt:Lcom/mediatek/server/audio/AudioDeviceInventoryExt;

    invoke-virtual {v2}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->disconnectLE()V

    .line 793
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_bd

    .line 794
    :try_start_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_c0

    .line 795
    goto/16 :goto_14b

    .line 793
    :catchall_bd
    move-exception v2

    :try_start_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    .end local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_bf
    throw v2

    .line 794
    .restart local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_c0
    move-exception v1

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c0

    throw v1

    .line 773
    :pswitch_c3
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_c6
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_d8

    .line 775
    :try_start_c9
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v2, v3}, Lcom/mediatek/server/audio/BtHelperExt;->onLeProfileConnected(Landroid/bluetooth/BluetoothProfile;)V

    .line 776
    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_c9 .. :try_end_d3} :catchall_d5

    .line 777
    :try_start_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d8

    .line 778
    goto :goto_14b

    .line 776
    :catchall_d5
    move-exception v2

    :try_start_d6
    monitor-exit v1
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    .end local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_d7
    throw v2

    .line 777
    .restart local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_d8
    move-exception v1

    monitor-exit v0
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_d8

    throw v1

    .line 759
    :pswitch_db
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;

    .line 761
    .local v0, "info":Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;
    sget-boolean v1, Lcom/mediatek/server/audio/AudioServiceExtImpl;->LOGD:Z

    if-eqz v1, :cond_11d

    .line 762
    const-string v1, "AS.AudioDeviceBrokerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLeAudioDeviceConnectionState state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 763
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " supprNoisy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_11d
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 768
    :try_start_120
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceInventoryExt:Lcom/mediatek/server/audio/AudioDeviceInventoryExt;

    iget-object v3, v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mState:I

    iget-boolean v5, v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mSupprNoisy:Z

    iget v6, v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mMusicDevice:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->setBluetoothLeAudioDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I

    .line 770
    monitor-exit v1

    .line 771
    .end local v0    # "info":Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;
    goto :goto_14b

    .line 770
    .restart local v0    # "info":Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;
    :catchall_12f
    move-exception v2

    monitor-exit v1
    :try_end_131
    .catchall {:try_start_120 .. :try_end_131} :catchall_12f

    throw v2

    .line 797
    .end local v0    # "info":Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;
    :pswitch_132
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_135
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceInventoryExt:Lcom/mediatek/server/audio/AudioDeviceInventoryExt;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mAudioServiceExtImpl:Lcom/mediatek/server/audio/AudioServiceExtImpl;

    .line 800
    invoke-virtual {v4}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->getLeAudioStreamType()I

    move-result v4

    .line 798
    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->onSetLeAudioConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 801
    monitor-exit v0

    .line 802
    goto :goto_14b

    .line 801
    :catchall_148
    move-exception v1

    monitor-exit v0
    :try_end_14a
    .catchall {:try_start_135 .. :try_end_14a} :catchall_148

    throw v1

    .line 832
    :goto_14b
    return-void

    :pswitch_data_14c
    .packed-switch 0x64
        :pswitch_132
        :pswitch_db
        :pswitch_c3
        :pswitch_ae
        :pswitch_9e
        :pswitch_85
        :pswitch_70
        :pswitch_60
        :pswitch_4b
        :pswitch_3b
    .end packed-switch
.end method

.method postSetLeAudioConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "delay"    # I

    .line 682
    const/16 v1, 0x64

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendILMsg(IIILjava/lang/Object;I)V

    .line 686
    return-void
.end method

.method postSetLeCgVcIndex(I)V
    .registers 9
    .param p1, "index"    # I

    .line 662
    sget-object v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sLastBLeCgDeviceConnectTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    const/16 v1, 0xc8

    .line 664
    .local v1, "delay":I
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sLastBLeCgDeviceConnectTime:J

    sub-long/2addr v2, v4

    .line 667
    .local v2, "diffTime":J
    int-to-long v4, v1

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/16 v6, 0x6b

    if-ltz v4, :cond_18

    .line 668
    invoke-direct {p0, v6, v5, p1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIMsgNoDelay(III)V

    goto :goto_1b

    .line 670
    :cond_18
    invoke-direct {p0, v6, v5, p1, v1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIMsg(IIII)V

    .line 674
    .end local v1    # "delay":I
    .end local v2    # "diffTime":J
    :goto_1b
    monitor-exit v0

    .line 676
    return-void

    .line 674
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method postSetLeVcAbsoluteVolumeIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .line 658
    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendIMsgNoDelay(III)V

    .line 659
    return-void
.end method

.method preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .registers 3

    .line 848
    iget-boolean v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBluetoothLeCgOn:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v0}, Lcom/mediatek/server/audio/BtHelperExt;->isBluetoothLeCgOn()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 849
    .local v0, "btCgOn":Z
    :goto_f
    if-eqz v0, :cond_1a

    .line 850
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v1}, Lcom/mediatek/server/audio/BtHelperExt;->getLeTbsAudioDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    .line 851
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    if-eqz v1, :cond_1a

    .line 852
    return-object v1

    .line 855
    .end local v1    # "device":Landroid/media/AudioDeviceAttributes;
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method receiveBtEvent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 835
    sget-object v0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sLastBLeCgDeviceConnectTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sLastBLeCgDeviceConnectTime:J

    .line 837
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 838
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 839
    :try_start_d
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_1b

    .line 840
    :try_start_10
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v2, p1}, Lcom/mediatek/server/audio/BtHelperExt;->receiveBtEvent(Landroid/content/Intent;)V

    .line 841
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_18

    .line 842
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_1b

    .line 843
    return-void

    .line 841
    :catchall_18
    move-exception v2

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    .end local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .end local p1    # "intent":Landroid/content/Intent;
    :try_start_1a
    throw v2

    .line 842
    .restart local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1b

    throw v0

    .line 837
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method setBleCallVcSupportsAbsoluteVolume(Z)V
    .registers 3
    .param p1, "support"    # Z

    .line 416
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mAudioServiceExtImpl:Lcom/mediatek/server/audio/AudioServiceExtImpl;

    invoke-virtual {v0, p1}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->setBleCallVcSupportsAbsoluteVolume(Z)V

    .line 417
    return-void
.end method

.method setBluetoothLeCgOn(ZLjava/lang/String;)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 273
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_22

    .line 274
    const-string v0, "AS.AudioDeviceBrokerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothLeCgOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_22
    if-nez p1, :cond_29

    .line 277
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mAudioServiceExtImpl:Lcom/mediatek/server/audio/AudioServiceExtImpl;

    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioServiceExtImpl;->resetBluetoothLeCgOfApp()V

    .line 279
    :cond_29
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_2c
    iput-boolean p1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBluetoothLeCgOn:Z

    .line 281
    const/16 v1, 0x27

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, p2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_36

    throw v1
.end method

.method setBluetoothLeOnInt(ZZLjava/lang/String;)V
    .registers 12
    .param p1, "on"    # Z
    .param p2, "fromLe"    # Z
    .param p3, "source"    # Ljava/lang/String;

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setBluetoothLeOnInt("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "eventSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 731
    :try_start_31
    iput-boolean p1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBluetoothLeDeviceStatus:Z

    .line 735
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBrokerHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 736
    if-eqz p1, :cond_5d

    .line 742
    iget-object v2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->onSetForceUseMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceBroker:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 743
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    .line 742
    invoke-static {v2, v3, v4}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_5d
    monitor-exit v1

    .line 747
    return-void

    .line 746
    :catchall_5f
    move-exception v2

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_31 .. :try_end_61} :catchall_5f

    throw v2
.end method

.method setCommunicationRouteForClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 15
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p4, "LeCgAudioMode"    # I
    .param p5, "eventSource"    # Ljava/lang/String;

    .line 495
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    const-string v1, "AS.AudioDeviceBrokerExt"

    if-eqz v0, :cond_1a

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCommunicationRouteForClient: device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1a
    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isBluetoothLeCgRequested()Z

    move-result v0

    .line 504
    .local v0, "wasBLeCgRequested":Z
    const/4 v2, 0x0

    .line 505
    .local v2, "prevClientDevice":Landroid/media/AudioDeviceAttributes;
    invoke-direct {p0, p2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getCommunicationRouteClientForPid(I)Ljava/lang/Object;

    move-result-object v3

    .line 506
    .local v3, "client":Ljava/lang/Object;
    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 507
    new-array v5, v4, [Ljava/lang/Class;

    const-string v6, "getDevice"

    invoke-static {v3, v6, v5}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 509
    .local v5, "getDeviceMethod":Ljava/lang/reflect/Method;
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 514
    .end local v5    # "getDeviceMethod":Ljava/lang/reflect/Method;
    :cond_37
    const/4 v5, 0x1

    if-eqz p3, :cond_5d

    .line 515
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->addCommunicationRouteClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;)Ljava/lang/Object;

    move-result-object v3

    .line 516
    if-nez v3, :cond_61

    .line 517
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCommunicationRouteForClient: could not add client for pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 521
    :cond_5d
    invoke-direct {p0, p1, v5}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Ljava/lang/Object;

    move-result-object v3

    .line 523
    :cond_61
    :goto_61
    if-nez v3, :cond_64

    .line 524
    return-void

    .line 527
    :cond_64
    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isBluetoothLeCgRequested()Z

    move-result v6

    .line 528
    .local v6, "isBtLeCgRequested":Z
    if-eqz v6, :cond_95

    if-nez v0, :cond_95

    .line 529
    iget-object v7, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v7, p4, p5}, Lcom/mediatek/server/audio/BtHelperExt;->startBluetoothLeCg(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9e

    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCommunicationRouteForClient: failure to start BT SCO for pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-eqz v2, :cond_8e

    .line 534
    invoke-direct {p0, p1, p2, v2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->addCommunicationRouteClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;)Ljava/lang/Object;

    goto :goto_91

    .line 536
    :cond_8e
    invoke-direct {p0, p1, v5}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Ljava/lang/Object;

    .line 538
    :goto_91
    invoke-virtual {p0, v4}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postBroadcastLeCgConnectionState(I)V

    goto :goto_9e

    .line 540
    :cond_95
    if-nez v6, :cond_9e

    if-eqz v0, :cond_9e

    .line 541
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v1, p5}, Lcom/mediatek/server/audio/BtHelperExt;->stopBluetoothLeCg(Ljava/lang/String;)Z

    .line 544
    :cond_9e
    :goto_9e
    const/16 v1, 0x27

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4, p5}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 545
    return-void
.end method

.method setCommunicationRouteForStartCsClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 12
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p4, "LeCgAudioMode"    # I
    .param p5, "eventSource"    # Ljava/lang/String;

    .line 424
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    const-string v1, "AS.AudioDeviceBrokerExt"

    if-eqz v0, :cond_1a

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCommunicationRouteForStartCsClient: device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_1a
    const/4 v0, 0x0

    .line 432
    .local v0, "prevClientDevice":Landroid/media/AudioDeviceAttributes;
    invoke-direct {p0, p2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getCommunicationRouteClientForPid(I)Ljava/lang/Object;

    move-result-object v2

    .line 433
    .local v2, "client":Ljava/lang/Object;
    const/4 v3, 0x0

    if-eqz v2, :cond_33

    .line 434
    new-array v4, v3, [Ljava/lang/Class;

    const-string v5, "getDevice"

    invoke-static {v2, v5, v4}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 436
    .local v4, "getDeviceMethod":Ljava/lang/reflect/Method;
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 441
    .end local v4    # "getDeviceMethod":Ljava/lang/reflect/Method;
    :cond_33
    if-eqz p3, :cond_57

    .line 442
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->addCommunicationRouteClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;)Ljava/lang/Object;

    move-result-object v2

    .line 443
    if-nez v2, :cond_57

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCommunicationRouteForStartCsClient: could not add client for pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_57
    if-nez v2, :cond_5a

    .line 449
    return-void

    .line 451
    :cond_5a
    iget-object v4, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v4}, Lcom/mediatek/server/audio/BtHelperExt;->isBluetoothLeCgOn()Z

    move-result v4

    if-nez v4, :cond_8b

    .line 452
    iget-object v4, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v4, p4, p5}, Lcom/mediatek/server/audio/BtHelperExt;->startBluetoothLeCg(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 453
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCommunicationRouteForStartCsClient: failure to start BLE-CG for pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    if-eqz v0, :cond_84

    .line 457
    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->addCommunicationRouteClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;)Ljava/lang/Object;

    goto :goto_88

    .line 459
    :cond_84
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Ljava/lang/Object;

    .line 461
    :goto_88
    invoke-virtual {p0, v3}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postBroadcastLeCgConnectionState(I)V

    .line 464
    :cond_8b
    const/16 v1, 0x27

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3, p5}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 465
    return-void
.end method

.method setCommunicationRouteForStopCsClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 9
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p4, "LeCgAudioMode"    # I
    .param p5, "eventSource"    # Ljava/lang/String;

    .line 472
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_1a

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCommunicationRouteForStopCsClient: device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBrokerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1a
    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->isBluetoothLeCgRequested()Z

    move-result v0

    .line 477
    .local v0, "wasBLeCgRequested":Z
    if-nez p3, :cond_28

    .line 478
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Ljava/lang/Object;

    move-result-object v1

    .line 479
    .local v1, "client":Ljava/lang/Object;
    if-nez v1, :cond_28

    .line 480
    return-void

    .line 484
    .end local v1    # "client":Ljava/lang/Object;
    :cond_28
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v1}, Lcom/mediatek/server/audio/BtHelperExt;->isBluetoothLeCgOn()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 485
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v1, p5}, Lcom/mediatek/server/audio/BtHelperExt;->stopBluetoothLeCg(Ljava/lang/String;)Z

    .line 487
    :cond_35
    const/16 v1, 0x27

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, p5}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 488
    return-void
.end method

.method setLeVcAbsoluteVolumeSupported(Z)V
    .registers 3
    .param p1, "supported"    # Z

    .line 750
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v0, p1}, Lcom/mediatek/server/audio/BtHelperExt;->setLeVcAbsoluteVolumeSupported(Z)V

    .line 751
    return-void
.end method

.method startBluetoothLeCgForClient(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 13
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "LeAudioMode"    # I
    .param p4, "eventSource"    # Ljava/lang/String;

    .line 298
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_1a

    .line 299
    const-string v0, "AS.AudioDeviceBrokerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBluetoothLeCsForClient_Sync, pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1a
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_1d
    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_37

    .line 304
    :try_start_20
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/high16 v2, 0x1000000

    const-string v3, ""

    invoke-direct {v5, v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 306
    .local v5, "device":Landroid/media/AudioDeviceAttributes;
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setCommunicationRouteForStartCsClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 307
    .end local v5    # "device":Landroid/media/AudioDeviceAttributes;
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_34

    .line 308
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_37

    .line 309
    return-void

    .line 307
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    .end local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .end local p1    # "cb":Landroid/os/IBinder;
    .end local p2    # "pid":I
    .end local p3    # "LeAudioMode":I
    .end local p4    # "eventSource":Ljava/lang/String;
    :try_start_36
    throw v2

    .line 308
    .restart local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .restart local p1    # "cb":Landroid/os/IBinder;
    .restart local p2    # "pid":I
    .restart local p3    # "LeAudioMode":I
    .restart local p4    # "eventSource":Ljava/lang/String;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw v1
.end method

.method stopBluetoothLeCgForClient(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 20
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 312
    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v10, 0x1

    .line 313
    .local v10, "status":Z
    sget-boolean v0, Lcom/mediatek/server/audio/AudioServiceExtImpl;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_21

    .line 314
    const-string v0, "AS.AudioDeviceBrokerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopBluetoothLeCgForClient, pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_21
    iget-object v11, v7, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v11

    .line 318
    :try_start_24
    iget-object v12, v7, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_b8

    .line 319
    :try_start_27
    invoke-direct {v7, v8}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->getCommunicationRouteClientForPid(I)Ljava/lang/Object;

    move-result-object v0

    .line 320
    .local v0, "client":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 321
    .local v1, "leCGStatus":Z
    const/4 v13, 0x0

    .line 322
    .local v13, "mIsSpeakerOn":Z
    const/4 v2, 0x0

    .line 323
    .local v2, "mDevice":Landroid/media/AudioDeviceAttributes;
    const/4 v3, 0x0

    if-eqz v0, :cond_85

    .line 324
    const-string v4, "getDevice"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-static {v0, v4, v5}, Lcom/mediatek/server/audio/ReflectionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 326
    .local v4, "getDeviceMethod":Ljava/lang/reflect/Method;
    new-array v5, v3, [Ljava/lang/Object;

    .line 327
    invoke-static {v4, v0, v5}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    move-object v2, v5

    .line 338
    if-eqz v2, :cond_4d

    .line 339
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_4d

    .line 340
    const/4 v1, 0x1

    .line 342
    :cond_4d
    if-eqz v2, :cond_82

    .line 343
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_82

    iget-object v5, v7, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    .line 344
    invoke-virtual {v5}, Lcom/mediatek/server/audio/BtHelperExt;->isBluetoothLeCgOn()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 345
    const-string v3, "AS.AudioDeviceBrokerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "stopBluetoothLeCgForClient, preferred device is speaker,turn off CG, pid: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v3, v7, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->mBtHelperExt:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-virtual {v3, v9}, Lcom/mediatek/server/audio/BtHelperExt;->stopBluetoothLeCg(Ljava/lang/String;)Z

    .line 348
    const/16 v3, 0x27

    invoke-direct {v7, v3, v6, v9}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 350
    const/4 v3, 0x1

    monitor-exit v12
    :try_end_80
    .catchall {:try_start_27 .. :try_end_80} :catchall_b5

    :try_start_80
    monitor-exit v11
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_b8

    return v3

    .line 353
    .end local v4    # "getDeviceMethod":Ljava/lang/reflect/Method;
    :cond_82
    move v14, v1

    move-object v15, v2

    goto :goto_87

    .line 323
    :cond_85
    move v14, v1

    move-object v15, v2

    .line 353
    .end local v1    # "leCGStatus":Z
    .end local v2    # "mDevice":Landroid/media/AudioDeviceAttributes;
    .local v14, "leCGStatus":Z
    .local v15, "mDevice":Landroid/media/AudioDeviceAttributes;
    :goto_87
    if-eqz v0, :cond_9c

    if-nez v14, :cond_8c

    goto :goto_9c

    .line 357
    :cond_8c
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p3

    :try_start_96
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->setCommunicationRouteForStopCsClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 359
    .end local v0    # "client":Ljava/lang/Object;
    .end local v13    # "mIsSpeakerOn":Z
    .end local v14    # "leCGStatus":Z
    .end local v15    # "mDevice":Landroid/media/AudioDeviceAttributes;
    monitor-exit v12
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_b5

    .line 360
    :try_start_9a
    monitor-exit v11
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_b8

    .line 361
    return v10

    .line 354
    .restart local v0    # "client":Ljava/lang/Object;
    .restart local v13    # "mIsSpeakerOn":Z
    .restart local v14    # "leCGStatus":Z
    .restart local v15    # "mDevice":Landroid/media/AudioDeviceAttributes;
    :cond_9c
    :goto_9c
    :try_start_9c
    const-string v1, "AS.AudioDeviceBrokerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopBluetoothLeCgForClient CG is OFF,failed, pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v12
    :try_end_b3
    .catchall {:try_start_9c .. :try_end_b3} :catchall_b5

    :try_start_b3
    monitor-exit v11
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b8

    return v3

    .line 359
    .end local v0    # "client":Ljava/lang/Object;
    .end local v13    # "mIsSpeakerOn":Z
    .end local v14    # "leCGStatus":Z
    .end local v15    # "mDevice":Landroid/media/AudioDeviceAttributes;
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit v12
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    .end local v10    # "status":Z
    .end local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .end local p1    # "cb":Landroid/os/IBinder;
    .end local p2    # "pid":I
    .end local p3    # "eventSource":Ljava/lang/String;
    :try_start_b7
    throw v0

    .line 360
    .restart local v10    # "status":Z
    .restart local p0    # "this":Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    .restart local p1    # "cb":Landroid/os/IBinder;
    .restart local p2    # "pid":I
    .restart local p3    # "eventSource":Ljava/lang/String;
    :catchall_b8
    move-exception v0

    monitor-exit v11
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_b8

    throw v0
.end method

.class public final Lcom/mediatek/bt/BluetoothLeAudio;
.super Ljava/lang/Object;
.source "BluetoothLeAudio.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_LEAUDIO_ACTIVE_DEVICE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LEAUDIO_ACTIVE_DEVICE_CHANGED"

.field public static final ACTION_LEAUDIO_BROADCAST_ADDRESS_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LEAUDIO_BROADCAST_ADDRESS_CHANGED"

.field public static final ACTION_LEAUDIO_BROADCAST_CREATED:Ljava/lang/String; = "android.bluetooth.action.LEAUDIO_BROADCAST_CREATED"

.field public static final ACTION_LEAUDIO_BROADCAST_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LEAUDIO_BROADCAST_STATE_CHANGED"

.field public static final ACTION_LEAUDIO_CONF_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LEAUDIO_CONF_CHANGED"

.field public static final ACTION_LEAUDIO_CONNECTION_REJECTED:Ljava/lang/String; = "android.bluetooth.action.LEAUDIO_CONNECTION_REJECTED"

.field public static final ACTION_LEAUDIO_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LEAUDIO_CONNECTION_STATE_CHANGED"

.field public static final ACTION_LEAUDIO_GROUP_LOCK_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LEAUDIO_GROUP_LOCK_CHANGED"

.field public static final ACTION_LEAUDIO_GROUP_NODE_STATUS_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LEAUDIO_GROUP_NODE_STATUS_CHANGED"

.field public static final ACTION_LEAUDIO_GROUP_STATUS_CHANGED:Ljava/lang/String; = "android.bluetooth.action.LEAUDIO_GROUP_STATUS_CHANGED"

.field public static final ACTION_LEAUDIO_SET_MEMBER_AVAILABLE:Ljava/lang/String; = "android.bluetooth.action.LEAUDIO_SET_MEMBER_AVAILABLE"

.field public static final CONTENT_TYPE_ATTENTION_SEEKING:I = 0x10

.field public static final CONTENT_TYPE_CONVERSATIONAL:I = 0x2

.field public static final CONTENT_TYPE_EMERGENCY_ALERT:I = 0x80

.field public static final CONTENT_TYPE_IMMEDIATE_ALERT:I = 0x20

.field public static final CONTENT_TYPE_INSTRUCTIONAL:I = 0x8

.field public static final CONTENT_TYPE_MAN_MACHINE:I = 0x40

.field public static final CONTENT_TYPE_MEDIA:I = 0x4

.field public static final CONTENT_TYPE_RINGTONE:I = 0x100

.field public static final CONTENT_TYPE_TV:I = 0x200

.field public static final CONTENT_TYPE_UNSPECIFIED:I = 0x1

.field private static final DBG:Z = true

.field public static final EXTRA_LEAUDIO_DIRECTION:Ljava/lang/String; = "android.bluetooth.extra.LEAUDIO_DIRECTION"

.field public static final EXTRA_LEAUDIO_GROUP_FLAGS:Ljava/lang/String; = "android.bluetooth.extra.LEAUDIO_GROUP_FLAGS"

.field public static final EXTRA_LEAUDIO_GROUP_ID:Ljava/lang/String; = "android.bluetooth.extra.LEAUDIO_GROUP_ID"

.field public static final EXTRA_LEAUDIO_GROUP_LOCK_OP_STATUS:Ljava/lang/String; = "android.bluetooth.extra.LEAUDIO_GROUP_LOCK_OP_STATUS"

.field public static final EXTRA_LEAUDIO_GROUP_LOCK_STATE:Ljava/lang/String; = "android.bluetooth.extra.LEAUDIO_GROUP_LOCK_STATE"

.field public static final EXTRA_LEAUDIO_GROUP_NODE_STATUS:Ljava/lang/String; = "android.bluetooth.extra.LEAUDIO_GROUP_NODE_STATUS"

.field public static final EXTRA_LEAUDIO_GROUP_STATUS:Ljava/lang/String; = "android.bluetooth.extra.LEAUDIO_GROUP_STATUS"

.field public static final EXTRA_LEAUDIO_SINK_LOCATION:Ljava/lang/String; = "android.bluetooth.extra.LEAUDIO_SINK_LOCATION"

.field public static final EXTRA_LEAUDIO_SOURCE_LOCATION:Ljava/lang/String; = "android.bluetooth.extra.LEAUDIO_SOURCE_LOCATION"

.field public static final GROUP_ID_INVALID:I = -0x1

.field public static final GROUP_LOCK_FAILED_GROUP_EMPTY:I = 0x2

.field public static final GROUP_LOCK_FAILED_GROUP_NOT_CONNECTED:I = 0x3

.field public static final GROUP_LOCK_FAILED_INVALID_GROUP:I = 0x1

.field public static final GROUP_LOCK_FAILED_LOCKED_BY_OTHER:I = 0x4

.field public static final GROUP_LOCK_FAILED_OTHER_REASON:I = 0x5

.field public static final GROUP_LOCK_SUCCESS:I = 0x0

.field public static final GROUP_NODE_ADDED:I = 0x1

.field public static final GROUP_NODE_REMOVED:I = 0x2

.field public static final GROUP_STATUS_DESTROYED:I = 0x4

.field public static final GROUP_STATUS_IDLE:I = 0x0

.field public static final GROUP_STATUS_RECONFIGURED:I = 0x3

.field public static final GROUP_STATUS_RELEASING:I = 0x6

.field public static final GROUP_STATUS_STREAMING:I = 0x1

.field public static final GROUP_STATUS_SUSPENDED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothLeAudio"

.field private static final VDBG:Z = false


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothLeAudio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    new-instance v6, Lcom/mediatek/bt/BluetoothLeAudio$1;

    const-class v0, Landroid/bluetooth/IBluetoothLeAudio;

    .line 469
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x16

    const-string v4, "BluetoothLeAudio"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/bt/BluetoothLeAudio$1;-><init>(Lcom/mediatek/bt/BluetoothLeAudio;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 481
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 482
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    .line 483
    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 484
    return-void
.end method

.method private getService()Landroid/bluetooth/IBluetoothLeAudio;
    .registers 2

    .line 491
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothLeAudio;

    return-object v0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1052
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1054
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    return v0

    .line 1055
    :cond_10
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1059
    const-string v0, "BluetoothLeAudio"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 1037
    packed-switch p0, :pswitch_data_26

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1045
    :pswitch_1a
    const-string v0, "disconnecting"

    return-object v0

    .line 1043
    :pswitch_1d
    const-string v0, "connected"

    return-object v0

    .line 1041
    :pswitch_20
    const-string v0, "connecting"

    return-object v0

    .line 1039
    :pswitch_23
    const-string v0, "disconnected"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 488
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 512
    const-string v0, "BluetoothLeAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 514
    const/4 v1, 0x0

    :try_start_1c
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 515
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_37

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-direct {p0, p1}, Lcom/mediatek/bt/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 516
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothLeAudio;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 518
    :cond_37
    if-nez v2, :cond_3e

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3e} :catch_3f

    .line 519
    :cond_3e
    return v1

    .line 520
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_3f
    move-exception v2

    .line 521
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 552
    const-string v0, "BluetoothLeAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 554
    const/4 v1, 0x0

    :try_start_1c
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 555
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_37

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-direct {p0, p1}, Lcom/mediatek/bt/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 556
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothLeAudio;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 558
    :cond_37
    if-nez v2, :cond_3e

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3e} :catch_3f

    .line 559
    :cond_3e
    return v1

    .line 560
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_3f
    move-exception v2

    .line 561
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return v1
.end method

.method public getActiveDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 684
    const-string v0, "BluetoothLeAudio"

    :try_start_2
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    .line 685
    .local v1, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v1, :cond_17

    iget-object v2, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 686
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothLeAudio;->getActiveDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 688
    :cond_17
    if-nez v1, :cond_1e

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_24

    return-object v2

    .line 690
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_24
    move-exception v1

    .line 691
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 575
    const-string v0, "BluetoothLeAudio"

    :try_start_2
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    .line 576
    .local v1, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v1, :cond_17

    iget-object v2, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 577
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothLeAudio;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 579
    :cond_17
    if-nez v1, :cond_1e

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_24

    return-object v2

    .line 581
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_24
    move-exception v1

    .line 582
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 979
    const-string v0, "BluetoothLeAudio"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 980
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_1e

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 981
    invoke-direct {p0, p1}, Lcom/mediatek/bt/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 982
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothLeAudio;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    return v0

    .line 984
    :cond_1e
    if-nez v2, :cond_25

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_25} :catch_26

    .line 985
    :cond_25
    return v1

    .line 986
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_26
    move-exception v2

    .line 987
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 619
    const-string v0, "BluetoothLeAudio"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 620
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_1e

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 621
    invoke-direct {p0, p1}, Lcom/mediatek/bt/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 622
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothLeAudio;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    return v0

    .line 624
    :cond_1e
    if-nez v2, :cond_25

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_25} :catch_26

    .line 625
    :cond_25
    return v1

    .line 626
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_26
    move-exception v2

    .line 627
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 6
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 597
    const-string v0, "BluetoothLeAudio"

    :try_start_2
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    .line 598
    .local v1, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v1, :cond_17

    iget-object v2, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 599
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetoothLeAudio;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 601
    :cond_17
    if-nez v1, :cond_1e

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_24

    return-object v2

    .line 603
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_24
    move-exception v1

    .line 604
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getGroupId(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 892
    const-string v0, "BluetoothLeAudio"

    const/4 v1, -0x1

    :try_start_3
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 893
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_18

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 894
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    return v0

    .line 896
    :cond_18
    if-nez v2, :cond_1f

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_20

    .line 897
    :cond_1f
    return v1

    .line 898
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_20
    move-exception v2

    .line 899
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1006
    invoke-virtual {p0, p1}, Lcom/mediatek/bt/BluetoothLeAudio;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->connectionPolicyToPriority(I)I

    move-result v0

    return v0
.end method

.method public groupAddNode(ILandroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .param p1, "group_id"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 710
    const-string v0, "BluetoothLeAudio"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 711
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_18

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 712
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, p2, v3}, Landroid/bluetooth/IBluetoothLeAudio;->groupAddNode(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 714
    :cond_18
    if-nez v2, :cond_1f

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_20

    .line 715
    :cond_1f
    return v1

    .line 716
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_20
    move-exception v2

    .line 717
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return v1
.end method

.method public groupDestroy(I)Z
    .registers 7
    .param p1, "group_id"    # I

    .line 839
    const-string v0, "BluetoothLeAudio"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 840
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_18

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 841
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothLeAudio;->groupDestroy(ILandroid/content/AttributionSource;)V

    .line 842
    const/4 v0, 0x1

    return v0

    .line 844
    :cond_18
    if-nez v2, :cond_1f

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_20

    .line 845
    :cond_1f
    return v1

    .line 846
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_20
    move-exception v2

    .line 847
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return v1
.end method

.method public groupLockSet(IZ)Z
    .registers 8
    .param p1, "group_id"    # I
    .param p2, "lock"    # Z

    .line 866
    const-string v0, "BluetoothLeAudio"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 867
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_18

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 868
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, p2, v3}, Landroid/bluetooth/IBluetoothLeAudio;->groupLockSet(IZLandroid/content/AttributionSource;)V

    .line 869
    const/4 v0, 0x1

    return v0

    .line 871
    :cond_18
    if-nez v2, :cond_1f

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_20

    .line 872
    :cond_1f
    return v1

    .line 873
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_20
    move-exception v2

    .line 874
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return v1
.end method

.method public groupRemoveNode(ILandroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .param p1, "group_id"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 736
    const-string v0, "BluetoothLeAudio"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 737
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_18

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 738
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, p2, v3}, Landroid/bluetooth/IBluetoothLeAudio;->groupRemoveNode(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 740
    :cond_18
    if-nez v2, :cond_1f

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_20

    .line 741
    :cond_1f
    return v1

    .line 742
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_20
    move-exception v2

    .line 743
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return v1
.end method

.method public groupStop(I)Z
    .registers 7
    .param p1, "group_id"    # I

    .line 813
    const-string v0, "BluetoothLeAudio"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 814
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_18

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 815
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothLeAudio;->groupStop(ILandroid/content/AttributionSource;)V

    .line 816
    const/4 v0, 0x1

    return v0

    .line 818
    :cond_18
    if-nez v2, :cond_1f

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_20

    .line 819
    :cond_1f
    return v1

    .line 820
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_20
    move-exception v2

    .line 821
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return v1
.end method

.method public groupStream(I)Z
    .registers 7
    .param p1, "group_id"    # I

    .line 761
    const-string v0, "BluetoothLeAudio"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 762
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_18

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 763
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothLeAudio;->groupStream(ILandroid/content/AttributionSource;)V

    .line 764
    const/4 v0, 0x1

    return v0

    .line 766
    :cond_18
    if-nez v2, :cond_1f

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_20

    .line 767
    :cond_1f
    return v1

    .line 768
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_20
    move-exception v2

    .line 769
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return v1
.end method

.method public groupSuspend(I)Z
    .registers 7
    .param p1, "group_id"    # I

    .line 787
    const-string v0, "BluetoothLeAudio"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 788
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_18

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 789
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothLeAudio;->groupSuspend(ILandroid/content/AttributionSource;)V

    .line 790
    const/4 v0, 0x1

    return v0

    .line 792
    :cond_18
    if-nez v2, :cond_1f

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1f} :catch_20

    .line 793
    :cond_1f
    return v1

    .line 794
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_20
    move-exception v2

    .line 795
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return v1
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 655
    const-string v0, "BluetoothLeAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveDevice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 657
    const/4 v1, 0x0

    :try_start_1c
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 658
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_39

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_39

    if-eqz p1, :cond_32

    .line 659
    invoke-direct {p0, p1}, Lcom/mediatek/bt/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 660
    :cond_32
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothLeAudio;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    .line 661
    const/4 v0, 0x1

    return v0

    .line 663
    :cond_39
    if-nez v2, :cond_40

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_40} :catch_41

    .line 664
    :cond_40
    return v1

    .line 665
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_41
    move-exception v2

    .line 666
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return v1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I

    .line 923
    const-string v0, "BluetoothLeAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionPolicy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 925
    const/4 v1, 0x0

    :try_start_24
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v2

    .line 926
    .local v2, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v2, :cond_46

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 927
    invoke-direct {p0, p1}, Lcom/mediatek/bt/BluetoothLeAudio;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 928
    if-eqz p2, :cond_3f

    const/16 v3, 0x64

    if-eq p2, v3, :cond_3f

    .line 930
    return v1

    .line 932
    :cond_3f
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, p2, v3}, Landroid/bluetooth/IBluetoothLeAudio;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 934
    :cond_46
    if-nez v2, :cond_4d

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_4d} :catch_4e

    .line 935
    :cond_4d
    return v1

    .line 936
    .end local v2    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :catch_4e
    move-exception v2

    .line 937
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPriority("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothLeAudio;->log(Ljava/lang/String;)V

    .line 960
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->priorityToConnectionPolicy(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/bt/BluetoothLeAudio;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method public setVcAbsoluteVolume(I)V
    .registers 6
    .param p1, "volume"    # I

    .line 1016
    const-string v0, "BluetoothLeAudio"

    const-string v1, "setVcAbsoluteVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :try_start_7
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudio;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    .line 1019
    .local v1, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v1, :cond_1a

    iget-object v2, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1020
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothLeAudio;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetoothLeAudio;->setVcAbsoluteVolume(ILandroid/content/AttributionSource;)V

    .line 1022
    :cond_1a
    if-nez v1, :cond_21

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_21} :catch_22

    .line 1026
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    :cond_21
    goto :goto_45

    .line 1023
    :catch_22
    move-exception v1

    .line 1024
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Error talking to BT service in setVcAbsoluteVolume()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

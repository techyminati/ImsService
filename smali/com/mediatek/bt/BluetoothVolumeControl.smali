.class public final Lcom/mediatek/bt/BluetoothVolumeControl;
.super Ljava/lang/Object;
.source "BluetoothVolumeControl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_VC_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.VC_CONNECTION_STATE_CHANGED"

.field public static final ACTION_VC_DEVICE_AVAILABLE:Ljava/lang/String; = "android.bluetooth.action.VC_DEVICE_AVAILABLE"

.field public static final ACTION_VC_EXT_AUDIO_IN_DESCRIPTION_CHANGED:Ljava/lang/String; = "android.bluetooth.action.VC_EXT_AUDIO_IN_DESCRIPTION_CHANGED"

.field public static final ACTION_VC_EXT_AUDIO_IN_GAIN_PROPS_CHANGED:Ljava/lang/String; = "android.bluetooth.action.VC_EXT_AUDIO_IN_GAIN_PROPS_CHANGED"

.field public static final ACTION_VC_EXT_AUDIO_IN_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.VC_EXT_AUDIO_IN_STATE_CHANGED"

.field public static final ACTION_VC_EXT_AUDIO_IN_STATUS_CHANGED:Ljava/lang/String; = "android.bluetooth.action.VC_EXT_AUDIO_IN_STATUS_CHANGED"

.field public static final ACTION_VC_EXT_AUDIO_IN_TYPE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.VC_EXT_AUDIO_IN_TYPE_CHANGED"

.field public static final ACTION_VC_EXT_AUDIO_OUT_DESCRIPTION_CHANGED:Ljava/lang/String; = "android.bluetooth.action.VC_EXT_AUDIO_OUT_DESCRIPTION_CHANGED"

.field public static final ACTION_VC_EXT_AUDIO_OUT_LOCATION_CHANGED:Ljava/lang/String; = "android.bluetooth.action.VC_EXT_AUDIO_OUT_LOCATION_CHANGED"

.field public static final ACTION_VC_EXT_AUDIO_OUT_VOLUME_OFFSET_CHANGED:Ljava/lang/String; = "android.bluetooth.action.VC_EXT_AUDIO_OUT_VOLUME_OFFSET_CHANGED"

.field public static final ACTION_VC_VOLUME_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.VC_VOLUME_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final EXTRA_VC_DESCRIPTION:Ljava/lang/String; = "android.bluetooth.extra.VC_DESCRIPTION"

.field public static final EXTRA_VC_EXT_INPUT_ID:Ljava/lang/String; = "android.bluetooth.extra.VC_EXT_INPUT_ID"

.field public static final EXTRA_VC_EXT_OUTPUT_ID:Ljava/lang/String; = "android.bluetooth.extra.VC_EXT_OUTPUT_ID"

.field public static final EXTRA_VC_GAIN_MODE:Ljava/lang/String; = "android.bluetooth.extra.VC_GAIN_MODE"

.field public static final EXTRA_VC_GAIN_VALUE:Ljava/lang/String; = "android.bluetooth.extra.VC_GAIN_VALUE"

.field public static final EXTRA_VC_LOCATION:Ljava/lang/String; = "android.bluetooth.extra.VC_LOCATION"

.field public static final EXTRA_VC_MAX:Ljava/lang/String; = "android.bluetooth.extra.VC_MAX"

.field public static final EXTRA_VC_MIN:Ljava/lang/String; = "android.bluetooth.extra.VC_MIN"

.field public static final EXTRA_VC_MUTED:Ljava/lang/String; = "android.bluetooth.extra.VC_MUTED"

.field public static final EXTRA_VC_NUM_INPUTS:Ljava/lang/String; = "android.bluetooth.extra.VC_NUM_INPUTS"

.field public static final EXTRA_VC_NUM_OFFSETS:Ljava/lang/String; = "android.bluetooth.extra.VC_NUM_OFFSETS"

.field public static final EXTRA_VC_OFFSET:Ljava/lang/String; = "android.bluetooth.extra.VC_OFFSET"

.field public static final EXTRA_VC_STATUS:Ljava/lang/String; = "android.bluetooth.extra.VC_STATUS"

.field public static final EXTRA_VC_TYPE:Ljava/lang/String; = "android.bluetooth.extra.VC_TYPE"

.field public static final EXTRA_VC_UNIT:Ljava/lang/String; = "android.bluetooth.extra.VC_UNIT"

.field public static final EXTRA_VC_VOLUME:Ljava/lang/String; = "android.bluetooth.extra.VC_VOLUME"

.field private static final TAG:Ljava/lang/String; = "BluetoothVolumeControl"

.field private static final VDBG:Z = true


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothVolumeControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v6, Lcom/mediatek/bt/BluetoothVolumeControl$1;

    const-class v0, Landroid/bluetooth/IBluetoothVolumeControl;

    .line 340
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x17

    const-string v4, "BluetoothVolumeControl"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/bt/BluetoothVolumeControl$1;-><init>(Lcom/mediatek/bt/BluetoothVolumeControl;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 352
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 353
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 354
    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 355
    return-void
.end method

.method private getService()Landroid/bluetooth/IBluetoothVolumeControl;
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothVolumeControl;

    return-object v0
.end method

.method private isEnabled()Z
    .registers 3

    .line 723
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 727
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 731
    const-string v0, "BluetoothVolumeControl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 359
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 383
    const-string v0, "BluetoothVolumeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 385
    const/4 v1, 0x0

    :try_start_1c
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v2

    .line 386
    .local v2, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-eqz v2, :cond_37

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-static {p1}, Lcom/mediatek/bt/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 387
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothVolumeControl;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 389
    :cond_37
    if-nez v2, :cond_3e

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3e} :catch_3f

    .line 390
    :cond_3e
    return v1

    .line 391
    .end local v2    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    :catch_3f
    move-exception v2

    .line 392
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

    .line 393
    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 423
    const-string v0, "BluetoothVolumeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 425
    const/4 v1, 0x0

    :try_start_1c
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v2

    .line 426
    .local v2, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-eqz v2, :cond_37

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-static {p1}, Lcom/mediatek/bt/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 427
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothVolumeControl;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 429
    :cond_37
    if-nez v2, :cond_3e

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3e} :catch_3f

    .line 430
    :cond_3e
    return v1

    .line 431
    .end local v2    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    :catch_3f
    move-exception v2

    .line 432
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

    .line 433
    return v1
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

    .line 444
    const-string v0, "BluetoothVolumeControl"

    const-string v1, "getConnectedDevices()"

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 446
    :try_start_7
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v1

    .line 447
    .local v1, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-eqz v1, :cond_1c

    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 448
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 450
    :cond_1c
    if-nez v1, :cond_23

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_28} :catch_29

    return-object v2

    .line 452
    .end local v1    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    :catch_29
    move-exception v1

    .line 453
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

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 690
    const-string v0, "BluetoothVolumeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionPolicy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 692
    const/4 v1, 0x0

    :try_start_1c
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v2

    .line 693
    .local v2, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-eqz v2, :cond_37

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 694
    invoke-static {p1}, Lcom/mediatek/bt/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 695
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothVolumeControl;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    return v0

    .line 697
    :cond_37
    if-nez v2, :cond_3e

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3e} :catch_3f

    .line 698
    :cond_3e
    return v1

    .line 699
    .end local v2    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    :catch_3f
    move-exception v2

    .line 700
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

    .line 701
    return v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 490
    const-string v0, "BluetoothVolumeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 492
    const/4 v1, 0x0

    :try_start_1c
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v2

    .line 493
    .local v2, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-eqz v2, :cond_37

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 494
    invoke-static {p1}, Lcom/mediatek/bt/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 495
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetoothVolumeControl;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    return v0

    .line 497
    :cond_37
    if-nez v2, :cond_3e

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3e} :catch_3f

    .line 498
    :cond_3e
    return v1

    .line 499
    .end local v2    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    :catch_3f
    move-exception v2

    .line 500
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

    .line 501
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

    .line 466
    const-string v0, "BluetoothVolumeControl"

    const-string v1, "getDevicesMatchingConnectionStates()"

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 468
    :try_start_7
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v1

    .line 469
    .local v1, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-eqz v1, :cond_1c

    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 470
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 472
    :cond_1c
    if-nez v1, :cond_23

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_28} :catch_29

    return-object v2

    .line 474
    .end local v1    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    :catch_29
    move-exception v1

    .line 475
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

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPriority("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0, p1}, Lcom/mediatek/bt/BluetoothVolumeControl;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->connectionPolicyToPriority(I)I

    move-result v0

    return v0
.end method

.method public mute()V
    .registers 6

    .line 583
    const-string v0, "mute()"

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v0

    .line 586
    .local v0, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    const-string v1, "BluetoothVolumeControl"

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 587
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->mute(Landroid/content/AttributionSource;)V

    .line 588
    return-void

    .line 591
    :catch_1b
    move-exception v2

    goto :goto_25

    .line 590
    :cond_1d
    if-nez v0, :cond_43

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_24} :catch_1b

    goto :goto_43

    .line 592
    .local v2, "e":Landroid/os/RemoteException;
    :goto_25
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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 593
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_43
    :goto_43
    nop

    .line 594
    :goto_44
    return-void
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I

    .line 636
    const-string v0, "BluetoothVolumeControl"

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

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 638
    const/4 v1, 0x0

    :try_start_24
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v2

    .line 639
    .local v2, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-eqz v2, :cond_46

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 640
    invoke-static {p1}, Lcom/mediatek/bt/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 641
    if-eqz p2, :cond_3f

    const/16 v3, 0x64

    if-eq p2, v3, :cond_3f

    .line 643
    return v1

    .line 645
    :cond_3f
    iget-object v3, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, p2, v3}, Landroid/bluetooth/IBluetoothVolumeControl;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v0

    return v0

    .line 647
    :cond_46
    if-nez v2, :cond_4d

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_4d} :catch_4e

    .line 648
    :cond_4d
    return v1

    .line 649
    .end local v2    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    :catch_4e
    move-exception v2

    .line 650
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

    .line 651
    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 672
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

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 673
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->priorityToConnectionPolicy(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/bt/BluetoothVolumeControl;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method public setVolume(I)V
    .registers 6
    .param p1, "volume"    # I

    .line 515
    const-string v0, "BluetoothVolumeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 517
    :try_start_1b
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v1

    .line 518
    .local v1, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-eqz v1, :cond_2f

    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 519
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->setVolume(ILandroid/content/AttributionSource;)V

    .line 520
    return-void

    .line 522
    :cond_2f
    if-nez v1, :cond_36

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_36} :catch_38

    .line 526
    .end local v1    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    :cond_36
    nop

    .line 527
    return-void

    .line 523
    :catch_38
    move-exception v1

    .line 524
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

    .line 525
    return-void
.end method

.method public unmute()V
    .registers 6

    .line 604
    const-string v0, "unmute()"

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 605
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v0

    .line 607
    .local v0, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    const-string v1, "BluetoothVolumeControl"

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 608
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->unmute(Landroid/content/AttributionSource;)V

    .line 609
    return-void

    .line 612
    :catch_1b
    move-exception v2

    goto :goto_25

    .line 611
    :cond_1d
    if-nez v0, :cond_43

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_24} :catch_1b

    goto :goto_43

    .line 613
    .local v2, "e":Landroid/os/RemoteException;
    :goto_25
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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 614
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_43
    :goto_43
    nop

    .line 615
    :goto_44
    return-void
.end method

.method public volumeDown(Z)V
    .registers 7
    .param p1, "unmute"    # Z

    .line 562
    const-string v0, "volumeDown()"

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v0

    .line 565
    .local v0, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    const-string v1, "BluetoothVolumeControl"

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 566
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->volumeDown(ZLandroid/content/AttributionSource;)V

    .line 567
    return-void

    .line 570
    :catch_1b
    move-exception v2

    goto :goto_25

    .line 569
    :cond_1d
    if-nez v0, :cond_43

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_24} :catch_1b

    goto :goto_43

    .line 571
    .local v2, "e":Landroid/os/RemoteException;
    :goto_25
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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 572
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_43
    :goto_43
    nop

    .line 573
    :goto_44
    return-void
.end method

.method public volumeUp(Z)V
    .registers 6
    .param p1, "unmute"    # Z

    .line 539
    const-string v0, "BluetoothVolumeControl"

    const-string v1, "volumeUp()"

    invoke-static {v1}, Lcom/mediatek/bt/BluetoothVolumeControl;->log(Ljava/lang/String;)V

    .line 541
    :try_start_7
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v1

    .line 542
    .local v1, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-eqz v1, :cond_1b

    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 543
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->volumeUp(ZLandroid/content/AttributionSource;)V

    .line 544
    return-void

    .line 546
    :cond_1b
    if-nez v1, :cond_22

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_22} :catch_23

    .line 549
    .end local v1    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    :cond_22
    goto :goto_41

    .line 547
    :catch_23
    move-exception v1

    .line 548
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

    .line 550
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_41
    return-void
.end method

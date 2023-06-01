.class public final Lcom/mediatek/bt/BluetoothTbs;
.super Ljava/lang/Object;
.source "BluetoothTbs.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;,
        Lcom/mediatek/bt/BluetoothTbs$Callback;,
        Lcom/mediatek/bt/BluetoothTbs$TerminationReason;,
        Lcom/mediatek/bt/BluetoothTbs$Result;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.tbs.profile.action.AUDIO_STATE_CHANGED"

.field public static final CAPABILITY_HOLD_CALL:I = 0x1

.field public static final CAPABILITY_JOIN_CALLS:I = 0x2

.field private static final DBG:Z = true

.field private static final MESSAGE_TBS_SERVICE_CONNECTED:I = 0x66

.field private static final MESSAGE_TBS_SERVICE_DISCONNECTED:I = 0x67

.field private static final REG_TIMEOUT:I = 0x3e8

.field public static final RESULT_ERROR_APPLICATION:I = 0x3

.field public static final RESULT_ERROR_INVALID_URI:I = 0x2

.field public static final RESULT_ERROR_UNKNOWN_CALL_ID:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final STATE_AUDIO_CONNECTED:I = 0xc

.field public static final STATE_AUDIO_CONNECTING:I = 0xb

.field public static final STATE_AUDIO_DISCONNECTED:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BluetoothTbs"

.field public static final TERMINATION_REASON_CLIENT_HANGUP:I = 0x6

.field public static final TERMINATION_REASON_FAIL:I = 0x1

.field public static final TERMINATION_REASON_INVALID_URI:I = 0x0

.field public static final TERMINATION_REASON_LINE_BUSY:I = 0x4

.field public static final TERMINATION_REASON_NETWORK_CONGESTION:I = 0x5

.field public static final TERMINATION_REASON_NO_ANSWER:I = 0x8

.field public static final TERMINATION_REASON_NO_SERVICE:I = 0x7

.field public static final TERMINATION_REASON_REMOTE_HANGUP:I = 0x2

.field public static final TERMINATION_REASON_SERVER_HANGUP:I = 0x3

.field private static final VDBG:Z = true


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

.field private mCcid:I

.field private final mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mServerIfLock:Ljava/lang/Object;

.field private volatile mService:Landroid/bluetooth/IBluetoothTbs;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    .line 457
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mServerIfLock:Ljava/lang/Object;

    .line 459
    new-instance v0, Lcom/mediatek/bt/BluetoothTbs$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bt/BluetoothTbs$1;-><init>(Lcom/mediatek/bt/BluetoothTbs;)V

    iput-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1214
    new-instance v1, Lcom/mediatek/bt/BluetoothTbs$2;

    invoke-direct {v1, p0}, Lcom/mediatek/bt/BluetoothTbs$2;-><init>(Lcom/mediatek/bt/BluetoothTbs;)V

    iput-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1234
    new-instance v1, Lcom/mediatek/bt/BluetoothTbs$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/bt/BluetoothTbs$3;-><init>(Lcom/mediatek/bt/BluetoothTbs;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mHandler:Landroid/os/Handler;

    .line 476
    iput-object p1, p0, Lcom/mediatek/bt/BluetoothTbs;->mContext:Landroid/content/Context;

    .line 477
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 478
    iput-object p2, p0, Lcom/mediatek/bt/BluetoothTbs;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 481
    const-string v1, "BluetoothTbs"

    const-string v2, "BluetoothTbs()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothTbs;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    .line 485
    .local v2, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v2, :cond_4c

    .line 487
    :try_start_42
    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_45} :catch_46

    .line 490
    goto :goto_4c

    .line 488
    :catch_46
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4c
    :goto_4c
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->doBind()Z

    .line 494
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bt/BluetoothTbs;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/BluetoothTbs;

    .line 80
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mServerIfLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/bt/BluetoothTbs;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/BluetoothTbs;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/bt/BluetoothTbs;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/bt/BluetoothTbs;

    .line 80
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->doUnbind()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/bt/BluetoothTbs;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/BluetoothTbs;

    .line 80
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->doBind()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/bt/BluetoothTbs;Landroid/bluetooth/IBluetoothTbs;)Landroid/bluetooth/IBluetoothTbs;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/BluetoothTbs;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothTbs;

    .line 80
    iput-object p1, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/bt/BluetoothTbs;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/BluetoothTbs;

    .line 80
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/bt/BluetoothTbs;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/BluetoothTbs;

    .line 80
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private doBind()Z
    .registers 5

    .line 498
    const-string v0, "BluetoothTbs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doBind(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    monitor-enter v0

    .line 501
    :try_start_19
    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    if-nez v1, :cond_3c

    .line 503
    const-string v1, "BluetoothTbs"

    const-string v2, "Binding service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_3f

    .line 505
    :try_start_24
    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/mediatek/bt/BluetoothTbs;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothManager;->bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z

    move-result v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_32} :catch_34
    .catchall {:try_start_24 .. :try_end_32} :catchall_3f

    :try_start_32
    monitor-exit v0

    return v1

    .line 507
    :catch_34
    move-exception v1

    .line 508
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothTbs"

    const-string v3, "Unable to bind TelephoneBearerService"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3c
    monitor-exit v0

    .line 512
    const/4 v0, 0x0

    return v0

    .line 511
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private doUnbind()V
    .registers 6

    .line 517
    const-string v0, "BluetoothTbs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUnbind(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    monitor-enter v0

    .line 520
    :try_start_19
    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    if-eqz v1, :cond_44

    .line 522
    const-string v1, "BluetoothTbs"

    const-string v2, "Unbinding service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_46

    .line 524
    const/4 v1, 0x0

    :try_start_25
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothTbs;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    const/16 v3, 0x1a

    iget-object v4, p0, Lcom/mediatek/bt/BluetoothTbs;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothManager;->unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_32} :catch_37
    .catchall {:try_start_25 .. :try_end_32} :catchall_35

    .line 528
    :goto_32
    :try_start_32
    iput-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_46

    .line 529
    goto :goto_44

    .line 528
    :catchall_35
    move-exception v2

    goto :goto_40

    .line 525
    :catch_37
    move-exception v2

    .line 526
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_38
    const-string v3, "BluetoothTbs"

    const-string v4, "Unable to unbind TelephoneBearerService"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    goto :goto_32

    .line 528
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_40
    :try_start_40
    iput-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    .line 529
    nop

    .end local p0    # "this":Lcom/mediatek/bt/BluetoothTbs;
    throw v2

    .line 531
    .restart local p0    # "this":Lcom/mediatek/bt/BluetoothTbs;
    :cond_44
    :goto_44
    monitor-exit v0

    .line 532
    return-void

    .line 531
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private getService()Landroid/bluetooth/IBluetoothTbs;
    .registers 2

    .line 552
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    return-object v0
.end method

.method private isDisabled()Z
    .registers 3

    .line 1203
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isEnabled()Z
    .registers 3

    .line 1199
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

.method public static isInbandRingingSupported(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 962
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x8080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1207
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

    .line 1211
    const-string v0, "BluetoothTbs"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return-void
.end method


# virtual methods
.method close()V
    .registers 5

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->log(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/mediatek/bt/BluetoothTbs;->unregisterBearer()V

    .line 539
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 540
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_2d

    .line 542
    :try_start_1f
    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    .line 545
    goto :goto_2d

    .line 543
    :catch_25
    move-exception v1

    .line 544
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "BluetoothTbs"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 548
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->doUnbind()V

    .line 549
    return-void
.end method

.method public connectAudio()Z
    .registers 5

    .line 1080
    const-string v0, "connectAudio()"

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->log(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    .line 1082
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    const-string v1, "BluetoothTbs"

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1084
    :try_start_11
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothTbs;->connectAudio()Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    .line 1085
    :catch_16
    move-exception v2

    .line 1086
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_30

    .line 1089
    :cond_1f
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :goto_30
    const/4 v1, 0x0

    return v1
.end method

.method public currentCallsList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/bt/BluetoothTbsCall;",
            ">;)V"
        }
    .end annotation

    .line 837
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bt/BluetoothTbsCall;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentCallsList() mCcid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->getService()Landroid/bluetooth/IBluetoothTbs;

    move-result-object v0

    .line 840
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    if-eqz v0, :cond_2a

    .line 842
    :try_start_1e
    iget v2, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-interface {v0, v2, p1}, Landroid/bluetooth/IBluetoothTbs;->currentCallsList(ILjava/util/List;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24

    .line 845
    goto :goto_2a

    .line 843
    :catch_24
    move-exception v2

    .line 844
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public disconnectAudio()Z
    .registers 5

    .line 1104
    const-string v0, "disconnectAudio()"

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->log(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    .line 1106
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    const-string v1, "BluetoothTbs"

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1108
    :try_start_11
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothTbs;->disconnectAudio()Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    .line 1109
    :catch_16
    move-exception v2

    .line 1110
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_30

    .line 1113
    :cond_1f
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :goto_30
    const/4 v1, 0x0

    return v1
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1183
    const-string v0, "getAudioState"

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->log(Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    .line 1185
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    const-string v1, "BluetoothTbs"

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1187
    :try_start_11
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothTbs;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    .line 1188
    :catch_16
    move-exception v2

    .line 1189
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_30

    .line 1192
    :cond_1f
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :goto_30
    const/16 v1, 0xa

    return v1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 572
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 562
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentControlId()I
    .registers 2

    .line 720
    iget v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    return v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 582
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAudioOn()Z
    .registers 5

    .line 1058
    const-string v0, "isAudioOn()"

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->log(Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    .line 1060
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    const-string v1, "BluetoothTbs"

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1062
    :try_start_11
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothTbs;->isAudioOn()Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    .line 1063
    :catch_16
    move-exception v2

    .line 1064
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_23
    if-nez v0, :cond_2a

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method public isInbandRingingEnabled()Z
    .registers 5

    .line 939
    const-string v0, "BluetoothTbs"

    const-string v1, "isInbandRingingEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    .line 942
    .local v1, "service":Landroid/bluetooth/IBluetoothTbs;
    if-eqz v1, :cond_23

    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 944
    :try_start_11
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothTbs;->isInbandRingingEnabled()Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v0

    .line 945
    :catch_16
    move-exception v2

    .line 946
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_23
    if-nez v1, :cond_2a

    .line 950
    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public networkStateChanged(Ljava/lang/String;I)V
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "technology"    # I

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkStateChanged: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", technology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCcid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    if-nez v0, :cond_2d

    .line 871
    return-void

    .line 874
    :cond_2d
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->getService()Landroid/bluetooth/IBluetoothTbs;

    move-result-object v0

    .line 875
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    if-eqz v0, :cond_3f

    .line 877
    :try_start_33
    iget v2, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-interface {v0, v2, p1, p2}, Landroid/bluetooth/IBluetoothTbs;->networkStateChanged(ILjava/lang/String;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39

    .line 880
    goto :goto_3f

    .line 878
    :catch_39
    move-exception v2

    .line 879
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    if-nez v0, :cond_46

    .line 883
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_46
    return-void
.end method

.method public onCallAdded(Lcom/mediatek/bt/BluetoothTbsCall;)V
    .registers 6
    .param p1, "call"    # Lcom/mediatek/bt/BluetoothTbsCall;

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallAdded: call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCcid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    if-nez v0, :cond_25

    .line 740
    return-void

    .line 743
    :cond_25
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->getService()Landroid/bluetooth/IBluetoothTbs;

    move-result-object v0

    .line 744
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    if-eqz v0, :cond_37

    .line 746
    :try_start_2b
    iget v2, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-interface {v0, v2, p1}, Landroid/bluetooth/IBluetoothTbs;->callAdded(ILcom/mediatek/bt/BluetoothTbsCall;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    .line 749
    goto :goto_37

    .line 747
    :catch_31
    move-exception v2

    .line 748
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    if-nez v0, :cond_3e

    .line 752
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_3e
    return-void
.end method

.method public onCallRemoved(Ljava/util/UUID;I)V
    .registers 7
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "reason"    # I

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callRemoved: callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCcid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    if-nez v0, :cond_25

    .line 774
    return-void

    .line 777
    :cond_25
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->getService()Landroid/bluetooth/IBluetoothTbs;

    move-result-object v0

    .line 778
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    if-eqz v0, :cond_3c

    .line 780
    :try_start_2b
    iget v2, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v2, v3, p2}, Landroid/bluetooth/IBluetoothTbs;->callRemoved(ILandroid/os/ParcelUuid;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_35} :catch_36

    .line 783
    goto :goto_3c

    .line 781
    :catch_36
    move-exception v2

    .line 782
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3c
    :goto_3c
    if-nez v0, :cond_43

    .line 786
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_43
    return-void
.end method

.method public onCallStateChanged(Ljava/util/UUID;I)V
    .registers 7
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "state"    # I

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callStateChanged: callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCcid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    if-nez v0, :cond_2d

    .line 809
    return-void

    .line 812
    :cond_2d
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->getService()Landroid/bluetooth/IBluetoothTbs;

    move-result-object v0

    .line 813
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    if-eqz v0, :cond_44

    .line 815
    :try_start_33
    iget v2, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v2, v3, p2}, Landroid/bluetooth/IBluetoothTbs;->callStateChanged(ILandroid/os/ParcelUuid;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3d} :catch_3e

    .line 818
    goto :goto_44

    .line 816
    :catch_3e
    move-exception v2

    .line 817
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 820
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_44
    :goto_44
    if-nez v0, :cond_4b

    .line 821
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_4b
    return-void
.end method

.method public phoneStateChanged(IIILjava/lang/String;ILjava/lang/String;)V
    .registers 16
    .param p1, "numActive"    # I
    .param p2, "numHeld"    # I
    .param p3, "callState"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "name"    # Ljava/lang/String;

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneStateChanged: numActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numHeld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->getService()Landroid/bluetooth/IBluetoothTbs;

    move-result-object v0

    .line 918
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    if-eqz v0, :cond_55

    .line 920
    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    :try_start_4b
    invoke-interface/range {v2 .. v8}, Landroid/bluetooth/IBluetoothTbs;->phoneStateChanged(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 923
    goto :goto_55

    .line 921
    :catch_4f
    move-exception v2

    .line 922
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_55
    :goto_55
    if-nez v0, :cond_5c

    .line 926
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_5c
    return-void
.end method

.method public registerBearer(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILjava/util/concurrent/Executor;Lcom/mediatek/bt/BluetoothTbs$Callback;)Z
    .registers 24
    .param p1, "uci"    # Ljava/lang/String;
    .param p3, "capabilities"    # I
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "technology"    # I
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Lcom/mediatek/bt/BluetoothTbs$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Lcom/mediatek/bt/BluetoothTbs$Callback;",
            ")Z"
        }
    .end annotation

    .line 623
    .local p2, "uriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    const-string v0, "BluetoothTbs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerBearer in: mCcid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    if-eqz v2, :cond_d8

    .line 628
    iget v0, v1, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    const/4 v3, 0x0

    if-eqz v0, :cond_24

    .line 629
    return v3

    .line 632
    :cond_24
    move-object/from16 v12, p1

    iput-object v12, v1, Lcom/mediatek/bt/BluetoothTbs;->mToken:Ljava/lang/String;

    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bt/BluetoothTbs;->getService()Landroid/bluetooth/IBluetoothTbs;

    move-result-object v13

    .line 635
    .local v13, "service":Landroid/bluetooth/IBluetoothTbs;
    if-eqz v13, :cond_ce

    .line 636
    iget-object v14, v1, Lcom/mediatek/bt/BluetoothTbs;->mServerIfLock:Ljava/lang/Object;

    monitor-enter v14

    .line 637
    :try_start_31
    iget-object v0, v1, Lcom/mediatek/bt/BluetoothTbs;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    if-eqz v0, :cond_3e

    .line 638
    const-string v0, "BluetoothTbs"

    const-string v4, "Bearer can be opened only once"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    monitor-exit v14

    return v3

    .line 642
    :cond_3e
    iput-object v2, v1, Lcom/mediatek/bt/BluetoothTbs;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_cb

    .line 644
    const/4 v15, 0x0

    :try_start_41
    new-instance v0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;

    move-object/from16 v11, p6

    invoke-direct {v0, v1, v11, v2}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;-><init>(Lcom/mediatek/bt/BluetoothTbs;Ljava/util/concurrent/Executor;Lcom/mediatek/bt/BluetoothTbs$Callback;)V

    .line 646
    .local v0, "callbackWrapper":Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;
    const-string v4, "BluetoothTbs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerBearer: callbackWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v5, v1, Lcom/mediatek/bt/BluetoothTbs;->mToken:Ljava/lang/String;

    move-object v4, v13

    move-object v6, v0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v4 .. v11}, Landroid/bluetooth/IBluetoothTbs;->registerBearer(Ljava/lang/String;Landroid/bluetooth/IBluetoothTbsCallback;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_6f} :catch_bf
    .catchall {:try_start_41 .. :try_end_6f} :catchall_cb

    .line 653
    .end local v0    # "callbackWrapper":Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;
    nop

    .line 656
    :try_start_70
    const-string v0, "BluetoothTbs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerBearer out: mCcid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget v0, v1, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I
    :try_end_8a
    .catchall {:try_start_70 .. :try_end_8a} :catchall_cb

    if-nez v0, :cond_bc

    .line 660
    :try_start_8c
    const-string v0, "BluetoothTbs"

    const-string v4, "registerBearer(): wait"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, v1, Lcom/mediatek/bt/BluetoothTbs;->mServerIfLock:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_9a
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_9a} :catch_9b
    .catchall {:try_start_8c .. :try_end_9a} :catchall_cb

    .line 665
    goto :goto_b4

    .line 662
    :catch_9b
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_9c
    const-string v4, "BluetoothTbs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iput-object v15, v1, Lcom/mediatek/bt/BluetoothTbs;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    .line 666
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_b4
    iget v0, v1, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    if-nez v0, :cond_bc

    .line 667
    iput-object v15, v1, Lcom/mediatek/bt/BluetoothTbs;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    .line 668
    monitor-exit v14

    return v3

    .line 671
    :cond_bc
    const/4 v0, 0x1

    monitor-exit v14

    return v0

    .line 649
    :catch_bf
    move-exception v0

    .line 650
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "BluetoothTbs"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    iput-object v15, v1, Lcom/mediatek/bt/BluetoothTbs;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    .line 652
    monitor-exit v14

    return v3

    .line 672
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_cb
    move-exception v0

    monitor-exit v14
    :try_end_cd
    .catchall {:try_start_9c .. :try_end_cd} :catchall_cb

    throw v0

    .line 674
    :cond_ce
    if-nez v13, :cond_d7

    .line 675
    const-string v0, "BluetoothTbs"

    const-string v4, "Proxy not attached to service"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_d7
    return v3

    .line 626
    .end local v13    # "service":Landroid/bluetooth/IBluetoothTbs;
    :cond_d8
    move-object/from16 v12, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestResult(II)V
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "result"    # I

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestResult: requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCcid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    if-nez v0, :cond_2d

    .line 990
    return-void

    .line 993
    :cond_2d
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->getService()Landroid/bluetooth/IBluetoothTbs;

    move-result-object v0

    .line 994
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    if-eqz v0, :cond_3f

    .line 996
    :try_start_33
    iget v2, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-interface {v0, v2, p1, p2}, Landroid/bluetooth/IBluetoothTbs;->requestResult(III)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39

    .line 999
    goto :goto_3f

    .line 997
    :catch_39
    move-exception v2

    .line 998
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    return-void
.end method

.method public startIsoUsingVirtualVoiceCall()Z
    .registers 5

    .line 1132
    const-string v0, "startIsoUsingVirtualVoiceCall()"

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->log(Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    .line 1134
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    const-string v1, "BluetoothTbs"

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1136
    :try_start_11
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothTbs;->startIsoUsingVirtualVoiceCall()Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    .line 1137
    :catch_16
    move-exception v2

    .line 1138
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_30

    .line 1141
    :cond_1f
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :goto_30
    const/4 v1, 0x0

    return v1
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1015
    const-string v0, "startVoiceRecognition()"

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->log(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    .line 1017
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    const-string v1, "BluetoothTbs"

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {p1}, Lcom/mediatek/bt/BluetoothTbs;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1019
    :try_start_17
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothTbs;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1b} :catch_1c

    return v1

    .line 1020
    :catch_1c
    move-exception v2

    .line 1021
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_29
    if-nez v0, :cond_30

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_30
    const/4 v1, 0x0

    return v1
.end method

.method public stopIsoUsingVirtualVoiceCall()Z
    .registers 5

    .line 1159
    const-string v0, "stopIsoUsingVirtualVoiceCall()"

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->log(Ljava/lang/String;)V

    .line 1160
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    .line 1161
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    const-string v1, "BluetoothTbs"

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1163
    :try_start_11
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothTbs;->stopIsoUsingVirtualVoiceCall()Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    .line 1164
    :catch_16
    move-exception v2

    .line 1165
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_30

    .line 1168
    :cond_1f
    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :goto_30
    const/4 v1, 0x0

    return v1
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1036
    const-string v0, "stopVoiceRecognition()"

    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->log(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;

    .line 1038
    .local v0, "service":Landroid/bluetooth/IBluetoothTbs;
    const-string v1, "BluetoothTbs"

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {p1}, Lcom/mediatek/bt/BluetoothTbs;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1040
    :try_start_17
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothTbs;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1b} :catch_1c

    return v1

    .line 1041
    :catch_1c
    move-exception v2

    .line 1042
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_29
    if-nez v0, :cond_30

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_30
    const/4 v1, 0x0

    return v1
.end method

.method public unregisterBearer()V
    .registers 6

    .line 688
    const-string v0, "BluetoothTbs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterBearer mCcid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    if-nez v0, :cond_1d

    .line 691
    return-void

    .line 694
    :cond_1d
    iget v0, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    .line 695
    .local v0, "ccid":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mCcid:I

    .line 696
    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs;->mServerIfLock:Ljava/lang/Object;

    monitor-enter v1

    .line 697
    const/4 v2, 0x0

    :try_start_26
    iput-object v2, p0, Lcom/mediatek/bt/BluetoothTbs;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    .line 698
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_47

    .line 700
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothTbs;->getService()Landroid/bluetooth/IBluetoothTbs;

    move-result-object v1

    .line 701
    .local v1, "service":Landroid/bluetooth/IBluetoothTbs;
    if-eqz v1, :cond_3d

    .line 703
    :try_start_2f
    iget-object v2, p0, Lcom/mediatek/bt/BluetoothTbs;->mToken:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothTbs;->unregisterBearer(Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35

    .line 706
    goto :goto_3d

    .line 704
    :catch_35
    move-exception v2

    .line 705
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothTbs"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    if-nez v1, :cond_46

    .line 709
    const-string v2, "BluetoothTbs"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_46
    return-void

    .line 698
    .end local v1    # "service":Landroid/bluetooth/IBluetoothTbs;
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

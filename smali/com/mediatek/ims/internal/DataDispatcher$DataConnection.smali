.class public Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

.field private mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

.field private mCapabiliy:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

.field private mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

.field private mFwInterface:Ljava/lang/String;

.field private mImsNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

.field private mInterface:Ljava/lang/String;

.field private mNetworkHandle:J

.field private mNetworkId:I

.field private mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

.field private mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mHandler"    # Landroid/os/Handler;
    .param p4, "capability"    # I

    .line 361
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 362
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 340
    const-string v0, "DC-"

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    .line 344
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    .line 351
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    .line 352
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    .line 353
    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mFwInterface:Ljava/lang/String;

    .line 355
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    .line 356
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    .line 357
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    .line 358
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    .line 359
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    .line 363
    iput p4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mCapabiliy:I

    .line 364
    nop

    .line 365
    invoke-static {p1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1000(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 366
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    .line 367
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    .line 369
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;)V

    .line 370
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 371
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 372
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 373
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 374
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 375
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->start()V

    .line 376
    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 338
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->msgToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 338
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->rejectNetworkRequest(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 338
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->rejectNetworkReleased(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->requestNetwork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->releaseNetwork()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onAbortNetworkCompleted()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onReleaseNetworkCompleted()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Z

    .line 338
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Z

    .line 338
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->setFirewallInterfaceChain(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mFwInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 338
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mFwInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 338
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onRequestNetworkCompleted()V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->notifyNetworkLosted()V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 338
    iput p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    return p1
.end method

.method static synthetic access$3302(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;J)J
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # J

    .line 338
    iput-wide p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 338
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->disable()V

    return-void
.end method

.method private clearNwInfo(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .line 777
    const-string v0, "clearNwInfo"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 778
    if-eqz p1, :cond_0

    .line 779
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 781
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    .line 782
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    .line 783
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    .line 784
    return-void
.end method

.method private disable()V
    .locals 1

    .line 773
    const v0, 0xaae61

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 774
    return-void
.end method

.method private msgToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # I

    .line 882
    sparse-switch p1, :sswitch_data_0

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 888
    :sswitch_0
    const-string v0, "MSG_ID_REQUEST_PCSCF_DISCOVERY"

    return-object v0

    .line 886
    :sswitch_1
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ"

    return-object v0

    .line 884
    :sswitch_2
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ"

    return-object v0

    .line 898
    :sswitch_3
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ABORT"

    return-object v0

    .line 894
    :sswitch_4
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_FAIL"

    return-object v0

    .line 892
    :sswitch_5
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_COMPLETED"

    return-object v0

    .line 890
    :sswitch_6
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_COMPLETED"

    return-object v0

    .line 896
    :sswitch_7
    const-string v0, "MSG_ID_IMSA_DISABLE_SERVICE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xaae61 -> :sswitch_7
        0xc3501 -> :sswitch_6
        0xc3502 -> :sswitch_5
        0xc3503 -> :sswitch_4
        0xc3504 -> :sswitch_3
        0xdbba8 -> :sswitch_2
        0xdbbab -> :sswitch_1
        0xdbd33 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyNetworkHandle()V
    .locals 5

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNetworkHandle() netHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->log(Ljava/lang/String;)V

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget-wide v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 680
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$3000(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v2

    .line 682
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 680
    const v4, 0xdbccd

    invoke-virtual {v2, v4, v3}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 683
    return-void
.end method

.method private notifyNetworkLosted()V
    .locals 5

    .line 755
    const-string v0, "notifyNetworkLosted"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "cb already has been released!!"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 763
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1200(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "LOST_CONNECTION"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$3000(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v2

    const v3, 0xdbbae

    .line 768
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 767
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 769
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 770
    return-void
.end method

.method private onAbortNetworkCompleted()V
    .locals 6

    .line 736
    const-string v0, "onAbortNetworkCompleted"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xc3504

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 738
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found Req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1200(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "UNKNOWN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$3000(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v3

    const v4, 0xdbbac

    .line 748
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 747
    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 749
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 751
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 752
    return-void
.end method

.method private onReleaseNetworkCompleted()V
    .locals 6

    .line 716
    const-string v0, "onReleaseNetworkCompleted"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbbab

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 719
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found Req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1200(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "UNKNOWN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$3000(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v3

    const v4, 0xdbbac

    .line 729
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 728
    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 730
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 732
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 733
    return-void
.end method

.method private onRequestNetworkCompleted()V
    .locals 6

    .line 652
    const-string v0, "onRequestNetworkComplete"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbba8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 655
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found Req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 660
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->notifyNetworkHandle()V

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " IfaceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 669
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$3000(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v3

    const v4, 0xdbba9

    .line 670
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 669
    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 671
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 673
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private refreshNwLostCallBack(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "nwRequest"    # Landroid/net/NetworkRequest;

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshNwLostCallBack nwRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    goto :goto_0

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "cb already has been released!!"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 829
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 830
    return-void
.end method

.method private rejectNetworkReleased(I)V
    .locals 6
    .param p1, "cause"    # I

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectNetworkReleased cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbbab

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 701
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found Req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$3000(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v3

    const v4, 0xdbbad

    .line 710
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 709
    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 711
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 713
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private rejectNetworkRequest(I)V
    .locals 6
    .param p1, "cause"    # I

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectNetworkRequest cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbba8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 635
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found Req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 639
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$200(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0xc3505

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$3000(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v3

    const v4, 0xdbbaa

    .line 645
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 644
    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 646
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 647
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 649
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private releaseNetwork()V
    .locals 3

    .line 686
    const-string v0, "releaseNetwork"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbbab

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 689
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$200(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0xc3505

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    goto :goto_0

    .line 692
    :catch_0
    move-exception v1

    .line 693
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "cb already has been released!!"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 695
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method private requestNetwork()Z
    .locals 7

    .line 597
    const-string v0, "requestNetwork"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 599
    iget v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mCapabiliy:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inValid subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 601
    return v1

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v2, 0xdbba8

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 608
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    if-nez v0, :cond_1

    .line 609
    const-string v2, "ImsBearerRequest is NULL"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 610
    return v1

    .line 613
    :cond_1
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 614
    .local v2, "builder":Landroid/net/NetworkRequest$Builder;
    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mCapabiliy:I

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 615
    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 616
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 617
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 619
    .local v1, "nwRequest":Landroid/net/NetworkRequest;
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->refreshNwLostCallBack(Landroid/net/NetworkRequest;)V

    .line 620
    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mCapabiliy:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 621
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$200(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v3

    const v4, 0xc3505

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$200(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$200(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x4e20

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 626
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start requestNetwork for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 627
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-virtual {v3, v1, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 628
    const/4 v3, 0x1

    return v3
.end method

.method private setFirewallInterfaceChain(Z)V
    .locals 2
    .param p1, "isAdded"    # Z

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFirewallInterfaceChain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 917
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;

    const-string v1, "setFirewallInterfaceChain"

    invoke-direct {v0, p0, v1, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;Z)V

    .line 936
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 937
    return-void
.end method


# virtual methods
.method public logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-void
.end method

.method public onImsRequestTimeout()V
    .locals 4

    .line 807
    const-string v0, "onImsRequestTimeout"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbba8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 810
    .local v0, "n1":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    if-eqz v0, :cond_0

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get request type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getCapability()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getCapability()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ims"

    if-ne v1, v2, :cond_0

    .line 813
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 814
    .local v1, "imsHandle":Landroid/os/Handler;
    const v2, 0xc3503

    .line 815
    const-string v3, "UNKNOWN"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 814
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 816
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$200(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v2

    const v3, 0xc3505

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    .end local v1    # "imsHandle":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 3

    .line 796
    const-string v0, "onSubscriptionsChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbba8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 799
    .local v0, "n1":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v2, 0xdbbab

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 801
    .local v1, "n2":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 802
    :cond_0
    const v2, 0x927c1

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 804
    :cond_1
    return-void
.end method

.method public putRequest(Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 787
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 788
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    if-nez v0, :cond_0

    .line 789
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 791
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request already exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 793
    :goto_0
    return-void
.end method

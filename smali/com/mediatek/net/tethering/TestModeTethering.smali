.class public Lcom/mediatek/net/tethering/TestModeTethering;
.super Ljava/lang/Object;
.source "TestModeTethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_DATA_ALERT:Ljava/lang/String; = "com.mediatek.intent.action.IGNORE_DATA_USAGE_ALERT"

.field private static final AUTO_TETHERING_INTENT:Ljava/lang/String; = "com.mediatek.intent.action.TETHERING_CHANGED"

.field private static final DISABLE_DATA_ALERT_BYTES:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "MCSS-Tethering"

.field private static sIsAutoTethering:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field mTethering:Landroid/net/TetheringManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    nop

    .line 49
    const-string v0, "persist.vendor.net.tethering"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/net/tethering/TestModeTethering;->sIsAutoTethering:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mediatek/net/tethering/TestModeTethering;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MCSS-Tethering"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/net/tethering/TestModeTethering;->mHandlerThread:Landroid/os/HandlerThread;

    .line 59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/net/tethering/TestModeTethering;->mHandler:Landroid/os/Handler;

    .line 61
    const-string v0, "tethering"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iput-object v0, p0, Lcom/mediatek/net/tethering/TestModeTethering;->mTethering:Landroid/net/TetheringManager;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/net/tethering/TestModeTethering;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/net/tethering/TestModeTethering;

    .line 38
    invoke-direct {p0}, Lcom/mediatek/net/tethering/TestModeTethering;->checkEngineerModeSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/net/tethering/TestModeTethering;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/net/tethering/TestModeTethering;

    .line 38
    invoke-direct {p0}, Lcom/mediatek/net/tethering/TestModeTethering;->enableUsbTethering()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/net/tethering/TestModeTethering;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/net/tethering/TestModeTethering;

    .line 38
    invoke-direct {p0}, Lcom/mediatek/net/tethering/TestModeTethering;->disableUsbTethering()V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 38
    sget-boolean v0, Lcom/mediatek/net/tethering/TestModeTethering;->sIsAutoTethering:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/net/tethering/TestModeTethering;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/net/tethering/TestModeTethering;

    .line 38
    iget-object v0, p0, Lcom/mediatek/net/tethering/TestModeTethering;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkEngineerModeSettings()V
    .registers 6

    .line 155
    const-string v0, "MCSS-Tethering"

    .line 156
    const-string v1, "persist.vendor.radio.bgdata.disabled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 157
    .local v1, "isBgdataDisabled":Z
    if-eqz v1, :cond_38

    .line 159
    :try_start_b
    invoke-static {}, Lvendor/mediatek/hardware/netdagent/V1_0/INetdagent;->getService()Lvendor/mediatek/hardware/netdagent/V1_0/INetdagent;

    move-result-object v2

    .line 160
    .local v2, "netagent":Lvendor/mediatek/hardware/netdagent/V1_0/INetdagent;
    if-nez v2, :cond_17

    .line 161
    const-string v3, "netagent is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 164
    :cond_17
    const-string v3, "setIotFirewall"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v3, "netdagent firewall set_nsiot_firewall"

    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/netdagent/V1_0/INetdagent;->dispatchNetdagentCmd(Ljava/lang/String;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_23

    .line 168
    nop

    .end local v2    # "netagent":Lvendor/mediatek/hardware/netdagent/V1_0/INetdagent;
    goto :goto_38

    .line 166
    :catch_23
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_38
    :goto_38
    return-void
.end method

.method private disableUsbTethering()V
    .registers 3

    .line 146
    const-string v0, "MCSS-Tethering"

    const-string v1, "disableUsbTethering"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/mediatek/net/tethering/TestModeTethering;->mTethering:Landroid/net/TetheringManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/TetheringManager;->stopTethering(I)V

    .line 148
    return-void
.end method

.method private enableUsbTethering()V
    .registers 5

    .line 121
    const-string v0, "MCSS-Tethering"

    const-string v1, "enableUsbTethering"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Landroid/net/TetheringManager$TetheringRequest$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/net/TetheringManager$TetheringRequest$Builder;-><init>(I)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/TetheringManager$TetheringRequest$Builder;->setShouldShowEntitlementUi(Z)Landroid/net/TetheringManager$TetheringRequest$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;->build()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v0

    .line 127
    .local v0, "tr":Landroid/net/TetheringManager$TetheringRequest;
    iget-object v1, p0, Lcom/mediatek/net/tethering/TestModeTethering;->mTethering:Landroid/net/TetheringManager;

    new-instance v2, Lcom/mediatek/net/tethering/TestModeTethering$2;

    invoke-direct {v2, p0}, Lcom/mediatek/net/tethering/TestModeTethering$2;-><init>(Lcom/mediatek/net/tethering/TestModeTethering;)V

    new-instance v3, Lcom/mediatek/net/tethering/TestModeTethering$3;

    invoke-direct {v3, p0}, Lcom/mediatek/net/tethering/TestModeTethering$3;-><init>(Lcom/mediatek/net/tethering/TestModeTethering;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    .line 143
    return-void
.end method

.method private setUsbTethering(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 82
    iget-object v0, p0, Lcom/mediatek/net/tethering/TestModeTethering;->mContext:Landroid/content/Context;

    const-string v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 84
    .local v0, "tm":Landroid/net/TetheringManager;
    invoke-virtual {v0, p1}, Landroid/net/TetheringManager;->setUsbTethering(Z)I

    .line 85
    return-void
.end method


# virtual methods
.method public initialize()V
    .registers 5

    .line 65
    const-string v0, "MCSS-Tethering"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/mediatek/net/tethering/TestModeTethering;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/net/tethering/TestModeTethering$1;

    invoke-direct {v1, p0}, Lcom/mediatek/net/tethering/TestModeTethering$1;-><init>(Lcom/mediatek/net/tethering/TestModeTethering;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.TETHERING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    sget-boolean v1, Lcom/mediatek/net/tethering/TestModeTethering;->sIsAutoTethering:Z

    if-eqz v1, :cond_24

    .line 76
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    :cond_24
    const-string v1, "com.mediatek.intent.action.IGNORE_DATA_USAGE_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/mediatek/net/tethering/TestModeTethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;-><init>(Lcom/mediatek/net/tethering/TestModeTethering;Lcom/mediatek/net/tethering/TestModeTethering$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.class public Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;
.super Landroid/os/Handler;
.source "CarrierExpressFwkHandler.java"


# static fields
.field private static final ACTION_CXP_RESET_MODEM:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_reset_modem"

.field private static final ACTION_CXP_SET_VENDOR_PROP:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_set_vendor_prop"

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierExpress"

.field private static sInstance:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;


# instance fields
.field private final mCarrierExpressReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:Lcom/mediatek/internal/telephony/MtkRIL;

.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->sInstance:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 99
    new-instance v0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;-><init>(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCarrierExpressReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    :try_start_d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_13} :catch_14

    .line 76
    goto :goto_2f

    .line 74
    :catch_14
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get default phone from PhoneFactory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarrierExpress"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_2f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default phone is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mContext:Landroid/content/Context;

    .line 79
    const-string v1, "missing Context"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.common.carrierexpress.cxp_reset_modem"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "com.mediatek.common.carrierexpress.cxp_set_vendor_prop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCarrierExpressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    .line 58
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/mediatek/internal/telephony/MtkRIL;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    .line 58
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/mediatek/internal/telephony/MtkRIL;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 58
    iput-object p1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    .line 58
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->startResetModem()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    .line 58
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->needCxpSetSbp()Z

    move-result v0

    return v0
.end method

.method public static init()V
    .registers 4

    .line 90
    const-class v0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    monitor-enter v0

    .line 91
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->sInstance:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    if-nez v1, :cond_f

    .line 92
    new-instance v1, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->sInstance:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    goto :goto_27

    .line 94
    :cond_f
    const-string v1, "CarrierExpress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->sInstance:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_27
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private needCxpSetSbp()Z
    .registers 5

    .line 152
    const-string v0, "persist.vendor.mtk_usp_switch_mode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "simSwitchMode":Ljava/lang/String;
    const-string v2, "ro.vendor.ril.set_sbp_place"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "setSbpPlace":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 155
    :cond_1e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 156
    const/4 v1, 0x0

    return v1

    .line 158
    :cond_26
    const/4 v1, 0x1

    return v1
.end method

.method private startResetModem()V
    .registers 4

    .line 135
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->needCxpSetSbp()Z

    move-result v0

    const-string v1, "CarrierExpress"

    if-nez v0, :cond_e

    .line 136
    const-string v0, "No need reset modem for rild will set sbp"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 139
    :cond_e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_1c

    .line 140
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->restartRILD(Landroid/os/Message;)V

    .line 141
    const-string v0, "Reset modem"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 143
    :cond_1c
    const-string v0, "MtkRIL is null, cannot reset modem"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_21
    return-void
.end method


# virtual methods
.method dispose()V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCarrierExpressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    return-void
.end method

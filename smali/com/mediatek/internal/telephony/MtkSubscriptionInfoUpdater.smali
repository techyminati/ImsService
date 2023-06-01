.class public Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
.super Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.source "MtkSubscriptionInfoUpdater.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_RADIO_AVAILABLE:I = 0x65

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x66

.field private static final EVENT_SIM_MOUNT_CHANGED:I = 0x6a

.field private static final LOG_TAG:Ljava/lang/String; = "MtkSubscriptionInfoUpdater"

.field private static final PROPERTY_FLIGHT_MODE_POWER_OFF_MD:Ljava/lang/String; = "ro.vendor.mtk_flight_mode_power_off_md"

.field private static final PROPERTY_SIM_CARD_ONOFF:Ljava/lang/String; = "ro.vendor.mtk_sim_card_onoff"

.field private static final PROPERTY_SML_MODE:Ljava/lang/String; = "ro.vendor.sim_me_lock_mode"

.field private static final sReadICCID_retry_time:I = 0x3e8


# instance fields
.field private mIsSmlLockMode:Z

.field private mIsUpdateAvailable:[Z

.field private final mLockUpdate:Ljava/lang/Object;

.field private final mMtkReceiver:Landroid/content/BroadcastReceiver;

.field private mOldDensityDpi:I

.field private mReadCurrentIccIdRunnable:Ljava/lang/Runnable;

.field private mReadIccIdCount:I

.field private newSmlDt:[I

.field private newSmlInfo:[I

.field private oldSmlDt:[I

.field private oldSmlInfo:[I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V
    .registers 10
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sc"    # Lcom/android/internal/telephony/SubscriptionController;

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mLockUpdate:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_a0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    .line 101
    new-array v0, v0, [I

    fill-array-data v0, :array_b0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlInfo:[I

    .line 103
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_c0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    .line 104
    new-array v0, v0, [I

    fill-array-data v0, :array_cc

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlDt:[I

    .line 107
    const-string v0, "ro.vendor.sim_me_lock_mode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsSmlLockMode:Z

    .line 110
    sget v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->SUPPORTED_MODEM_COUNT:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    .line 857
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;-><init>(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mMtkReceiver:Landroid/content/BroadcastReceiver;

    .line 881
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;-><init>(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadCurrentIccIdRunnable:Ljava/lang/Runnable;

    .line 123
    const-string v1, "MtkSubscriptionInfoUpdater created"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mOldDensityDpi:I

    .line 127
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "persist.vendor.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OP09"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 130
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    :cond_7c
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 135
    .local v0, "ci":[Lcom/android/internal/telephony/CommandsInterface;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_86
    array-length v3, v0

    if-ge v2, v3, :cond_9f

    .line 136
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 137
    .local v3, "index":Ljava/lang/Integer;
    aget-object v4, v0, v2

    const/16 v5, 0x66

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    aget-object v4, v0, v2

    const/16 v5, 0x65

    invoke-interface {v4, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    .end local v3    # "index":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 140
    .end local v2    # "i":I
    :cond_9f
    return-void

    :array_a0
    .array-data 4
        0x4
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_b0
    .array-data 4
        0x4
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_c0
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_cc
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 85
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 85
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubName(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 85
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mOldDensityDpi:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .line 85
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mOldDensityDpi:I

    return p1
.end method

.method static synthetic access$400()Landroid/content/Context;
    .registers 1

    .line 85
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .registers 1

    .line 85
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Lcom/android/internal/telephony/SubscriptionController;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 85
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    return v0
.end method

.method static synthetic access$704(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 85
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 85
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadCurrentIccIdRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkAllIccIdReady()Z
    .registers 7

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAllIccIdReady +, retry_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 793
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 794
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 795
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    const-string v2, ""

    if-eqz v1, :cond_34

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_35

    :cond_34
    move-object v3, v2

    .line 796
    .local v3, "iccId":Ljava/lang/String;
    :goto_35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_50

    .line 797
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No SIM insert :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 799
    :cond_50
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 800
    const/4 v2, 0x0

    return v2

    .line 802
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccId["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 793
    .end local v1    # "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    .end local v3    # "iccId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 804
    .end local v0    # "i":I
    :cond_7b
    const/4 v0, 0x1

    return v0
.end method

.method private checkIsAvailable()Z
    .registers 5

    .line 845
    const/4 v0, 0x1

    .line 846
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 847
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_34

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsUpdateAvailable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 849
    const/4 v0, 0x0

    .line 850
    goto :goto_37

    .line 846
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 853
    .end local v1    # "i":I
    :cond_37
    :goto_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsAvailable result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 854
    return v0
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 824
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 831
    .local v0, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_35

    .line 832
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_18

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_18

    .line 833
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_35

    .line 834
    :cond_18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_35

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_35

    .line 835
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 836
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_35

    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_35

    .line 837
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 841
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_35
    :goto_35
    return-object v0
.end method

.method private static initIccidStringForNoSim()Ljava/lang/String;
    .registers 1

    .line 1005
    const-string v0, "initIccidStringForNoSim"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1006
    const-string v0, "N/A"

    return-object v0
.end method

.method private isNewSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "decIccId"    # Ljava/lang/String;
    .param p3, "oldIccId"    # Ljava/lang/String;

    .line 773
    const/4 v0, 0x1

    .line 774
    .local v0, "newSim":Z
    if-eqz p1, :cond_17

    if-eqz p3, :cond_17

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_15

    .line 775
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_17

    .line 777
    :cond_15
    const/4 v0, 0x0

    goto :goto_20

    .line 778
    :cond_17
    if-eqz p2, :cond_20

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 779
    const/4 v0, 0x0

    .line 781
    :cond_20
    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNewSim newSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 783
    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 992
    const-string v0, "MtkSubscriptionInfoUpdater"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 996
    const-string v0, "MtkSubscriptionInfoUpdater"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-void
.end method

.method private needUpdateSubscriptionInfo(I)Z
    .registers 9
    .param p1, "phoneId"    # I

    .line 1011
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->areUiccAppsDisabledOnCard(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1012
    const-string v0, "[needUpdateSubscriptionInfo] Should not update for uicc apps is disabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1013
    return v1

    .line 1016
    :cond_d
    const/4 v0, 0x0

    .line 1017
    .local v0, "needUpdate":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 1020
    .local v2, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v2, :cond_1f

    .line 1021
    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_1f
    const-string v3, ""

    .line 1022
    .local v3, "currentIccid":Ljava/lang/String;
    :goto_21
    sget-object v4, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x1

    if-eqz v4, :cond_32

    sget-object v4, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 1023
    :cond_32
    sget-object v4, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aput-object v3, v4, p1

    .line 1024
    const/4 v0, 0x1

    .line 1025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[needUpdateSubscriptionInfo] sIccId["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v6, v6, p1

    .line 1026
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " needUpdate: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  !TextUtils.isEmpty(sIccId["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v6, v6, p1

    .line 1028
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1025
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1031
    :cond_7c
    if-eqz v0, :cond_89

    sget-object v4, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_89

    move v1, v5

    :cond_89
    return v1
.end method

.method private resetSimMountChangeState(I)V
    .registers 20
    .param p1, "slotId"    # I

    .line 927
    move-object/from16 v8, p0

    move/from16 v9, p1

    const/4 v0, 0x0

    .line 928
    .local v0, "needReport":Z
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    iget-object v2, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    aget v2, v2, v9

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 929
    iget-object v1, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlInfo:[I

    iget-object v2, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlDt:[I

    aget v2, v2, v9

    aput v2, v1, v3

    .line 930
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2a

    .line 931
    iget-object v2, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v2, v1

    iget-object v4, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlInfo:[I

    aget v4, v4, v1

    if-eq v2, v4, :cond_27

    .line 932
    const/4 v0, 0x1

    .line 933
    move v10, v0

    goto :goto_2b

    .line 930
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2a
    move v10, v0

    .line 936
    .end local v0    # "needReport":Z
    .end local v1    # "i":I
    .local v10, "needReport":Z
    :goto_2b
    if-eqz v10, :cond_d2

    .line 937
    iget-object v0, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v11, v0, v3

    .line 938
    .local v11, "newDetectedType":I
    const/4 v1, 0x1

    aget v12, v0, v1

    .line 939
    .local v12, "newSimCount":I
    const/4 v1, 0x2

    aget v13, v0, v1

    .line 940
    .local v13, "newValid1":I
    const/4 v1, 0x3

    aget v14, v0, v1

    .line 941
    .local v14, "newValid2":I
    const/4 v1, 0x4

    aget v15, v0, v1

    .line 942
    .local v15, "newValid3":I
    const/4 v1, 0x5

    aget v7, v0, v1

    .line 943
    .local v7, "newValid4":I
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_SIM_SLOT_SIM_MOUNT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 944
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "DETECTED_TYPE"

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 945
    const-string v0, "SML_SIM_COUNT"

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 946
    const-string v0, "SML_SIM1_VALID"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 947
    const-string v0, "SML_SIM2_VALID"

    invoke-virtual {v6, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 948
    const-string v0, "SML_SIM3_VALID"

    invoke-virtual {v6, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 949
    const-string v0, "SML_SIM4_VALID"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    const-string v0, "phone"

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 951
    const-string v0, "slot"

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting ACTION_SIM_SLOT_SIM_MOUNT_CHANGE,  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    aget v2, v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 956
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 957
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v16, v6

    .end local v6    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    move v6, v7

    move/from16 v17, v7

    .end local v7    # "newValid4":I
    .local v17, "newValid4":I
    move/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateOldSmlInfo(IIIIIII)V

    .line 959
    .end local v11    # "newDetectedType":I
    .end local v12    # "newSimCount":I
    .end local v13    # "newValid1":I
    .end local v14    # "newValid2":I
    .end local v15    # "newValid3":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "newValid4":I
    goto :goto_d7

    .line 960
    :cond_d2
    const-string v0, "resetSimMountChangeState no  need report "

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 962
    :goto_d7
    return-void
.end method

.method private updateNewSmlInfo(III)V
    .registers 12
    .param p1, "detectedType"    # I
    .param p2, "simCount"    # I
    .param p3, "slotId"    # I

    .line 965
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    aput p1, v0, p3

    .line 966
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 967
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 968
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->checkValidCard(I)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v0, v4

    .line 969
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->checkValidCard(I)I

    move-result v3

    const/4 v5, 0x3

    aput v3, v0, v5

    .line 970
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->checkValidCard(I)I

    move-result v3

    const/4 v6, 0x4

    aput v3, v0, v6

    .line 971
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->checkValidCard(I)I

    move-result v3

    const/4 v7, 0x5

    aput v3, v0, v7

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateNewSmlInfo]- ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v2, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    aget v2, v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method private updateOldSmlInfo(IIIIIII)V
    .registers 10
    .param p1, "detectedType"    # I
    .param p2, "simCount"    # I
    .param p3, "valid1"    # I
    .param p4, "valid2"    # I
    .param p5, "valid3"    # I
    .param p6, "valid4"    # I
    .param p7, "slotId"    # I

    .line 979
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlDt:[I

    aput p1, v0, p7

    .line 980
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->oldSmlInfo:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 981
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 982
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 983
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 984
    const/4 v1, 0x4

    aput p5, v0, v1

    .line 985
    const/4 v1, 0x5

    aput p6, v0, v1

    .line 986
    return-void
.end method

.method private updateSubName(I)V
    .registers 9
    .param p1, "subId"    # I

    .line 895
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 896
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v0

    .line 897
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_99

    .line 898
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_99

    .line 899
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v1

    .line 901
    .local v1, "spnOverride":Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, "carrierName":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v3

    .line 903
    .local v3, "slotId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSubName, carrierName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 904
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 905
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->containsCarrierEx(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 906
    sget-object v4, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v1, p1, v2, v5, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 908
    .local v4, "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPN found, name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_93

    .line 910
    .end local v4    # "nameToSet":Ljava/lang/String;
    :cond_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CARD "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 911
    .restart local v4    # "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPN not found, set name to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 914
    :goto_93
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, p1, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    .line 918
    .end local v1    # "spnOverride":Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;
    .end local v2    # "carrierName":Ljava/lang/String;
    .end local v3    # "slotId":I
    .end local v4    # "nameToSet":Ljava/lang/String;
    :cond_99
    return-void
.end method

.method private updateSubscriptionInfoIfNeed()V
    .registers 4

    .line 813
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSubscriptionInfoIfNeed] before update sIccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 815
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 816
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->needUpdateSubscriptionInfo(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 817
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(IZ)V

    .line 813
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 820
    .end local v0    # "i":I
    :cond_3c
    return-void
.end method


# virtual methods
.method protected areUiccAppsDisabledOnCard(I)Z
    .registers 8
    .param p1, "phoneId"    # I

    .line 721
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 722
    .local v0, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 723
    const-string v2, "[areUiccAppsDisabledOnCard] MtkUiccController is null."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->loge(Ljava/lang/String;)V

    .line 724
    return v1

    .line 726
    :cond_f
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, "iccid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[areUiccAppsDisabledOnCard] iccid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] is empty."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->loge(Ljava/lang/String;)V

    .line 729
    return v1

    .line 735
    :cond_33
    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 736
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v3

    .line 737
    .local v3, "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4c

    goto :goto_51

    .line 738
    :cond_4c
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    .line 737
    :cond_51
    :goto_51
    return v1

    .line 741
    .end local v3    # "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    :cond_52
    :goto_52
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 743
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 742
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoForIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 744
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[areUiccAppsDisabledOnCard] IccUtils.stripTrailingFs(iccid) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    if-nez v3, :cond_7b

    const-string v5, "null"

    goto :goto_7c

    :cond_7b
    move-object v5, v3

    :goto_7c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 744
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 749
    if-eqz v3, :cond_8f

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v4

    if-nez v4, :cond_8f

    const/4 v1, 0x1

    :cond_8f
    return v1
.end method

.method public dispose()V
    .registers 3

    .line 787
    const-string v0, "[dispose]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 788
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mMtkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 789
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 170
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v0

    .line 172
    .local v0, "index":Ljava/lang/Integer;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_90

    .line 203
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_8e

    .line 195
    :sswitch_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mLockUpdate:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlDt:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v2, v2, v4

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->newSmlInfo:[I

    aget v3, v4, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateNewSmlInfo(III)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->resetSimMountChangeState(I)V

    .line 198
    monitor-exit v1

    .line 199
    goto :goto_8e

    .line 198
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_2f

    throw v2

    .line 175
    :sswitch_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : <EVENT_RADIO_UNAVAILABLE> SIM"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v2, v1, v3

    .line 177
    goto :goto_8e

    .line 180
    :sswitch_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : <EVENT_RADIO_AVAILABLE> SIM"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput-boolean v3, v1, v4

    .line 183
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->checkIsAvailable()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 184
    iput v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I

    .line 185
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 186
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadCurrentIccIdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8e

    .line 188
    :cond_8b
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    .line 205
    :cond_8e
    :goto_8e
    return-void

    nop

    :sswitch_data_90
    .sparse-switch
        0x65 -> :sswitch_54
        0x66 -> :sswitch_32
        0x6a -> :sswitch_10
    .end sparse-switch
.end method

.method protected handleSimLoaded(I)V
    .registers 25
    .param p1, "phoneId"    # I

    .line 366
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimLoaded: phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 371
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 372
    .local v2, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-nez v2, :cond_28

    .line 373
    const-string v3, "handleSimLoaded: IccCard null"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 374
    return-void

    .line 376
    :cond_28
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 377
    .local v3, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v3, :cond_34

    .line 378
    const-string v4, "handleSimLoaded: IccRecords null"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 379
    return-void

    .line 381
    :cond_34
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_44

    .line 382
    const-string v4, "handleSimLoaded: IccID null"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 383
    return-void

    .line 399
    :cond_44
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->needUpdateSubscriptionInfo(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4e

    .line 400
    invoke-virtual {v0, v1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(IZ)V

    .line 404
    :cond_4e
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 405
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexPrivileged(I)Ljava/util/List;

    move-result-object v4

    .line 406
    .local v4, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_1f5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_64

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_1fb

    .line 409
    :cond_64
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_68
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1ee

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 410
    .local v7, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    .line 411
    .local v8, "subId":I
    sget-object v9, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 412
    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 413
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9, v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v10

    .line 415
    .local v10, "operator":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9f

    .line 416
    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v11

    if-ne v8, v11, :cond_99

    .line 417
    sget-object v11, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-static {v11, v10}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 419
    :cond_99
    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11, v10, v8}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    goto :goto_a4

    .line 421
    :cond_9f
    const-string v11, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-static {v11}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 424
    :goto_a4
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v11

    .line 426
    .local v11, "iso":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b4

    .line 427
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v12, v11, v8}, Lcom/android/internal/telephony/SubscriptionController;->setCountryIso(Ljava/lang/String;I)I

    goto :goto_b9

    .line 429
    :cond_b4
    const-string v12, "EVENT_RECORDS_LOADED sim country iso is null"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 432
    :goto_b9
    invoke-virtual {v9, v8}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v12

    .line 433
    .local v12, "msisdn":Ljava/lang/String;
    if-eqz v12, :cond_c4

    .line 434
    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v13, v12, v8}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;I)I

    .line 437
    :cond_c4
    invoke-virtual {v9, v8}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v13

    .line 438
    .local v13, "imsi":Ljava/lang/String;
    if-eqz v13, :cond_d3

    .line 439
    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v14, v13, v8}, Lcom/android/internal/telephony/SubscriptionController;->setImsi(Ljava/lang/String;I)I

    .line 442
    :cond_d3
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getEhplmns()[Ljava/lang/String;

    move-result-object v14

    .line 443
    .local v14, "ehplmns":[Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getPlmnsFromHplmnActRecord()[Ljava/lang/String;

    move-result-object v15

    .line 444
    .local v15, "hplmns":[Ljava/lang/String;
    if-nez v14, :cond_df

    if-eqz v15, :cond_e4

    .line 445
    :cond_df
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, v14, v15, v8}, Lcom/android/internal/telephony/SubscriptionController;->setAssociatedPlmns([Ljava/lang/String;[Ljava/lang/String;I)V

    .line 449
    :cond_e4
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 451
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v16, v2

    .end local v2    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .local v16, "iccCard":Lcom/android/internal/telephony/IccCard;
    invoke-virtual {v9, v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "simCarrierName":Ljava/lang/String;
    move-object/from16 v17, v3

    .end local v3    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .local v17, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v3, 0x2

    if-eqz v5, :cond_18e

    move-object/from16 v18, v4

    .end local v4    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local v18, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v4

    if-eq v4, v3, :cond_187

    .line 455
    invoke-virtual {v9, v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "simNumeric":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v3

    move-object/from16 v19, v6

    sget-object v6, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 457
    move-object/from16 v20, v7

    const/4 v7, 0x1

    .end local v7    # "sub":Landroid/telephony/SubscriptionInfo;
    .local v20, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3, v8, v4, v7, v6}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "simMvnoName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleSimLoaded]- simNumeric: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", simMvnoName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", simCarrierName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 461
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13c

    .line 462
    move-object v6, v3

    .local v6, "nameToSet":Ljava/lang/String;
    goto :goto_15b

    .line 463
    .end local v6    # "nameToSet":Ljava/lang/String;
    :cond_13c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_144

    .line 464
    move-object v6, v2

    .restart local v6    # "nameToSet":Ljava/lang/String;
    goto :goto_15b

    .line 466
    .end local v6    # "nameToSet":Ljava/lang/String;
    :cond_144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CARD "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 468
    .restart local v6    # "nameToSet":Ljava/lang/String;
    :goto_15b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    .end local v2    # "simCarrierName":Ljava/lang/String;
    .local v21, "simCarrierName":Ljava/lang/String;
    const-string v2, "sim name = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nameSource = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 469
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 470
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v7

    .line 469
    invoke-virtual {v2, v6, v8, v7}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    goto :goto_196

    .line 453
    .end local v3    # "simMvnoName":Ljava/lang/String;
    .end local v4    # "simNumeric":Ljava/lang/String;
    .end local v6    # "nameToSet":Ljava/lang/String;
    .end local v20    # "sub":Landroid/telephony/SubscriptionInfo;
    .end local v21    # "simCarrierName":Ljava/lang/String;
    .restart local v2    # "simCarrierName":Ljava/lang/String;
    .restart local v7    # "sub":Landroid/telephony/SubscriptionInfo;
    :cond_187
    move-object/from16 v21, v2

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v2    # "simCarrierName":Ljava/lang/String;
    .end local v7    # "sub":Landroid/telephony/SubscriptionInfo;
    .restart local v20    # "sub":Landroid/telephony/SubscriptionInfo;
    .restart local v21    # "simCarrierName":Ljava/lang/String;
    goto :goto_196

    .end local v18    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v20    # "sub":Landroid/telephony/SubscriptionInfo;
    .end local v21    # "simCarrierName":Ljava/lang/String;
    .restart local v2    # "simCarrierName":Ljava/lang/String;
    .local v4, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v7    # "sub":Landroid/telephony/SubscriptionInfo;
    :cond_18e
    move-object/from16 v21, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 477
    .end local v2    # "simCarrierName":Ljava/lang/String;
    .end local v4    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v7    # "sub":Landroid/telephony/SubscriptionInfo;
    .restart local v18    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v20    # "sub":Landroid/telephony/SubscriptionInfo;
    .restart local v21    # "simCarrierName":Ljava/lang/String;
    :goto_196
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 478
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 479
    .local v2, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curr_subid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x1

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 481
    .local v3, "storedSubId":I
    if-eq v3, v8, :cond_1e1

    .line 483
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 484
    move/from16 v22, v3

    const/4 v3, 0x2

    .end local v3    # "storedSubId":I
    .local v22, "storedSubId":I
    invoke-virtual {v0, v3, v7}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 483
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 488
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 489
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 490
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1e3

    .line 481
    .end local v22    # "storedSubId":I
    .local v3, "storedSubId":I
    :cond_1e1
    move/from16 v22, v3

    .line 492
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "storedSubId":I
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v8    # "subId":I
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    .end local v10    # "operator":Ljava/lang/String;
    .end local v11    # "iso":Ljava/lang/String;
    .end local v12    # "msisdn":Ljava/lang/String;
    .end local v13    # "imsi":Ljava/lang/String;
    .end local v14    # "ehplmns":[Ljava/lang/String;
    .end local v15    # "hplmns":[Ljava/lang/String;
    .end local v20    # "sub":Landroid/telephony/SubscriptionInfo;
    .end local v21    # "simCarrierName":Ljava/lang/String;
    :goto_1e3
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    const/4 v5, 0x1

    goto/16 :goto_68

    .line 409
    .end local v16    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v17    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v18    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local v2, "iccCard":Lcom/android/internal/telephony/IccCard;
    .local v3, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v4    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1ee
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v2    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v3    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v16    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v17    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v18    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_214

    .line 406
    .end local v16    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v17    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v18    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v2    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v3    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v4    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1f5
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 407
    .end local v2    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v3    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v16    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v17    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v18    # "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_1fb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty subinfo for phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "could not update ContentResolver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->loge(Ljava/lang/String;)V

    .line 504
    :goto_214
    const/4 v2, 0x0

    const-string v3, "LOADED"

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 505
    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 506
    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 507
    invoke-virtual {v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionCarrierId(ILjava/lang/String;)V

    .line 512
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->restoreSimSpecificSettingsForPhone(I)V

    .line 513
    invoke-virtual {v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 514
    return-void
.end method

.method protected handleSimLocked(ILjava/lang/String;)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 265
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hot plug in"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aput-object v1, v0, p1

    .line 270
    :cond_32
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 271
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-nez v0, :cond_42

    .line 272
    const-string v1, "handleSimLocked: IccCard null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 273
    return-void

    .line 275
    :cond_42
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 276
    .local v2, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v2, :cond_4e

    .line 277
    const-string v1, "handleSimLocked: IccRecords null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 278
    return-void

    .line 291
    :cond_4e
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 292
    .local v3, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v3, :cond_5f

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_61

    :cond_5f
    const-string v4, ""

    .line 293
    .local v4, "tempIccid":Ljava/lang/String;
    :goto_61
    const-string v5, "ro.vendor.mtk_flight_mode_power_off_md"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 294
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v5

    if-nez v5, :cond_8d

    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v5, v5, p1

    .line 295
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 296
    const-string v5, "All iccids are not ready and iccid changed"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 297
    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aput-object v1, v5, p1

    .line 298
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 301
    :cond_8d
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->needUpdateSubscriptionInfo(I)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 302
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(IZ)V

    .line 306
    :cond_97
    const-string v1, "LOCKED"

    invoke-virtual {p0, p1, v1, p2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    const/16 v5, 0xb

    invoke-virtual {p0, p1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 308
    invoke-static {p2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->getSimStateFromLockedReason(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 309
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionCarrierId(ILjava/lang/String;)V

    .line 310
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 311
    return-void
.end method

.method protected handleSimNotReady(I)V
    .registers 10
    .param p1, "phoneId"    # I

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimNotReady: phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "isFinalState":Z
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 319
    .local v1, "iccCard":Lcom/android/internal/telephony/IccCard;
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->areUiccAppsDisabledOnCard(I)Z

    move-result v2

    .line 326
    .local v2, "uiccAppsDisabled":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v3

    .line 327
    .local v3, "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v6

    if-nez v6, :cond_3b

    :cond_39
    if-eqz v2, :cond_56

    .line 329
    :cond_3b
    if-eqz v2, :cond_4b

    if-eqz v3, :cond_4b

    .line 331
    sget-object v6, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sInactiveIccIds:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p1

    .line 333
    :cond_4b
    const/4 v0, 0x1

    .line 339
    sget-object v6, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    sget-object v7, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    aput-object v7, v6, p1

    .line 340
    invoke-virtual {p0, p1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(IZ)V

    goto :goto_77

    .line 343
    :cond_56
    const-string v6, "ro.vendor.mtk_sim_card_onoff"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 346
    const-string v6, "handleSimNotReady: MtkSimOnOff is enabled."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->needUpdateSubscriptionInfo(I)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 348
    invoke-virtual {p0, p1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(IZ)V

    goto :goto_77

    .line 352
    :cond_73
    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aput-object v4, v5, p1

    .line 355
    :cond_77
    :goto_77
    const-string v5, "NOT_READY"

    invoke-virtual {p0, p1, v5, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 357
    const/16 v4, 0xb

    invoke-virtual {p0, p1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 358
    const/4 v4, 0x6

    invoke-virtual {p0, p1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 359
    if-eqz v0, :cond_8a

    .line 360
    invoke-virtual {p0, p1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 362
    :cond_8a
    return-void
.end method

.method protected handleSimReady(I)V
    .registers 6
    .param p1, "phoneId"    # I

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "cardIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimReady: phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 229
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SIM"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hot plug in"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aput-object v2, v1, p1

    .line 246
    :cond_4b
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->needUpdateSubscriptionInfo(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 247
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(IZ)V

    .line 251
    :cond_55
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->getCardIdFromPhoneId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateEmbeddedSubscriptions(Ljava/util/List;Lcom/android/internal/telephony/SubscriptionInfoUpdater$UpdateEmbeddedSubsCallback;)V

    .line 257
    const-string v1, "READY"

    invoke-virtual {p0, p1, v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    const/16 v1, 0xb

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 259
    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 260
    return-void
.end method

.method protected isAllIccIdQueryDone()Z
    .registers 4

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 157
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_21

    .line 144
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_21
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Iccid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x0

    return v1

    .line 163
    .end local v0    # "i":I
    :cond_3c
    const-string v0, "All IccIds query complete"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$handleSimReady$0$MtkSubscriptionInfoUpdater(Z)V
    .registers 3
    .param p1, "hasChanges"    # Z

    .line 253
    if-eqz p1, :cond_7

    .line 254
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 256
    :cond_7
    return-void
.end method

.method public synthetic lambda$updateSubscriptionInfoByIccId$1$MtkSubscriptionInfoUpdater(Z)V
    .registers 3
    .param p1, "hasChanges"    # Z

    .line 681
    if-eqz p1, :cond_7

    .line 682
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 684
    :cond_7
    const-string v0, "updateSubscriptionInfoByIccId: SubscriptionInfo update complete"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method protected onMultiSimConfigChanged()V
    .registers 5

    .line 209
    invoke-super {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->onMultiSimConfigChanged()V

    .line 211
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 212
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 213
    .local v0, "activeModemCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiSimConfigChangedcase activeModemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SUPPORTED_MODEM_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->SUPPORTED_MODEM_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->loge(Ljava/lang/String;)V

    .line 217
    move v1, v0

    .local v1, "phoneId":I
    :goto_30
    sget v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->SUPPORTED_MODEM_COUNT:I

    if-ge v1, v2, :cond_3c

    .line 218
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsUpdateAvailable:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 221
    .end local v1    # "phoneId":I
    :cond_3c
    return-void
.end method

.method protected setSubInfoInitialized()V
    .registers 2

    .line 754
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIsSubInfoInitialized:Z

    if-nez v0, :cond_11

    .line 755
    const-string v0, "SubInfo Initialized"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIsSubInfoInitialized:Z

    .line 757
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubInfoReady()V

    .line 765
    :cond_11
    return-void
.end method

.method public triggerUpdateInternalSimMountState(I)V
    .registers 4
    .param p1, "slotId"    # I

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerUpdateInternalSimMountState slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 923
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 924
    return-void
.end method

.method protected declared-synchronized updateSubscriptionInfoByIccId(IZ)V
    .registers 21
    .param p1, "phoneId"    # I
    .param p2, "updateEmbeddedSubs"    # Z

    move-object/from16 v1, p0

    move/from16 v8, p1

    monitor-enter p0

    .line 519
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionInfoByIccId:+ Start - phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 520
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSubscriptionInfoByIccId]- invalid phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->loge(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_290

    .line 522
    monitor-exit p0

    return-void

    .line 530
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
    :cond_35
    :try_start_35
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexPrivileged(I)Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    .line 531
    .local v9, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .line 532
    .local v0, "oldIccId":Ljava/lang/String;
    const/4 v10, 0x0

    if-eqz v9, :cond_4d

    .line 533
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object v11, v0

    goto :goto_51

    .line 535
    :cond_4d
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    move-object v0, v2

    move-object v11, v0

    .line 537
    .end local v0    # "oldIccId":Ljava/lang/String;
    .local v11, "oldIccId":Ljava/lang/String;
    :goto_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionInfoByIccId: removing subscription info record: phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oldIccId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {v11}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 544
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/SubscriptionController;->clearSubInfoRecord(I)V

    .line 547
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, v8

    if-eqz v0, :cond_b5

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionInfoByIccId: adding subscription info record: iccid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    .line 549
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 551
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2, v8}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 554
    :cond_b5
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 555
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexPrivileged(I)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    .line 556
    .local v12, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x1

    if-eqz v12, :cond_10c

    .line 557
    const/4 v2, 0x0

    .line 558
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_105

    .line 559
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 560
    .local v4, "temp":Landroid/telephony/SubscriptionInfo;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 568
    .local v5, "value":Landroid/content/ContentValues;
    sget-object v6, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 569
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 568
    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, "msisdn":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_102

    .line 573
    const-string v7, "number"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    sget-object v7, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 575
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v13

    .line 574
    const/4 v14, 0x0

    invoke-virtual {v7, v13, v5, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 576
    const/4 v2, 0x1

    .line 558
    .end local v4    # "temp":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "value":Landroid/content/ContentValues;
    .end local v6    # "msisdn":Ljava/lang/String;
    :cond_102
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 579
    .end local v3    # "i":I
    :cond_105
    if-eqz v2, :cond_10c

    .line 581
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 586
    .end local v2    # "changed":Z
    :cond_10c
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 587
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v13, v2

    .line 591
    .local v13, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v2

    if-eqz v2, :cond_183

    .line 594
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-static {v13, v2}, Lcom/mediatek/internal/telephony/MtkDefaultSmsSimSettings;->setSmsTalkDefaultSim(Ljava/util/List;Landroid/content/Context;)V

    .line 598
    const-string v2, "ro.vendor.mtk_external_sim_support"

    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15f

    const-string v2, "ro.vendor.mtk_non_dsda_rsim_support"

    .line 599
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15f

    .line 601
    const-string v0, "vendor.gsm.prefered.rsim.slot"

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 603
    .local v0, "rsimPhoneId":I
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 604
    .local v2, "rsimSubId":[I
    if-ltz v0, :cond_15f

    .line 605
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-ge v0, v3, :cond_15f

    if-eqz v2, :cond_15f

    array-length v3, v2

    if-eqz v3, :cond_15f

    .line 607
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    aget v4, v2, v10

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 613
    .end local v0    # "rsimPhoneId":I
    .end local v2    # "rsimSubId":[I
    :cond_15f
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 614
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 613
    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 620
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 622
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 621
    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    goto :goto_180

    .line 625
    :cond_17b
    const-string v0, "bypass reset default data sub if inactive"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 627
    :goto_180
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->setSubInfoInitialized()V

    .line 632
    :cond_183
    const/4 v0, -0x1

    .line 633
    .local v0, "detectedType":I
    const/4 v2, 0x0

    .line 634
    .local v2, "decIccId":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v3, v3, v8

    if-eqz v3, :cond_196

    .line 635
    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v14, v2

    goto :goto_197

    .line 634
    :cond_196
    move-object v14, v2

    .line 638
    .end local v2    # "decIccId":Ljava/lang/String;
    .local v14, "decIccId":Ljava/lang/String;
    :goto_197
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    if-eqz v2, :cond_1b4

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b4

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->ICCID_STRING_FOR_NO_SIM:Ljava/lang/String;

    .line 639
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b4

    .line 640
    const/4 v0, 0x2

    move v15, v0

    goto :goto_1c3

    .line 641
    :cond_1b4
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-direct {v1, v2, v14, v11}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c1

    .line 642
    const/4 v0, 0x1

    move v15, v0

    goto :goto_1c3

    .line 644
    :cond_1c1
    const/4 v0, 0x4

    move v15, v0

    .line 647
    .end local v0    # "detectedType":I
    .local v15, "detectedType":I
    :goto_1c3
    if-nez v13, :cond_1c7

    move v0, v10

    goto :goto_1cb

    :cond_1c7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    :goto_1cb
    move v7, v0

    .line 650
    .local v7, "subCount":I
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mIsSmlLockMode:Z

    if-eqz v0, :cond_1de

    .line 651
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mLockUpdate:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1d3
    .catchall {:try_start_35 .. :try_end_1d3} :catchall_290

    .line 652
    :try_start_1d3
    invoke-direct {v1, v15, v7, v8}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateNewSmlInfo(III)V

    .line 653
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->resetSimMountChangeState(I)V

    .line 654
    monitor-exit v2

    goto :goto_1de

    :catchall_1db
    move-exception v0

    monitor-exit v2
    :try_end_1dd
    .catchall {:try_start_1d3 .. :try_end_1dd} :catchall_1db

    :try_start_1dd
    throw v0

    .line 658
    :cond_1de
    :goto_1de
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 659
    .local v6, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v2

    const/4 v0, 0x0

    move-object v3, v6

    move/from16 v4, p1

    move v5, v15

    move-object v10, v6

    .end local v6    # "intent":Landroid/content/Intent;
    .local v10, "intent":Landroid/content/Intent;
    move v6, v7

    move-object/from16 v17, v9

    move v9, v7

    .end local v7    # "subCount":I
    .local v9, "subCount":I
    .local v17, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->putSubinfoRecordUpdatedExtra(Landroid/content/Intent;IIILjava/lang/String;)V

    .line 663
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    move-object v2, v0

    .line 664
    .local v2, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    move-object v3, v0

    .line 665
    .local v3, "uiccSlots":[Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v3, :cond_24f

    if-eqz p2, :cond_24f

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 667
    .local v4, "cardIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v5, v3

    const/4 v6, 0x0

    :goto_20e
    if-ge v6, v5, :cond_244

    aget-object v0, v3, v6

    move-object v7, v0

    .line 668
    .local v7, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v7, :cond_23d

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0
    :try_end_219
    .catchall {:try_start_1dd .. :try_end_219} :catchall_290

    if-eqz v0, :cond_23d

    .line 671
    nop

    .line 672
    :try_start_21c
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v0

    .line 671
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v0
    :try_end_228
    .catch Ljava/lang/NullPointerException; {:try_start_21c .. :try_end_228} :catch_234
    .catchall {:try_start_21c .. :try_end_228} :catchall_290

    .line 673
    .local v0, "cardId":I
    move-object/from16 v16, v2

    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .local v16, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :try_start_22a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_231
    .catch Ljava/lang/NullPointerException; {:try_start_22a .. :try_end_231} :catch_232
    .catchall {:try_start_22a .. :try_end_231} :catchall_290

    .line 676
    .end local v0    # "cardId":I
    goto :goto_23f

    .line 674
    :catch_232
    move-exception v0

    goto :goto_237

    .end local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :catch_234
    move-exception v0

    move-object/from16 v16, v2

    .line 675
    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :goto_237
    :try_start_237
    const-string v2, "updateSubscriptionInfoByIccId uiccSlots.getUiccCard() is null."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_23f

    .line 668
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_23d
    move-object/from16 v16, v2

    .line 667
    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .end local v7    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    .restart local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :goto_23f
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    goto :goto_20e

    .line 680
    .end local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_244
    move-object/from16 v16, v2

    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V

    invoke-virtual {v1, v4, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateEmbeddedSubscriptions(Ljava/util/List;Lcom/android/internal/telephony/SubscriptionInfoUpdater$UpdateEmbeddedSubsCallback;)V

    goto :goto_251

    .line 665
    .end local v4    # "cardIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_24f
    move-object/from16 v16, v2

    .line 693
    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .restart local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :goto_251
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->notifySubscriptionInfoChanged(Landroid/content/Intent;)V

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionInfoByIccId: SubscriptionInfo update complete: phoneId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " detectedType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_28e

    .line 701
    const-string v0, "Notify Subscription all Loaded."

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 702
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyAllSubscriptionLoaded()V
    :try_end_28e
    .catchall {:try_start_237 .. :try_end_28e} :catchall_290

    .line 705
    :cond_28e
    monitor-exit p0

    return-void

    .line 518
    .end local v3    # "uiccSlots":[Lcom/android/internal/telephony/uicc/UiccSlot;
    .end local v9    # "subCount":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "oldIccId":Ljava/lang/String;
    .end local v12    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v13    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v14    # "decIccId":Ljava/lang/String;
    .end local v15    # "detectedType":I
    .end local v16    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    .end local v17    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local p1    # "phoneId":I
    .end local p2    # "updateEmbeddedSubs":Z
    :catchall_290
    move-exception v0

    monitor-exit p0

    throw v0
.end method

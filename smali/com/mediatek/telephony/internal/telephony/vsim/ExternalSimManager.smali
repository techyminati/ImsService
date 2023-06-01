.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;,
        Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$RecoveryRealSimTask;
    }
.end annotation


# static fields
.field private static final AUTO_RETRY_DURATION:I = 0x7d0

.field private static final ENG:Z

.field private static final EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0x2

.field private static final EVENT_VSIM_INDICATION:I = 0x1

.field private static final MAX_VSIM_UICC_CMD_LEN:I = 0x10d

.field private static final NO_RESPONSE_STATUS_WORD_BYTE1:B = 0x0t

.field private static final NO_RESPONSE_STATUS_WORD_BYTE2:B = 0x0t

.field private static final NO_RESPONSE_TIMEOUT_DURATION:I = 0x32c8

.field private static final PLATFORM_READY_CATEGORY_RADIO:I = 0x3

.field private static final PLATFORM_READY_CATEGORY_SIM_SWITCH:I = 0x2

.field private static PLUG_IN_AUTO_RETRY:Z = false

.field private static final PLUG_IN_AUTO_RETRY_TIMEOUT:I = 0x9c40

.field private static final PREFERED_AKA_SIM_SLOT:Ljava/lang/String; = "vendor.gsm.prefered.aka.sim.slot"

.field private static final PREFERED_RSIM_SLOT:Ljava/lang/String; = "vendor.gsm.prefered.rsim.slot"

.field static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final RECOVERY_TO_REAL_SIM_TIMEOUT:I = 0x493e0

.field private static final SET_CAPABILITY_DONE:I = 0x2

.field private static final SET_CAPABILITY_FAILED:I = 0x3

.field private static final SET_CAPABILITY_NONE:I = 0x0

.field private static final SET_CAPABILITY_ONGOING:I = 0x1

.field private static final SIM_STATE_RETRY_DURATION:I = 0x4e20

.field private static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "ExternalSimMgr"

.field private static final TRY_RESET_MODEM_DURATION:I = 0x7d0

.field private static sInstance:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

.field private static sPreferedAkaSlot:I

.field private static sPreferedRsimSlot:I


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

.field private mIndHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mLockForEventReq:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecoveryTimer:Ljava/util/Timer;

.field private mSetCapabilityDone:I

.field private mUserMainPhoneId:I

.field private mUserRadioOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 111
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->ENG:Z

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->PLUG_IN_AUTO_RETRY:Z

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 178
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 185
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I

    .line 186
    sput v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    .line 150
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mContext:Landroid/content/Context;

    .line 151
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 152
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mIndHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    .line 153
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLockForEventReq:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I

    .line 173
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserMainPhoneId:I

    .line 176
    iput-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserRadioOn:Z

    .line 282
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    const-string v0, "ExternalSimMgr"

    const-string v1, "construtor 0 parameter is called - done"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    .line 150
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mContext:Landroid/content/Context;

    .line 151
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 152
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mIndHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    .line 153
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLockForEventReq:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I

    .line 173
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserMainPhoneId:I

    .line 176
    iput-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserRadioOn:Z

    .line 282
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    const-string v1, "ExternalSimMgr"

    const-string v2, "construtor 1 parameter is called - start"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->initVsimConfiguration()V

    .line 202
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->startRecoveryTimer()V

    .line 204
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mContext:Landroid/content/Context;

    .line 205
    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    .line 220
    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$1;->start()V

    .line 222
    new-instance v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    .line 236
    invoke-virtual {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;->start()V

    .line 240
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v3, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    const-string v0, "construtor is called - end"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 110
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 110
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 110
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mIndHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    .line 110
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mIndHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    return-object p1
.end method

.method static synthetic access$1200(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 110
    invoke-static {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->truncateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .line 110
    sget-boolean v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->ENG:Z

    return v0
.end method

.method static synthetic access$1900()I
    .registers 1

    .line 110
    sget v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 110
    sput p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I

    return p0
.end method

.method static synthetic access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 110
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 110
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;[Lcom/android/internal/telephony/CommandsInterface;)[Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 110
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 110
    iget-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserRadioOn:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mUserRadioOn:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # I

    .line 110
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->waitRildSetDisabledProperty(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # I

    .line 110
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendExternalSimConnectedEvent(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 110
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p1, "x1"    # I

    .line 110
    iput p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 110
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 110
    invoke-direct {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendCapabilityDoneEvent()V

    return-void
.end method

.method static synthetic access$800()I
    .registers 1

    .line 110
    sget v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I

    return v0
.end method

.method static synthetic access$802(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 110
    sput p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I

    return p0
.end method

.method private static getITelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    .registers 1

    .line 264
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferedRsimSlot()I
    .registers 1

    .line 381
    sget v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I

    return v0
.end method

.method public static isAnyVsimEnabled()Z
    .registers 8

    .line 388
    const-string v0, "ro.vendor.mtk_external_sim_only_slots"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 389
    .local v0, "vsimOnly":I
    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 390
    return v2

    .line 392
    :cond_b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    if-ge v3, v4, :cond_4a

    .line 393
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v4, "vendor.gsm.external.sim.enabled"

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "enable":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v6, "vendor.gsm.external.sim.inserted"

    invoke-static {v3, v6, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, "inserted":Ljava/lang/String;
    if-eqz v4, :cond_47

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_47

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_47

    if-eqz v6, :cond_47

    .line 398
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_47

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 399
    return v2

    .line 392
    .end local v4    # "enable":Ljava/lang/String;
    .end local v6    # "inserted":Ljava/lang/String;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 402
    .end local v3    # "i":I
    :cond_4a
    return v1
.end method

.method public static isNonDsdaRemoteSimSupport()Z
    .registers 3

    .line 358
    nop

    .line 359
    const-string v0, "ro.vendor.mtk_non_dsda_rsim_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    .line 360
    return v2

    .line 363
    :cond_c
    return v1
.end method

.method public static isSupportVsimHotPlugOut()Z
    .registers 4

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 368
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v1, "vendor.gsm.modem.vsim.capability"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "capability":Ljava/lang/String;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 371
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_2e

    .line 373
    const/4 v2, 0x1

    return v2

    .line 367
    .end local v1    # "capability":Ljava/lang/String;
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    .end local v0    # "i":I
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 249
    sget-object v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    if-nez v0, :cond_b

    .line 250
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 253
    :cond_b
    sget-object v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sInstance:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    return-object v0
.end method

.method private sendCapabilityDoneEvent()V
    .registers 5

    .line 268
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/4 v1, 0x0

    const/16 v2, 0x7d2

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 273
    .local v0, "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 274
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 275
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    const-string v2, "ExternalSimMgr"

    const-string v3, "sendCapabilityDoneEvent...."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method private sendExternalSimConnectedEvent(I)V
    .registers 6
    .param p1, "connected"    # I

    .line 514
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 519
    .local v0, "connectedEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 521
    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 523
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 524
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 525
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendExternalSimConnectedEvent connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalSimMgr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void
.end method

.method private static truncateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "original"    # Ljava/lang/String;

    .line 257
    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    goto :goto_2f

    .line 260
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :cond_2f
    :goto_2f
    return-object p0
.end method

.method private waitRildSetDisabledProperty(I)V
    .registers 7
    .param p1, "slotId"    # I

    .line 531
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v0, "vendor.gsm.external.sim.enabled"

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, "enabled":Ljava/lang/String;
    :goto_b
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 535
    const-wide/16 v3, 0x64

    :try_start_1b
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 538
    goto :goto_23

    .line 536
    :catch_1f
    move-exception v3

    .line 537
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 539
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_23
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 542
    :cond_2b
    return-void
.end method


# virtual methods
.method public disableAllVsimWithResetModem()V
    .registers 4

    .line 479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 480
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->waitRildSetDisabledProperty(I)V

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 483
    .end local v0    # "i":I
    :cond_11
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    if-eqz v0, :cond_19

    .line 484
    const/4 v1, 0x0

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->retryIfRadioUnavailable(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I
    invoke-static {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I

    .line 488
    :cond_19
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 491
    .local v0, "uiccCtrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->resetRadioForVsim()V

    .line 492
    const-string v1, "ExternalSimMgr"

    const-string v2, "disableAllVsimWithResetModem..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void
.end method

.method public finalizeService([B)Z
    .registers 5
    .param p1, "userData"    # [B

    .line 339
    const-string v0, "ExternalSimMgr"

    const-string v1, "finalizeService() - start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v1, "ro.vendor.mtk_external_sim_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_16

    .line 342
    const-string v1, "initializeService() - mtk_external_sim_support didn\'t support"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v2

    .line 346
    :cond_16
    const-string v1, "ctl.stop"

    const-string v2, "osi"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "finalizeService() - end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public initVsimConfiguration()V
    .registers 3

    .line 353
    const-string v0, "vendor.gsm.prefered.rsim.slot"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I

    .line 354
    const-string v0, "vendor.gsm.prefered.aka.sim.slot"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedAkaSlot:I

    .line 355
    return-void
.end method

.method public initializeService([B)Z
    .registers 5
    .param p1, "userData"    # [B

    .line 325
    const-string v0, "ExternalSimMgr"

    const-string v1, "initializeService() - start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v1, "ro.vendor.mtk_external_sim_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_16

    .line 328
    const-string v1, "initializeService() - mtk_external_sim_support didn\'t support"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v2

    .line 332
    :cond_16
    const-string v1, "ctl.start"

    const-string v2, "osi"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "initializeService() - end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public sendDisableEvent(II)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "simType"    # I

    .line 496
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 502
    .local v0, "disableEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 504
    invoke-virtual {v0, p2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 506
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 507
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDisableEvent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalSimMgr"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void
.end method

.method public startRecoveryTimer()V
    .registers 10

    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    const-string v2, "ExternalSimMgr"

    if-ge v0, v1, :cond_84

    .line 407
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v1, "persist.vendor.radio.external.sim"

    const-string v3, "0"

    invoke-static {v0, v1, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "persist":Ljava/lang/String;
    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_80

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 410
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 411
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    if-nez v3, :cond_7f

    .line 412
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    .line 414
    const v3, 0x493e0

    .line 416
    .local v3, "timout":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const v4, 0x493e0

    .line 419
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 416
    const-string v5, "persist.vendor.radio.vsim.timeout"

    invoke-static {v0, v5, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, "userTimeout":Ljava/lang/String;
    :try_start_49
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_56

    .line 423
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_53} :catch_57

    mul-int/lit16 v5, v5, 0x3e8

    move v3, v5

    .line 427
    :cond_56
    goto :goto_5b

    .line 425
    :catch_57
    move-exception v5

    .line 426
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 429
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_5b
    iget-object v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    new-instance v6, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$RecoveryRealSimTask;

    invoke-direct {v6, p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$RecoveryRealSimTask;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    int-to-long v7, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRecoveryTimer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v3    # "timout":I
    .end local v4    # "userTimeout":Ljava/lang/String;
    :cond_7f
    return-void

    .line 406
    .end local v1    # "persist":Ljava/lang/String;
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 436
    .end local v0    # "i":I
    :cond_84
    const-string v0, "No need to startRecoveryTimer since didn\'t set persist VSIM."

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method public stopRecoveryTimer()V
    .registers 3

    .line 440
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    if-eqz v0, :cond_16

    .line 441
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 442
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mRecoveryTimer:Ljava/util/Timer;

    .line 444
    const-string v0, "ExternalSimMgr"

    const-string v1, "stopRecoveryTimer."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_16
    return-void
.end method

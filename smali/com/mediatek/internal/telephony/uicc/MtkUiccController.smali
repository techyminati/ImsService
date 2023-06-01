.class public Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
.super Lcom/android/internal/telephony/uicc/UiccController;
.source "MtkUiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;
    }
.end annotation


# static fields
.field protected static final COMMON_SLOT_PROPERTY:Ljava/lang/String; = "ro.vendor.mtk_sim_hot_swap_common_slot"

.field protected static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field protected static final EVENT_BASE_ID:I = 0x64

.field protected static final EVENT_CARD_DETECTED_IND:I = 0x73

.field protected static final EVENT_COMMON_SLOT_NO_CHANGED:I = 0x6f

.field protected static final EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING:I = 0x69

.field protected static final EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY:I = 0x6a

.field protected static final EVENT_ICCID_CHANGED_IND:I = 0x74

.field protected static final EVENT_INVALID_SIM_DETECTED:I = 0x6d

.field protected static final EVENT_REPOLL_SML_STATE:I = 0x6e

.field protected static final EVENT_RSU_SIM_LOCK_CHANGED:I = 0x75

.field protected static final EVENT_SIM_MISSING:I = 0x67

.field protected static final EVENT_SIM_PLUG_IN:I = 0x6c

.field protected static final EVENT_SIM_PLUG_OUT:I = 0x6b

.field protected static final EVENT_SIM_POWER_CHANGED:I = 0x72

.field protected static final EVENT_SIM_RECOVERY:I = 0x68

.field protected static final EVENT_SML_SLOT_LOCK_INFO_CHANGED:I = 0x70

.field protected static final EVENT_SUPPLY_DEVICE_LOCK_DONE:I = 0x71

.field protected static final EVENT_VIRTUAL_SIM_OFF:I = 0x66

.field protected static final EVENT_VIRTUAL_SIM_ON:I = 0x65

.field private static final LOG_TAG_EX:Ljava/lang/String; = "MtkUiccCtrl"

.field private static final PROPERTY_SIM_CARD_ONOFF:Ljava/lang/String; = "ro.vendor.mtk_sim_card_onoff"

.field private static final PROPERTY_SIM_ONOFF_STATE:[Ljava/lang/String;

.field private static final PROPERTY_SIM_ONOFF_SUPPORT:Ljava/lang/String; = "vendor.ril.sim.onoff.support"

.field private static final RSU_EVENT_LOCK_STATE_CHANGE:I = 0x2

.field private static final SML_FEATURE_NEED_BROADCAST_INTENT:I = 0x1

.field private static final SML_FEATURE_NO_NEED_BROADCAST_INTENT:I


# instance fields
.field private UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

.field private mIccid:[Ljava/lang/String;

.field private mMdStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

.field private mSimPower:[I

.field private mSimPowerExecutingState:[I

.field private prevActiveModemCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 158
    const-string v0, "vendor.ril.sim.onoff.state1"

    const-string v1, "vendor.ril.sim.onoff.state2"

    const-string v2, "vendor.ril.sim.onoff.state3"

    const-string v3, "vendor.ril.sim.onoff.state4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->PROPERTY_SIM_ONOFF_STATE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "c"    # Landroid/content/Context;

    .line 186
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    .line 166
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_194

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    .line 180
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->prevActiveModemCount:I

    .line 187
    const-string v2, "MtkUiccCtrl"

    const-string v3, "Creating MtkUiccController"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    iput v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->prevActiveModemCount:I

    .line 191
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v4, v4

    if-ge v3, v4, :cond_10c

    .line 192
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 194
    .local v4, "index":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 195
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 196
    const-string v5, "ro.crypto.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "unencrypted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7c

    .line 197
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unsupported"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 198
    const-string v5, "ro.crypto.type"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 199
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "trigger_restart_framework"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 200
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result v5

    if-nez v5, :cond_73

    goto :goto_7c

    .line 204
    :cond_73
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    const/4 v6, 0x5

    invoke-interface {v5, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_84

    .line 202
    :cond_7c
    :goto_7c
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    const/4 v6, 0x6

    invoke-interface {v5, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    :goto_84
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x65

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 210
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x66

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 213
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x67

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x68

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 217
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6b

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 218
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6c

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 221
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6f

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x70

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSmlSlotLockInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x75

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForRsuSimLockChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x72

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPower(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x73

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCardDetectedInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x74

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForIccidChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    .end local v4    # "index":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    .line 241
    .end local v3    # "i":I
    :cond_10c
    const-string v3, "ro.vendor.mtk_external_sim_support"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11a

    .line 242
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 246
    :cond_11a
    new-instance v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;Lcom/mediatek/internal/telephony/uicc/MtkUiccController$1;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMdStateReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.MODEM_POWER_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMdStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    .line 252
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    .line 253
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 254
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 257
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    .line 258
    const-string v3, ""

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    :try_start_157
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getRsuSmlFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 263
    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;->makeRsuSml(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RSU-SIMLOCK] Create RsuSml, mCis="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_17c} :catch_17d

    .line 267
    goto :goto_192

    .line 265
    :catch_17d
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RSU-SIMLOCK] e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_192
    return-void

    nop

    :array_194
    .array-data 4
        0x805015b
        0x805015c
        0x805015d
        0x805015e
    .end array-data
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;)[Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method public static getVsimCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    .registers 8
    .param p0, "slotId"    # I

    .line 799
    const-string v0, "vendor.gsm.prefered.rsim.slot"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 800
    .local v0, "rSim":I
    const-string v2, "vendor.gsm.prefered.aka.sim.slot"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 801
    .local v2, "akaSim":I
    const/4 v3, 0x0

    .line 803
    .local v3, "isVsim":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v4, "vendor.gsm.external.sim.inserted"

    const-string v5, "0"

    invoke-static {p0, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "inserted":Ljava/lang/String;
    if-eqz v4, :cond_28

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_28

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 806
    const/4 v3, 0x1

    .line 809
    :cond_28
    if-ne p0, v0, :cond_2f

    if-eqz v3, :cond_2f

    .line 810
    sget-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v1

    .line 813
    :cond_2f
    if-ne p0, v2, :cond_3a

    .line 814
    const/4 v1, 0x1

    if-ne v3, v1, :cond_37

    .line 815
    sget-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v1

    .line 817
    :cond_37
    sget-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v1

    .line 821
    :cond_3a
    if-ne v0, v1, :cond_43

    if-ne v2, v1, :cond_43

    if-eqz v3, :cond_43

    .line 822
    sget-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->LOCAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v1

    .line 825
    :cond_43
    sget-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v1
.end method

.method private onMultiSimConfigChangedEx(I)V
    .registers 9
    .param p1, "newActiveModemCount"    # I

    .line 561
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    array-length v0, v0

    .line 562
    .local v0, "prevActualActiveModemCount":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 565
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    .line 566
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    .line 568
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    .line 569
    move v1, v0

    .local v1, "i":I
    :goto_24
    const-string v2, ""

    const/4 v3, -0x1

    if-ge v1, p1, :cond_3c

    .line 570
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mPhoneIdToSlotId:[I

    aput v3, v4, v1

    .line 571
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    aput v3, v4, v1

    .line 572
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    aput v3, v4, v1

    .line 574
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    aput-object v2, v3, v1

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 580
    .end local v1    # "i":I
    :cond_3c
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->prevActiveModemCount:I

    .restart local v1    # "i":I
    :goto_3e
    if-ge v1, p1, :cond_ce

    .line 581
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 582
    .local v4, "index":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    aput v3, v5, v1

    .line 583
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    aput v3, v5, v1

    .line 585
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    aput-object v2, v5, v1

    .line 588
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x65

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 589
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x66

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 592
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x67

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 593
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x68

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 596
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6b

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 597
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6c

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 600
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6f

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 603
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x70

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSmlSlotLockInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 607
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x72

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPower(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 608
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x73

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCardDetectedInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 610
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x74

    invoke-virtual {v5, p0, v6, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForIccidChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 580
    .end local v4    # "index":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3e

    .line 612
    .end local v1    # "i":I
    :cond_ce
    return-void
.end method

.method private onSmlSlotLoclInfoChaned(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .registers 11
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .line 616
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v1, "onSmlSlotLoclInfoChaned exception"

    const-string v2, "MtkUiccCtrl"

    if-nez v0, :cond_9d

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_e

    goto/16 :goto_9d

    .line 621
    :cond_e
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 622
    .local v0, "info":[I
    array-length v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1a

    .line 623
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void

    .line 627
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSmlSlotLoclInfoChaned, infomation:,lock policy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",lock state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",service capability:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v5, v0, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",sim valid:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    aget v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 633
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v1, "smlLockInfoChanged":Landroid/content/Intent;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 636
    .local v6, "slotId":I
    invoke-static {v1, v6}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 637
    const-string v7, "slot"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    aget v2, v0, v2

    const-string v7, "DEVICE_LOCK_POLICY"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    aget v2, v0, v3

    const-string v3, "DEVICE_LOCK_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    aget v2, v0, v4

    const-string v3, "SIM_SERVICE_CAPABILITY"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    aget v2, v0, v5

    const-string v3, "SIM_VALID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION for mSlotId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 649
    return-void

    .line 617
    .end local v0    # "info":[I
    .end local v1    # "smlLockInfoChanged":Landroid/content/Intent;
    .end local v6    # "slotId":I
    :cond_9d
    :goto_9d
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void
.end method

.method private parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Ljava/lang/String;
    .registers 4
    .param p1, "state"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsePersoType, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 728
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 742
    const-string v0, "UNKNOWN"

    return-object v0

    .line 738
    :pswitch_22
    const-string v0, "SIM"

    return-object v0

    .line 736
    :pswitch_25
    const-string v0, "SERVICE_PROVIDER"

    return-object v0

    .line 734
    :pswitch_28
    const-string v0, "CORPORATE"

    return-object v0

    .line 732
    :pswitch_2b
    const-string v0, "NETWORK_SUBSET"

    return-object v0

    .line 730
    :pswitch_2e
    const-string v0, "NETWORK"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method private parseUnlockDeviceResult(Landroid/os/AsyncResult;)I
    .registers 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 667
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 668
    .local v0, "result":[I
    if-nez v0, :cond_8

    .line 669
    const/4 v1, -0x1

    return v1

    .line 671
    :cond_8
    array-length v1, v0

    .line 672
    .local v1, "length":I
    const/4 v2, -0x1

    .line 673
    .local v2, "attemptsRemaining":I
    if-lez v1, :cond_f

    .line 674
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 676
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseUnlockDeviceResult: attemptsRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 677
    return v2
.end method

.method private removeNotificationVirtual(II)V
    .registers 5
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .line 713
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 715
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    add-int v1, p2, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 716
    return-void
.end method

.method private setNotificationVirtual(II)V
    .registers 9
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNotificationVirtual(): notifyType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 685
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 686
    .local v0, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 687
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 688
    const v1, 0x108008a

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 689
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 690
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 692
    const/4 v2, 0x0

    .line 694
    .local v2, "title":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    const v4, 0x805015a

    const/4 v5, 0x1

    if-le v3, v5, :cond_58

    .line 695
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    aget v5, v5, p1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 696
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_64

    .line 698
    :cond_58
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 699
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 701
    :goto_64
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 702
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, "detail":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 704
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 706
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 707
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 709
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    add-int v5, p2, p1

    invoke-virtual {v4, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 710
    return-void
.end method

.method private triggerUpdateInternalSimMountState(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .line 653
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSubscriptionInfoUpdater()Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 654
    .local v0, "subInfoUpdator":Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
    if-eqz v0, :cond_c

    .line 655
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->triggerUpdateInternalSimMountState(I)V

    goto :goto_11

    .line 657
    :cond_c
    const-string v1, "subInfoUpdate is null."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 659
    :goto_11
    return-void
.end method

.method private updateAbsentFromIccid(Ljava/lang/String;I)V
    .registers 8
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 935
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getSlotIdFromPhoneId(I)I

    move-result v0

    .line 936
    .local v0, "slotIndex":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    .line 938
    .local v1, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_51

    .line 939
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_13

    goto :goto_51

    .line 943
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    aget-object v3, v2, p2

    const-string v4, "N/A"

    if-eqz v3, :cond_30

    aget-object v2, v2, p2

    .line 944
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    aget-object v2, v2, p2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 945
    :cond_2f
    return-void

    .line 948
    :cond_30
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 949
    return-void

    .line 953
    :cond_37
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSubscriptionInfoUpdater()Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 954
    .local v2, "subInfoUpdator":Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
    if-eqz v2, :cond_4b

    .line 955
    const-string v3, "updateAbsentFromIccid"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 956
    const/4 v3, 0x0

    const-string v4, "ABSENT"

    invoke-virtual {v2, v4, v3, p2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_50

    .line 959
    :cond_4b
    const-string v3, "subInfoUpdator is null."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 961
    :goto_50
    return-void

    .line 940
    .end local v2    # "subInfoUpdator":Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
    :cond_51
    :goto_51
    return-void
.end method


# virtual methods
.method public getIccApplicationChannel(II)I
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "family"    # I

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public getIccid(I)Ljava/lang/String;
    .registers 4
    .param p1, "slotId"    # I

    .line 924
    if-ltz p1, :cond_21

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_8

    goto :goto_21

    .line 928
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccid: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 925
    :cond_21
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccid: invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 926
    const-string v0, ""

    return-object v0
.end method

.method public getRsuSml()Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    if-nez v0, :cond_b

    .line 279
    const-string v0, "MtkUiccCtrl"

    const-string v1, "getRsuSml : [RSU-SIMLOCK] Sml not supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mMtkRsuSml:Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;

    return-object v0
.end method

.method public getSimOnOffExecutingState(I)I
    .registers 4
    .param p1, "slotId"    # I

    .line 907
    if-ltz p1, :cond_2d

    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    array-length v0, v0

    if-lt p1, v0, :cond_8

    goto :goto_2d

    .line 911
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimOnOffExecutingState slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSimPowerExecutingState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    aget v0, v0, p1

    return v0

    .line 908
    :cond_2d
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimOnOffExecutingState: invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 909
    const/4 v0, -0x1

    return v0
.end method

.method public getSimOnOffState(I)I
    .registers 8
    .param p1, "slotId"    # I

    .line 866
    const/4 v0, -0x1

    if-ltz p1, :cond_72

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    array-length v1, v1

    if-lt p1, v1, :cond_9

    goto :goto_72

    .line 871
    :cond_9
    const-string v1, "ro.vendor.mtk_sim_card_onoff"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 872
    .local v1, "onoffAPSupport":Z
    const-string v2, "vendor.ril.sim.onoff.support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 873
    .local v2, "onoffMDSupport":Z
    sget-object v3, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->PROPERTY_SIM_ONOFF_STATE:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 874
    .local v3, "onoffState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimOnOffState slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " onoffAPSupport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " onoffMDSupport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mSimPower = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " onoffState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 878
    if-eqz v1, :cond_6f

    if-eqz v2, :cond_6f

    .line 879
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    aget v5, v4, p1

    if-ne v5, v0, :cond_6c

    .line 881
    return v3

    .line 883
    :cond_6c
    aget v0, v4, p1

    return v0

    .line 886
    :cond_6f
    const/16 v0, 0xb

    return v0

    .line 867
    .end local v1    # "onoffAPSupport":Z
    .end local v2    # "onoffMDSupport":Z
    .end local v3    # "onoffState":I
    :cond_72
    :goto_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimOnOffState: invalid slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 868
    return v0
.end method

.method public getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 4
    .param p1, "family"    # I

    .line 288
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 289
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v1

    .line 288
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 301
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .line 304
    .local v1, "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_3ba

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-lt v2, v3, :cond_18

    goto/16 :goto_3ba

    .line 310
    :cond_18
    const/4 v2, 0x0

    .line 311
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_28

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-eqz v3, :cond_28

    .line 312
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 315
    :cond_28
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x65

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v3, :sswitch_data_3e0

    .line 555
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3b8

    .line 535
    :sswitch_36
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 536
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_9a

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_44

    goto :goto_9a

    .line 540
    :cond_44
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 541
    .local v3, "event":[I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RSU_SIM_LOCK_CHANGED eventId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 542
    aget v4, v3, v6

    and-int/lit16 v4, v4, 0xff

    .line 543
    .local v4, "eventId":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3b8

    .line 544
    aget v5, v3, v6

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 545
    .local v5, "lockState":I
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.mediatek.intent.SIM_ME_LOCK_STATE_CHANGE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v6, "rsuInd":Landroid/content/Intent;
    const-string v7, "LOCK_STATE"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Broadcasting intent ACTION_SIM_ME_LOCK_STATE_CHANGED, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", lockState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 550
    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 551
    .end local v5    # "lockState":I
    .end local v6    # "rsuInd":Landroid/content/Intent;
    goto/16 :goto_3b8

    .line 537
    .end local v3    # "event":[I
    .end local v4    # "eventId":I
    :cond_9a
    :goto_9a
    const-string v3, "MtkUiccCtrl"

    const-string v4, "EVENT_RSU_SIM_LOCK_CHANGED exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    monitor-exit v0

    return-void

    .line 516
    :sswitch_a3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 517
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_fa

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_b1

    goto :goto_fa

    .line 521
    :cond_b1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_c3

    .line 522
    const-string v3, "MtkUiccCtrl"

    const-string v4, "EVENT_ICCID_CHANGED_IND index error"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    monitor-exit v0

    return-void

    .line 525
    :cond_c3
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->updateAbsentFromIccid(Ljava/lang/String;I)V

    .line 526
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received EVENT_ICCID_CHANGED_IND, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", iccid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccid:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 531
    goto/16 :goto_3b8

    .line 518
    :cond_fa
    :goto_fa
    const-string v3, "MtkUiccCtrl"

    const-string v4, "EVENT_ICCID_CHANGED_IND exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    monitor-exit v0

    return-void

    .line 483
    :sswitch_103
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mediatek.phone.ACTION_CARD_DETECTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v3, "cardDetectedInd":Landroid/content/Intent;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 485
    .local v4, "slotId":I
    invoke-static {v3, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting intent ACTION_CARD_DETECTED, mSlotId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 490
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 491
    goto/16 :goto_3b8

    .line 457
    .end local v3    # "cardDetectedInd":Landroid/content/Intent;
    .end local v4    # "slotId":I
    :sswitch_12c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 458
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1a8

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_13a

    goto :goto_1a8

    .line 462
    :cond_13a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    array-length v4, v4

    if-lt v3, v4, :cond_14c

    .line 463
    const-string v3, "MtkUiccCtrl"

    const-string v4, "EVENT_SIM_POWER_CHANGED index error"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    monitor-exit v0

    return-void

    .line 467
    :cond_14c
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 468
    .local v3, "state":[I
    array-length v4, v3

    if-ne v4, v5, :cond_172

    .line 469
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v7, v3, v6

    aput v7, v4, v5

    .line 470
    aget v4, v3, v6

    const/16 v5, 0xa

    if-eq v4, v5, :cond_169

    aget v4, v3, v6

    const/16 v5, 0xb

    if-ne v4, v5, :cond_172

    .line 472
    :cond_169
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 477
    :cond_172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received EVENT_SIM_POWER_CHANGED, index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " simPower: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    .line 478
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mSimPowerExecutingState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    .line 479
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 477
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 481
    goto/16 :goto_3b8

    .line 459
    .end local v3    # "state":[I
    :cond_1a8
    :goto_1a8
    const-string v3, "MtkUiccCtrl"

    const-string v4, "EVENT_SIM_POWER_CHANGED exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    monitor-exit v0

    return-void

    .line 444
    :sswitch_1b1
    const-string v3, "handleMessage (EVENT_SUPPLY_DEVICE_LOCK_DONE)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 445
    const/4 v3, -0x1

    .line 446
    .local v3, "attemptsRemaining":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object v2, v4

    .line 447
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1c5

    .line 448
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->parseUnlockDeviceResult(Landroid/os/AsyncResult;)I

    move-result v4

    move v3, v4

    .line 450
    :cond_1c5
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 451
    .local v4, "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 452
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 453
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 454
    goto/16 :goto_3b8

    .line 438
    .end local v3    # "attemptsRemaining":I
    .end local v4    # "response":Landroid/os/Message;
    :sswitch_1d8
    const-string v3, "handleMessage (EVENT_SML_SLOT_LOCK_INFO_CHANGED)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 439
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 440
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->onSmlSlotLoclInfoChaned(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 441
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->triggerUpdateInternalSimMountState(I)V

    .line 442
    goto/16 :goto_3b8

    .line 426
    :sswitch_1ee
    const-string v3, "handleMessage (EVENT_COMMON_SLOT_NO_CHANGED)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 427
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v3, "intentNoChanged":Landroid/content/Intent;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 430
    .local v4, "slotId":I
    invoke-static {v3, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting intent ACTION_COMMON_SLOT_NO_CHANGED for mSlotId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 433
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 434
    goto/16 :goto_3b8

    .line 347
    .end local v3    # "intentNoChanged":Landroid/content/Intent;
    .end local v4    # "slotId":I
    :sswitch_21c
    const-string v3, "Received EVENT_REPOLL_SML_STATE"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 348
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 350
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_22b

    move v6, v5

    :cond_22b
    move v3, v6

    .line 353
    .local v3, "needIntent":Z
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 356
    if-ne v3, v5, :cond_3b8

    .line 357
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 358
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v4, :cond_242

    .line 359
    const-string v5, "UiccCardApplication = null"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 360
    goto/16 :goto_3b8

    .line 362
    :cond_242
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v5, v6, :cond_279

    .line 363
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 364
    .local v5, "lockIntent":Landroid/content/Intent;
    const-string v6, "Broadcast ACTION_UNLOCK_SIM_LOCK"

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 365
    const-string v6, "com.mediatek.phone.ACTION_UNLOCK_SIM_LOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v6, "ss"

    const-string v7, "LOCKED"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v6, "reason"

    .line 369
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Ljava/lang/String;

    move-result-object v7

    .line 368
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 371
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v5    # "lockIntent":Landroid/content/Intent;
    :cond_279
    goto/16 :goto_3b8

    .line 419
    .end local v3    # "needIntent":Z
    :sswitch_27b
    const-string v3, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 420
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 421
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 422
    goto/16 :goto_3b8

    .line 414
    :sswitch_28a
    const-string v3, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 415
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v2, v3

    .line 416
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 417
    goto/16 :goto_3b8

    .line 399
    :sswitch_299
    const-string v3, "handleMessage (EVENT_SIM_RECOVERY)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 400
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    const/16 v4, 0x6a

    .line 401
    invoke-virtual {p0, v4, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 400
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 403
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 404
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.mediatek.phone.ACTION_SIM_RECOVERY_DONE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    goto/16 :goto_3b8

    .line 408
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_2c0
    const-string v3, "handleMessage (EVENT_SIM_MISSING)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 410
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    const/16 v4, 0x69

    .line 411
    invoke-virtual {p0, v4, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 410
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 412
    goto/16 :goto_3b8

    .line 388
    :sswitch_2d8
    const-string v3, "handleMessage (EVENT_VIRTUAL_SIM_OFF)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->removeNotificationVirtual(II)V

    .line 391
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    const-string v4, "AutoAnswer"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 393
    .local v3, "shOff":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 394
    .local v4, "editorOff":Landroid/content/SharedPreferences$Editor;
    const-string v5, "flag"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 395
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 396
    goto/16 :goto_3b8

    .line 378
    .end local v3    # "shOff":Landroid/content/SharedPreferences;
    .end local v4    # "editorOff":Landroid/content/SharedPreferences$Editor;
    :sswitch_2fa
    const-string v3, "handleMessage (EVENT_VIRTUAL_SIM_ON)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->setNotificationVirtual(II)V

    .line 381
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    const-string v4, "AutoAnswer"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 383
    .local v3, "shOn":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 384
    .local v4, "editorOn":Landroid/content/SharedPreferences$Editor;
    const-string v6, "flag"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    goto/16 :goto_3b8

    .line 493
    .end local v3    # "shOn":Landroid/content/SharedPreferences;
    .end local v4    # "editorOn":Landroid/content/SharedPreferences$Editor;
    :sswitch_31c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 494
    .local v3, "activeModemCount":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v4, v4

    iput v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->prevActiveModemCount:I

    .line 495
    move v4, v3

    .local v4, "i":I
    :goto_32e
    iget v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->prevActiveModemCount:I

    if-ge v4, v5, :cond_351

    .line 496
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getSlotIdFromPhoneId(I)I

    move-result v5

    .line 497
    .local v5, "slotIndex":I
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v6

    .line 498
    .local v6, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v6, :cond_33f

    .line 499
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->onRadioStateUnavailable()V

    .line 501
    :cond_33f
    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 495
    .end local v5    # "slotIndex":I
    .end local v6    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    add-int/lit8 v4, v4, 0x1

    goto :goto_32e

    .line 504
    .end local v4    # "i":I
    :cond_351
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPower:[I

    array-length v4, v4

    .restart local v4    # "i":I
    :goto_354
    if-ge v4, v3, :cond_362

    .line 505
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v5

    .line 506
    .local v5, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v5, :cond_35f

    .line 507
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->onRadioStateUnavailable()V

    .line 504
    .end local v5    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    :cond_35f
    add-int/lit8 v4, v4, 0x1

    goto :goto_354

    .line 511
    .end local v4    # "i":I
    :cond_362
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->handleMessage(Landroid/os/Message;)V

    .line 512
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->onMultiSimConfigChangedEx(I)V

    .line 513
    goto :goto_3b8

    .line 336
    .end local v3    # "activeModemCount":I
    :sswitch_369
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->ignoreGetSimStatus()Z

    move-result v3

    if-eqz v3, :cond_384

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlightMode ON, Modem OFF: ignore get sim status, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    goto :goto_3b8

    .line 342
    :cond_384
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->handleMessage(Landroid/os/Message;)V

    .line 344
    goto :goto_3b8

    .line 319
    :sswitch_388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus,index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->ignoreGetSimStatus()Z

    move-result v3

    if-eqz v3, :cond_3a8

    .line 325
    const-string v3, "FlightMode ON, Modem OFF: ignore get sim status"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    goto :goto_3b8

    .line 328
    :cond_3a8
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 557
    .end local v1    # "index":Ljava/lang/Integer;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_3b8
    :goto_3b8
    monitor-exit v0

    .line 558
    return-void

    .line 305
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_3ba
    :goto_3ba
    const-string v2, "MtkUiccCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " received with event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    monitor-exit v0

    return-void

    .line 557
    .end local v1    # "index":Ljava/lang/Integer;
    :catchall_3dc
    move-exception v1

    monitor-exit v0
    :try_end_3de
    .catchall {:try_start_3 .. :try_end_3de} :catchall_3dc

    throw v1

    nop

    :sswitch_data_3e0
    .sparse-switch
        0x1 -> :sswitch_388
        0x5 -> :sswitch_369
        0x6 -> :sswitch_369
        0xa -> :sswitch_31c
        0x65 -> :sswitch_2fa
        0x66 -> :sswitch_2d8
        0x67 -> :sswitch_2c0
        0x68 -> :sswitch_299
        0x69 -> :sswitch_28a
        0x6a -> :sswitch_27b
        0x6e -> :sswitch_21c
        0x6f -> :sswitch_1ee
        0x70 -> :sswitch_1d8
        0x71 -> :sswitch_1b1
        0x72 -> :sswitch_12c
        0x73 -> :sswitch_103
        0x74 -> :sswitch_a3
        0x75 -> :sswitch_36
    .end sparse-switch
.end method

.method public ignoreGetSimStatus()Z
    .registers 5

    .line 758
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 761
    .local v0, "airplaneMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoreGetSimStatus(): airplaneMode - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 762
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 763
    const-string v2, "ignoreGetSimStatus(): return true"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 764
    return v1

    .line 767
    :cond_30
    return v2
.end method

.method public isAllRadioAvailable()Z
    .registers 5

    .line 776
    const/4 v0, 0x1

    .line 777
    .local v0, "isRadioReady":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 778
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    if-ne v2, v3, :cond_18

    .line 779
    const/4 v0, 0x0

    .line 777
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 783
    .end local v1    # "i":I
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAllRadioAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 785
    return v0
.end method

.method protected mtkLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .line 771
    const-string v0, "MtkUiccCtrl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method

.method public repollIccStateForModemSmlChangeFeatrue(IZ)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "needIntent"    # Z

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repollIccStateForModemSmlChangeFeatrue, needIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    .line 749
    goto :goto_1a

    :cond_19
    move v1, v0

    .line 752
    .local v1, "arg1":I
    :goto_1a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    const/16 v3, 0x6e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 753
    return-void
.end method

.method public resetRadioForVsim()V
    .registers 4

    .line 789
    const-string v0, "resetRadioForVsim...resetRadio"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 790
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 791
    .local v0, "mainPhoneId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->restartRILD(Landroid/os/Message;)V

    .line 792
    return-void
.end method

.method public setSimOnOffExecutingState(II)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "state"    # I

    .line 897
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mSimPowerExecutingState:[I

    aput p2, v0, p1

    .line 898
    return-void
.end method

.method public setSimPower(IILandroid/os/Message;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "state"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 857
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2, p3}, Lcom/mediatek/internal/telephony/MtkRIL;->setSimPower(ILandroid/os/Message;)V

    .line 858
    return-void
.end method

.method public supplyDeviceNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 662
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 663
    const/16 v1, 0x71

    invoke-virtual {p0, v1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 662
    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->supplyDeviceNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 664
    return-void
.end method

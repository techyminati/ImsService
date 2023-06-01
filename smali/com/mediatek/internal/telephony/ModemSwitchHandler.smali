.class public Lcom/mediatek/internal/telephony/ModemSwitchHandler;
.super Ljava/lang/Object;
.source "ModemSwitchHandler.java"


# static fields
.field public static final ACTION_MD_TYPE_CHANGE:Ljava/lang/String; = "mediatek.intent.action.ACTION_MD_TYPE_CHANGE"

.field public static final ACTION_MODEM_SWITCH_DONE:Ljava/lang/String; = "mediatek.intent.action.ACTION_MODEM_SWITCH_DONE"

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RIL_CONNECTED:I = 0x1

.field public static final EXTRA_MD_TYPE:Ljava/lang/String; = "mdType"

.field private static final LOG_TAG:Ljava/lang/String; = "WORLDMODE"

.field private static final MD_SWITCH_DEFAULT:I = 0x0

.field private static final MD_SWITCH_RADIO_UNAVAILABLE:I = 0x2

.field private static final MD_SWITCH_RESET_START:I = 0x1

.field public static final MD_TYPE_FDD:I = 0x64

.field public static final MD_TYPE_LTG:I = 0x6

.field public static final MD_TYPE_LWG:I = 0x5

.field public static final MD_TYPE_TDD:I = 0x65

.field public static final MD_TYPE_TG:I = 0x4

.field public static final MD_TYPE_UNKNOWN:I = 0x0

.field public static final MD_TYPE_WG:I = 0x3

.field private static final PROJECT_SIM_NUM:I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

.field private static sContext:Landroid/content/Context;

.field private static sCurrentModemType:I

.field private static sModemSwitchingFlag:I

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static sWorldPhoneHandler:Landroid/os/Handler;

.field private static smCi:[Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 74
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->PROJECT_SIM_NUM:I

    .line 76
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->initActiveModemType()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    .line 77
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 78
    new-array v2, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 79
    sput-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sContext:Landroid/content/Context;

    .line 80
    new-array v1, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 81
    new-array v0, v0, [Lcom/mediatek/internal/telephony/MtkRIL;

    sput-object v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sModemSwitchingFlag:I

    .line 325
    new-instance v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sWorldPhoneHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, "Constructor invoked"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init modem type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    sget v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_46

    .line 103
    sget-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 104
    sget-object v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v2, v0

    .line 105
    sget-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 107
    .end local v0    # "i":I
    :cond_46
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 108
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sContext:Landroid/content/Context;

    goto :goto_5c

    .line 110
    :cond_57
    const-string v0, "DefaultPhone = null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 112
    :goto_5c
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 57
    sget v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sModemSwitchingFlag:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 57
    sput p0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sModemSwitchingFlag:I

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 57
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    .line 57
    sget-object v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .line 57
    sget-object v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sWorldPhoneHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()[Lcom/mediatek/internal/telephony/MtkRIL;
    .registers 1

    .line 57
    sget-object v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    return-object v0
.end method

.method public static getActiveModemType()I
    .registers 2

    .line 293
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_22

    .line 296
    :cond_d
    const/4 v0, 0x0

    .line 298
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, "vendor.ril.active.md"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    .line 300
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getActiveModemType] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 301
    sget v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    return v0
.end method

.method public static initActiveModemType()I
    .registers 2

    .line 305
    nop

    .line 307
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    const-string v1, "vendor.ril.active.md"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initActiveModemType] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 309
    sget v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    return v0
.end method

.method public static isModemTypeSwitching()Z
    .registers 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isModemTypeSwitching]: sModemSwitchingFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sModemSwitchingFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 319
    sget v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sModemSwitchingFlag:I

    if-eqz v0, :cond_1c

    .line 320
    const/4 v0, 0x1

    return v0

    .line 322
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MSH]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORLDMODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method

.method public static modemToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "modemType"    # I

    .line 359
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    .line 360
    const-string v0, "WG"

    .local v0, "modemString":Ljava/lang/String;
    goto :goto_1f

    .line 361
    .end local v0    # "modemString":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x4

    if-ne p0, v0, :cond_c

    .line 362
    const-string v0, "TG"

    .restart local v0    # "modemString":Ljava/lang/String;
    goto :goto_1f

    .line 363
    .end local v0    # "modemString":Ljava/lang/String;
    :cond_c
    const/4 v0, 0x5

    if-ne p0, v0, :cond_12

    .line 364
    const-string v0, "FDD CSFB"

    .restart local v0    # "modemString":Ljava/lang/String;
    goto :goto_1f

    .line 365
    .end local v0    # "modemString":Ljava/lang/String;
    :cond_12
    const/4 v0, 0x6

    if-ne p0, v0, :cond_18

    .line 366
    const-string v0, "TDD CSFB"

    .restart local v0    # "modemString":Ljava/lang/String;
    goto :goto_1f

    .line 367
    .end local v0    # "modemString":Ljava/lang/String;
    :cond_18
    if-nez p0, :cond_1d

    .line 368
    const-string v0, "UNKNOWN"

    .restart local v0    # "modemString":Ljava/lang/String;
    goto :goto_1f

    .line 370
    .end local v0    # "modemString":Ljava/lang/String;
    :cond_1d
    const-string v0, "Invalid modem type"

    .line 373
    .restart local v0    # "modemString":Ljava/lang/String;
    :goto_1f
    return-object v0
.end method

.method public static reloadModem(I)V
    .registers 4
    .param p0, "modemType"    # I

    .line 247
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 248
    .local v0, "majorSim":I
    if-ltz v0, :cond_11

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    .line 249
    sget-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    goto :goto_25

    .line 251
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MajorSIM id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 253
    :goto_25
    return-void
.end method

.method public static reloadModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V
    .registers 4
    .param p0, "ci"    # Lcom/mediatek/internal/telephony/MtkRIL;
    .param p1, "modemType"    # I

    .line 263
    const-string v0, "[reloadModem]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 265
    const-string v0, "Radio unavailable, can not reload modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 266
    return-void

    .line 268
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->reloadModemType(ILandroid/os/Message;)V

    .line 269
    return-void
.end method

.method public static reloadModemCauseType(Lcom/mediatek/internal/telephony/MtkRIL;I)V
    .registers 4
    .param p0, "ci"    # Lcom/mediatek/internal/telephony/MtkRIL;
    .param p1, "causeType"    # I

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[reloadModemCauseType] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->reloadModemType(ILandroid/os/Message;)V

    .line 281
    return-void
.end method

.method public static setActiveModemType(I)V
    .registers 3
    .param p0, "modemType"    # I

    .line 313
    sput p0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setActiveModemType] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method private static setModemType(ILcom/mediatek/internal/telephony/MtkRIL;I)Z
    .registers 7
    .param p0, "isStoreModemType"    # I
    .param p1, "ci"    # Lcom/mediatek/internal/telephony/MtkRIL;
    .param p2, "modemType"    # I

    .line 218
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    .line 219
    const-string v0, "Radio unavailable, can not switch world mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 220
    return v1

    .line 222
    :cond_e
    const/4 v0, 0x3

    if-lt p2, v0, :cond_3f

    const/4 v0, 0x6

    if-gt p2, v0, :cond_3f

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "silent reboot isStroeModemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->reloadModemType(ILandroid/os/Message;)V

    .line 226
    const/4 v1, 0x1

    if-ne v1, p0, :cond_32

    .line 227
    invoke-virtual {p1, p2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    .line 229
    :cond_32
    const/16 v2, 0xa

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {p1, v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 231
    invoke-virtual {p1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->restartRILD(Landroid/os/Message;)V

    .line 236
    return v1

    .line 233
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid modemType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 234
    return v1
.end method

.method public static switchModem(I)V
    .registers 4
    .param p0, "modemType"    # I

    .line 122
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 123
    .local v0, "protocolSim":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocolSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 124
    if-ltz v0, :cond_25

    const/4 v1, 0x3

    if-gt v0, v1, :cond_25

    .line 125
    sget-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    goto :goto_2a

    .line 127
    :cond_25
    const-string v1, "switchModem protocolSim is invalid"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 129
    :goto_2a
    return-void
.end method

.method public static switchModem(II)V
    .registers 5
    .param p0, "isStoreModemType"    # I
    .param p1, "modemType"    # I

    .line 141
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 142
    .local v0, "protocolSim":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocolSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 143
    if-ltz v0, :cond_25

    const/4 v1, 0x3

    if-gt v0, v1, :cond_25

    .line 144
    sget-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v0

    invoke-static {p0, v1, p1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(ILcom/mediatek/internal/telephony/MtkRIL;I)V

    goto :goto_2a

    .line 146
    :cond_25
    const-string v1, "switchModem protocolSim is invalid"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 148
    :goto_2a
    return-void
.end method

.method public static switchModem(ILcom/mediatek/internal/telephony/MtkRIL;I)V
    .registers 7
    .param p0, "isStoreModemType"    # I
    .param p1, "ci"    # Lcom/mediatek/internal/telephony/MtkRIL;
    .param p2, "modemType"    # I

    .line 176
    const-string v0, "[switchModem]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 178
    const-string v0, "Radio unavailable, can not switch modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 179
    return-void

    .line 182
    :cond_12
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCurrentModemType:I

    .line 184
    if-ne p2, v0, :cond_3e

    .line 185
    const/4 v0, 0x3

    if-ne p2, v0, :cond_23

    .line 186
    const-string v0, "Already in WG modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_3d

    .line 187
    :cond_23
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2c

    .line 188
    const-string v0, "Already in TG modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_3d

    .line 189
    :cond_2c
    const/4 v0, 0x5

    if-ne p2, v0, :cond_35

    .line 190
    const-string v0, "Already in FDD CSFB modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_3d

    .line 191
    :cond_35
    const/4 v0, 0x6

    if-ne p2, v0, :cond_3d

    .line 192
    const-string v0, "Already in TDD CSFB modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 194
    :cond_3d
    :goto_3d
    return-void

    .line 197
    :cond_3e
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sModemSwitchingFlag:I

    .line 198
    sget-object v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sWorldPhoneHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    sget-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sWorldPhoneHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->setModemType(ILcom/mediatek/internal/telephony/MtkRIL;I)Z

    .line 203
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->setActiveModemType(I)V

    .line 206
    const-string v0, "Broadcast intent ACTION_MD_TYPE_CHANGE"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mediatek.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mdType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    sget-object v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method public static switchModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V
    .registers 3
    .param p0, "ci"    # Lcom/mediatek/internal/telephony/MtkRIL;
    .param p1, "modemType"    # I

    .line 160
    const-string v0, "[switchModem] need store modem type"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(ILcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 162
    return-void
.end method

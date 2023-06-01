.class public Lcom/mediatek/internal/telephony/worldphone/WorldMode;
.super Landroid/os/Handler;
.source "WorldMode.java"


# static fields
.field static final ACTION_ADB_SWITCH_WORLD_MODE:Ljava/lang/String; = "android.intent.action.ACTION_ADB_SWITCH_WORLD_MODE"

.field public static final ACTION_WORLD_MODE_CHANGED:Ljava/lang/String; = "mediatek.intent.action.ACTION_WORLD_MODE_CHANGED"

.field static final EVENT_RADIO_ON_1:I = 0x1

.field static final EVENT_RADIO_ON_2:I = 0x2

.field static final EVENT_RADIO_ON_3:I = 0x3

.field static final EVENT_RADIO_ON_4:I = 0x4

.field static final EXTRA_WORLDMODE:Ljava/lang/String; = "worldMode"

.field public static final EXTRA_WORLD_MODE_CHANGE_STATE:Ljava/lang/String; = "worldModeState"

.field private static final LOG_TAG:Ljava/lang/String; = "WORLDMODE"

.field public static final MASK_CDMA:I = 0x20

.field public static final MASK_GSM:I = 0x1

.field public static final MASK_LTEFDD:I = 0x10

.field public static final MASK_LTETDD:I = 0x8

.field public static final MASK_TDSCDMA:I = 0x2

.field public static final MASK_WCDMA:I = 0x4

.field public static final MD_WM_CHANGED_END:I = 0x1

.field public static final MD_WM_CHANGED_START:I = 0x0

.field public static final MD_WM_CHANGED_UNKNOWN:I = -0x1

.field public static final MD_WORLD_MODE_LCTG:I = 0x10

.field public static final MD_WORLD_MODE_LFCTG:I = 0x15

.field public static final MD_WORLD_MODE_LFTG:I = 0x14

.field public static final MD_WORLD_MODE_LFWCG:I = 0xf

.field public static final MD_WORLD_MODE_LFWG:I = 0xe

.field public static final MD_WORLD_MODE_LTCTG:I = 0x11

.field public static final MD_WORLD_MODE_LTG:I = 0x8

.field public static final MD_WORLD_MODE_LTTG:I = 0xd

.field public static final MD_WORLD_MODE_LTWCG:I = 0x13

.field public static final MD_WORLD_MODE_LTWG:I = 0x12

.field public static final MD_WORLD_MODE_LWCG:I = 0xb

.field public static final MD_WORLD_MODE_LWCTG:I = 0xc

.field public static final MD_WORLD_MODE_LWG:I = 0x9

.field public static final MD_WORLD_MODE_LWTG:I = 0xa

.field public static final MD_WORLD_MODE_UNKNOWN:I = 0x0

.field private static final PROJECT_SIM_NUM:I

.field static final WORLD_MODE_RESULT_ERROR:I = 0x65

.field static final WORLD_MODE_RESULT_SUCCESS:I = 0x64

.field static final WORLD_MODE_RESULT_WM_ID_NOT_SUPPORT:I = 0x66

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sActiveWorldMode:I

.field private static sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

.field private static sContext:Landroid/content/Context;

.field private static sCurrentWorldMode:I

.field private static sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static sSwitchingState:Z

.field private static sUpdateSwitchingFlag:I

.field private static smCi:[Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field private final mWorldModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 114
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    .line 115
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 116
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActiveWorldMode:I

    .line 117
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    .line 118
    const/4 v2, 0x0

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 119
    new-array v3, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 120
    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    .line 121
    new-array v2, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 122
    new-array v0, v0, [Lcom/mediatek/internal/telephony/MtkRIL;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    .line 123
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 161
    new-instance v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldMode;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructor Init world mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "sSwitchingState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_5a

    .line 130
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 131
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v2, v0

    .line 132
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    aput-object v2, v1, v0

    .line 133
    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 136
    .end local v0    # "i":I
    :cond_5a
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "mediatek.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_ADB_SWITCH_WORLD_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 140
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    goto :goto_7c

    .line 142
    :cond_77
    const-string v1, "DefaultPhone = null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 144
    :goto_7c
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method public static WorldModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "worldMode"    # I

    .line 541
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 542
    const-string v0, "uTLG"

    .local v0, "worldModeString":Ljava/lang/String;
    goto/16 :goto_65

    .line 543
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_f

    .line 544
    const-string v0, "uLWG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 545
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_f
    const/16 v0, 0xa

    if-ne p0, v0, :cond_16

    .line 546
    const-string v0, "uLWTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 547
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_16
    const/16 v0, 0xb

    if-ne p0, v0, :cond_1d

    .line 548
    const-string v0, "uLWCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 549
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_1d
    const/16 v0, 0xc

    if-ne p0, v0, :cond_24

    .line 550
    const-string v0, "uLWTCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 551
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_24
    const/16 v0, 0xd

    if-ne p0, v0, :cond_2b

    .line 552
    const-string v0, "LtTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 553
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_2b
    const/16 v0, 0xe

    if-ne p0, v0, :cond_32

    .line 554
    const-string v0, "LfWG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 555
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_32
    const/16 v0, 0xf

    if-ne p0, v0, :cond_39

    .line 556
    const-string v0, "uLfWCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 557
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_39
    const/16 v0, 0x10

    if-ne p0, v0, :cond_40

    .line 558
    const-string v0, "uLCTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 559
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_40
    const/16 v0, 0x11

    if-ne p0, v0, :cond_47

    .line 560
    const-string v0, "uLtCTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 561
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_47
    const/16 v0, 0x12

    if-ne p0, v0, :cond_4e

    .line 562
    const-string v0, "uLtWG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 563
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_4e
    const/16 v0, 0x13

    if-ne p0, v0, :cond_55

    .line 564
    const-string v0, "uLtWCG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 565
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_55
    const/16 v0, 0x14

    if-ne p0, v0, :cond_5c

    .line 566
    const-string v0, "uLfTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 567
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_5c
    const/16 v0, 0x15

    if-ne p0, v0, :cond_63

    .line 568
    const-string v0, "uLfCTG"

    .restart local v0    # "worldModeString":Ljava/lang/String;
    goto :goto_65

    .line 570
    .end local v0    # "worldModeString":Ljava/lang/String;
    :cond_63
    const-string v0, "Invalid world mode"

    .line 573
    .restart local v0    # "worldModeString":Ljava/lang/String;
    :goto_65
    return-object v0
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 55
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 55
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return p0
.end method

.method static synthetic access$200()I
    .registers 1

    .line 55
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v0

    return v0
.end method

.method private static checkWmCapability(II)Z
    .registers 7
    .param p0, "worldMode"    # I
    .param p1, "bnadMode"    # I

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "iRat":I
    const/16 v1, 0x8

    if-ne p0, v1, :cond_9

    .line 221
    const/16 v0, 0x1b

    goto/16 :goto_63

    .line 225
    :cond_9
    const/16 v1, 0xd

    if-ne p0, v1, :cond_10

    .line 226
    const/16 v0, 0xb

    goto :goto_63

    .line 229
    :cond_10
    const/16 v1, 0xa

    if-ne p0, v1, :cond_17

    .line 230
    const/16 v0, 0x1f

    goto :goto_63

    .line 235
    :cond_17
    const/16 v1, 0xe

    if-ne p0, v1, :cond_1e

    .line 236
    const/16 v0, 0x15

    goto :goto_63

    .line 239
    :cond_1e
    const/16 v1, 0x9

    if-ne p0, v1, :cond_25

    .line 240
    const/16 v0, 0x1d

    goto :goto_63

    .line 244
    :cond_25
    const/16 v1, 0xc

    if-ne p0, v1, :cond_2c

    .line 245
    const/16 v0, 0x3f

    goto :goto_63

    .line 251
    :cond_2c
    const/16 v1, 0x10

    if-ne p0, v1, :cond_33

    .line 252
    const/16 v0, 0x3b

    goto :goto_63

    .line 257
    :cond_33
    const/16 v1, 0x11

    if-ne p0, v1, :cond_3a

    .line 258
    const/16 v0, 0x2b

    goto :goto_63

    .line 262
    :cond_3a
    const/16 v1, 0xf

    if-ne p0, v1, :cond_41

    .line 263
    const/16 v0, 0x35

    goto :goto_63

    .line 267
    :cond_41
    const/16 v1, 0xb

    if-ne p0, v1, :cond_48

    .line 268
    const/16 v0, 0x3d

    goto :goto_63

    .line 273
    :cond_48
    const/16 v1, 0x12

    if-ne p0, v1, :cond_4f

    .line 274
    const/16 v0, 0xd

    goto :goto_63

    .line 277
    :cond_4f
    const/16 v1, 0x13

    if-ne p0, v1, :cond_56

    .line 278
    const/16 v0, 0x2d

    goto :goto_63

    .line 282
    :cond_56
    const/16 v1, 0x14

    if-ne p0, v1, :cond_5d

    .line 283
    const/16 v0, 0x13

    goto :goto_63

    .line 286
    :cond_5d
    const/16 v1, 0x15

    if-ne p0, v1, :cond_63

    .line 287
    const/16 v0, 0x33

    .line 292
    :cond_63
    :goto_63
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_6c

    .line 293
    or-int/lit8 p1, p1, 0x20

    .line 295
    :cond_6c
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v1

    if-ne v2, v1, :cond_80

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq v4, v1, :cond_7c

    and-int/lit8 v1, v0, 0x2

    if-ne v3, v1, :cond_80

    .line 297
    :cond_7c
    or-int/lit8 v1, p1, 0x4

    or-int/lit8 p1, v1, 0x2

    .line 300
    :cond_80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWmCapability: modem="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rat="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bnadMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 304
    and-int v1, v0, p1

    if-ne v0, v1, :cond_af

    and-int/lit8 v1, v0, 0x20

    and-int/lit8 v3, p1, 0x20

    if-ne v1, v3, :cond_af

    .line 306
    return v2

    .line 308
    :cond_af
    const/4 v1, 0x0

    return v1
.end method

.method public static getWorldMode()I
    .registers 2

    .line 458
    nop

    .line 460
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    const-string v1, "vendor.ril.active.md"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWorldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->WorldModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 462
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return v0
.end method

.method public static init()V
    .registers 3

    .line 152
    const-class v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    monitor-enter v0

    .line 153
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    if-nez v1, :cond_f

    .line 154
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    goto :goto_25

    .line 156
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sInstance:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 158
    :goto_25
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public static isWorldModeSwitching()Z
    .registers 1

    .line 532
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    if-eqz v0, :cond_6

    .line 533
    const/4 v0, 0x1

    return v0

    .line 535
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WorldMode]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORLDMODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void
.end method

.method public static resetSwitchingState(I)Z
    .registers 4
    .param p0, "state"    # I

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset sUpdateSwitchingFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 524
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset sSwitchingState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 526
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method public static setWorldMode(I)V
    .registers 4
    .param p0, "worldMode"    # I

    .line 366
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 367
    .local v0, "protocolSim":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setWorldMode]protocolSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 368
    if-ltz v0, :cond_25

    const/4 v1, 0x3

    if-gt v0, v1, :cond_25

    .line 370
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    goto :goto_2d

    .line 372
    :cond_25
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 374
    :goto_2d
    return-void
.end method

.method private static setWorldMode(Lcom/mediatek/internal/telephony/MtkRIL;I)V
    .registers 4
    .param p0, "ci"    # Lcom/mediatek/internal/telephony/MtkRIL;
    .param p1, "worldMode"    # I

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setWorldMode] worldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 396
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    if-ne p1, v0, :cond_a8

    .line 397
    const/16 v0, 0x8

    if-ne p1, v0, :cond_23

    .line 398
    const-string v0, "Already in uTLG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto/16 :goto_a7

    .line 399
    :cond_23
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2e

    .line 400
    const-string v0, "Already in uLWG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto/16 :goto_a7

    .line 401
    :cond_2e
    const/16 v0, 0xa

    if-ne p1, v0, :cond_39

    .line 402
    const-string v0, "Already in uLWTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto/16 :goto_a7

    .line 403
    :cond_39
    const/16 v0, 0xb

    if-ne p1, v0, :cond_44

    .line 404
    const-string v0, "Already in uLWCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto/16 :goto_a7

    .line 405
    :cond_44
    const/16 v0, 0xc

    if-ne p1, v0, :cond_4e

    .line 406
    const-string v0, "Already in uLWTCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_a7

    .line 407
    :cond_4e
    const/16 v0, 0xd

    if-ne p1, v0, :cond_58

    .line 408
    const-string v0, "Already in LtTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_a7

    .line 409
    :cond_58
    const/16 v0, 0xe

    if-ne p1, v0, :cond_62

    .line 410
    const-string v0, "Already in LfWG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_a7

    .line 411
    :cond_62
    const/16 v0, 0xf

    if-ne p1, v0, :cond_6c

    .line 412
    const-string v0, "Already in uLfWCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_a7

    .line 413
    :cond_6c
    const/16 v0, 0x10

    if-ne p1, v0, :cond_76

    .line 414
    const-string v0, "Already in uLCTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_a7

    .line 415
    :cond_76
    const/16 v0, 0x11

    if-ne p1, v0, :cond_80

    .line 416
    const-string v0, "Already in uLtCTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_a7

    .line 417
    :cond_80
    const/16 v0, 0x12

    if-ne p1, v0, :cond_8a

    .line 418
    const-string v0, "Already in uLtWG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_a7

    .line 419
    :cond_8a
    const/16 v0, 0x13

    if-ne p1, v0, :cond_94

    .line 420
    const-string v0, "Already in uLtWCG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_a7

    .line 421
    :cond_94
    const/16 v0, 0x14

    if-ne p1, v0, :cond_9e

    .line 422
    const-string v0, "Already in uLfTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_a7

    .line 423
    :cond_9e
    const/16 v0, 0x15

    if-ne p1, v0, :cond_a7

    .line 424
    const-string v0, "Already in uLfCTG mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 426
    :cond_a7
    :goto_a7
    return-void

    .line 428
    :cond_a8
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b5

    .line 430
    const-string v0, "Radio unavailable, can not switch world mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 431
    return-void

    .line 433
    :cond_b5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->reloadModemType(ILandroid/os/Message;)V

    .line 434
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    .line 435
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->restartRILD(Landroid/os/Message;)V

    .line 436
    return-void
.end method

.method public static setWorldModeWithBand(II)I
    .registers 4
    .param p0, "worldMode"    # I
    .param p1, "bandMode"    # I

    .line 339
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->checkWmCapability(II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWorldModeWithBand: not match, modem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bandMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 341
    const/16 v0, 0x66

    return v0

    .line 343
    :cond_25
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(I)V

    .line 344
    const/16 v0, 0x64

    return v0
.end method

.method private static updateCurrentWorldMode()I
    .registers 2

    .line 485
    nop

    .line 487
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 486
    const-string v1, "vendor.ril.active.md"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCurrentWorldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->WorldModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 489
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    return v0
.end method

.method public static updateSwitchingState(Z)Z
    .registers 4
    .param p0, "isSwitching"    # Z

    .line 501
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_26

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->isWorldModeSwitching()Z

    move-result v2

    if-nez v2, :cond_26

    .line 502
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    add-int/2addr v2, v1

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sUpdateSwitchingFlag+ ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 504
    return v0

    .line 505
    :cond_26
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    if-lez v2, :cond_46

    if-ne v1, p0, :cond_46

    .line 506
    sub-int/2addr v2, v1

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sUpdateSwitchingFlag- ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sUpdateSwitchingFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 508
    return v0

    .line 510
    :cond_46
    sput-boolean p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSwitchingState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sSwitchingState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 512
    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 186
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 187
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 188
    .local v1, "protocolSim":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_60

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    goto :goto_5e

    .line 208
    :pswitch_24
    const-string v2, "handleMessage : <EVENT_RADIO_ON_4>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5e

    .line 210
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    goto :goto_5e

    .line 202
    :pswitch_33
    const-string v2, "handleMessage : <EVENT_RADIO_ON_3>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 203
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5e

    .line 204
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    goto :goto_5e

    .line 196
    :pswitch_42
    const-string v2, "handleMessage : <EVENT_RADIO_ON_2>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 197
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e

    .line 198
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    goto :goto_5e

    .line 190
    :pswitch_51
    const-string v2, "handleMessage : <EVENT_RADIO_ON_1>"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V

    .line 191
    if-nez v1, :cond_5e

    .line 192
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I

    .line 216
    :cond_5e
    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_51
        :pswitch_42
        :pswitch_33
        :pswitch_24
    .end packed-switch
.end method

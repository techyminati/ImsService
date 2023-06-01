.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;
.super Ljava/lang/Object;
.source "WorldPhoneUtil.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final ACTIVE_MD_TYPE_LTG:I = 0x4

.field private static final ACTIVE_MD_TYPE_LWCG:I = 0x5

.field private static final ACTIVE_MD_TYPE_LWG:I = 0x3

.field private static final ACTIVE_MD_TYPE_LfWG:I = 0x7

.field private static final ACTIVE_MD_TYPE_LtTG:I = 0x6

.field private static final ACTIVE_MD_TYPE_TG:I = 0x2

.field private static final ACTIVE_MD_TYPE_UNKNOWN:I = 0x0

.field private static final ACTIVE_MD_TYPE_WG:I = 0x1

.field public static final CARD_TYPE_CSIM:I = 0x8

.field public static final CARD_TYPE_NONE:I = 0x0

.field public static final CARD_TYPE_RUIM:I = 0x4

.field public static final CARD_TYPE_SIM:I = 0x1

.field public static final CARD_TYPE_USIM:I = 0x2

.field public static final CSFB_ON_SLOT:I = -0x1

.field private static final IS_WORLD_MODE_SUPPORT:Z

.field private static final PROJECT_SIM_NUM:I

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field public static final RADIO_TECH_MODE_CSFB:I = 0x2

.field public static final RADIO_TECH_MODE_SVLTE:I = 0x3

.field public static final RADIO_TECH_MODE_UNKNOWN:I = 0x1

.field public static final SVLTE_ON_SLOT_0:I = 0x0

.field public static final SVLTE_ON_SLOT_1:I = 0x1

.field public static final SVLTE_PROP:Ljava/lang/String; = "persist.vendor.radio.svlte_slot"

.field public static final UTRAN_DIVISION_DUPLEX_MODE_FDD:I = 0x1

.field public static final UTRAN_DIVISION_DUPLEX_MODE_TDD:I = 0x2

.field public static final UTRAN_DIVISION_DUPLEX_MODE_UNKNOWN:I

.field private static mC2KWPCardtype:[I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sCardModes:[I

.field private static sContext:Landroid/content/Context;

.field private static sDefultPhone:Lcom/android/internal/telephony/Phone;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field public static sSimSwitching:Z

.field public static sToModem:I

.field private static sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 70
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    .line 71
    nop

    .line 72
    const-string v1, "ro.vendor.mtk_md_world_mode_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_16

    goto :goto_17

    :cond_16
    move v3, v2

    :goto_17
    sput-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_MODE_SUPPORT:Z

    .line 73
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 74
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 76
    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 79
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sToModem:I

    .line 80
    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sSimSwitching:Z

    .line 92
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->initCardModes()[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sCardModes:[I

    .line 98
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v2, "vendor.gsm.ril.fulluicctype.2"

    const-string v3, "vendor.gsm.ril.fulluicctype.3"

    const-string v4, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 110
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->mC2KWPCardtype:[I

    .line 115
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string v0, "Constructor invoked"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 120
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_24

    .line 122
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 124
    .end local v0    # "i":I
    :cond_24
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_2f

    .line 125
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    goto :goto_34

    .line 127
    :cond_2f
    const-string v0, "DefaultPhone = null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 129
    :goto_34
    return-void
.end method

.method public static get3GDivisionDuplexMode()I
    .registers 4

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "duplexMode":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveModemType()I

    move-result v1

    .line 228
    .local v1, "activeMdType":I
    packed-switch v1, :pswitch_data_24

    .line 241
    const/4 v0, 0x0

    goto :goto_e

    .line 238
    :pswitch_a
    const/4 v0, 0x2

    .line 239
    goto :goto_e

    .line 233
    :pswitch_c
    const/4 v0, 0x1

    .line 234
    nop

    .line 244
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get3GDivisionDuplexMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 245
    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private static getActiveModemType()I
    .registers 5

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "modemType":I
    const/4 v1, 0x0

    .line 251
    .local v1, "activeMdType":I
    const/4 v2, -0x1

    .line 252
    .local v2, "activeMode":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 253
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 254
    packed-switch v0, :pswitch_data_6a

    .line 268
    const/4 v1, 0x0

    .line 269
    goto :goto_4c

    .line 265
    :pswitch_12
    const/4 v1, 0x4

    .line 266
    goto :goto_4c

    .line 262
    :pswitch_14
    const/4 v1, 0x3

    .line 263
    goto :goto_4c

    .line 259
    :pswitch_16
    const/4 v1, 0x2

    .line 260
    goto :goto_4c

    .line 256
    :pswitch_18
    const/4 v1, 0x1

    .line 257
    goto :goto_4c

    .line 272
    :cond_1a
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->getWorldMode()I

    move-result v0

    .line 273
    const/4 v3, 0x0

    .line 275
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 274
    const-string v4, "vendor.ril.nw.worldmode.activemode"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 276
    packed-switch v0, :pswitch_data_76

    .line 312
    const/4 v1, 0x0

    goto :goto_4c

    .line 309
    :pswitch_36
    const/4 v1, 0x7

    .line 310
    goto :goto_4c

    .line 306
    :pswitch_38
    const/4 v1, 0x6

    .line 307
    goto :goto_4c

    .line 302
    :pswitch_3a
    const/4 v1, 0x5

    .line 303
    goto :goto_4c

    .line 289
    :pswitch_3c
    if-lez v2, :cond_4c

    .line 290
    const/4 v3, 0x1

    if-ne v2, v3, :cond_43

    .line 292
    const/4 v1, 0x3

    goto :goto_4c

    .line 293
    :cond_43
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    .line 295
    const/4 v1, 0x4

    goto :goto_4c

    .line 285
    :pswitch_48
    const/4 v1, 0x3

    .line 286
    goto :goto_4c

    .line 281
    :pswitch_4a
    const/4 v1, 0x4

    .line 282
    nop

    .line 316
    :cond_4c
    :goto_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveModemType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " activeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 317
    return v1

    nop

    :pswitch_data_6a
    .packed-switch 0x3
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_12
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x8
        :pswitch_4a
        :pswitch_48
        :pswitch_3c
        :pswitch_3a
        :pswitch_3c
        :pswitch_38
        :pswitch_36
        :pswitch_3a
        :pswitch_4a
        :pswitch_38
        :pswitch_48
        :pswitch_3a
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

.method public static getActiveSvlteModeSlotId()I
    .registers 4

    .line 378
    const/4 v0, -0x1

    .line 379
    .local v0, "svlteSlotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v1

    if-nez v1, :cond_d

    .line 380
    const-string v1, "[getActiveSvlteModeSlotId] SVLTE not support, return -1."

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 381
    return v0

    .line 383
    :cond_d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sCardModes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1c

    .line 384
    aget v2, v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 385
    move v0, v1

    .line 383
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 388
    .end local v1    # "i":I
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getActiveSvlteModeSlotId] slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 389
    return v0
.end method

.method public static getC2KWPCardType()[I
    .registers 3

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->mC2KWPCardtype:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2f

    .line 366
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getFullCardType(I)I

    move-result v2

    aput v2, v1, v0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getC2KWPCardType mC2KWPCardtype["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->mC2KWPCardtype:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 369
    .end local v0    # "i":I
    :cond_2f
    return-object v1
.end method

.method private static getFullCardType(I)I
    .registers 7
    .param p0, "slotId"    # I

    .line 342
    if-ltz p0, :cond_73

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_d

    goto :goto_73

    .line 346
    :cond_d
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "cardType":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 349
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    array-length v4, v1

    if-ge v3, v4, :cond_56

    .line 350
    aget-object v4, v1, v3

    const-string v5, "USIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 351
    or-int/lit8 v2, v2, 0x2

    goto :goto_53

    .line 352
    :cond_2d
    aget-object v4, v1, v3

    const-string v5, "SIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 353
    or-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 354
    :cond_3a
    aget-object v4, v1, v3

    const-string v5, "CSIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 355
    or-int/lit8 v2, v2, 0x8

    goto :goto_53

    .line 356
    :cond_47
    aget-object v4, v1, v3

    const-string v5, "RUIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 357
    or-int/lit8 v2, v2, 0x4

    .line 349
    :cond_53
    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 360
    .end local v3    # "i":I
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFullCardType fullType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cardType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 361
    return v2

    .line 343
    .end local v0    # "cardType":Ljava/lang/String;
    .end local v1    # "appType":[Ljava/lang/String;
    .end local v2    # "fullType":I
    :cond_73
    :goto_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFullCardType invalid slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public static getMajorSim()I
    .registers 3

    .line 155
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkProxyController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->isCapabilitySwitching()Z

    move-result v0

    const/16 v1, -0x63

    if-nez v0, :cond_45

    .line 156
    const-string v0, "persist.vendor.radio.simswitch"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "currMajorSim":Ljava/lang/String;
    if-eqz v0, :cond_3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMajorSim]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 161
    :cond_3f
    const-string v2, "[getMajorSim]: fail to get major SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 162
    return v1

    .line 165
    .end local v0    # "currMajorSim":Ljava/lang/String;
    :cond_45
    const-string v0, "[getMajorSim]: radio capability is switching"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 166
    return v1
.end method

.method public static getModemSelectionMode()I
    .registers 2

    .line 171
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 172
    const-string v0, "sContext = null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 173
    return v1

    .line 175
    :cond_b
    const-string v0, "persist.vendor.radio.wm_selectmode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getProjectSimNum()I
    .registers 1

    .line 151
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    return v0
.end method

.method public static getSimLockedState(I)Z
    .registers 2
    .param p0, "simApplicateionState"    # I

    .line 411
    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    const/4 v0, 0x7

    if-eq p0, v0, :cond_11

    if-nez p0, :cond_f

    goto :goto_11

    .line 418
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 416
    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method public static getToModemType()I
    .registers 1

    .line 426
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sToModem:I

    return v0
.end method

.method public static getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;
    .registers 1

    .line 144
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    if-nez v0, :cond_9

    .line 145
    const-string v0, "sWorldPhone is null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 147
    :cond_9
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    return-object v0
.end method

.method private static initCardModes()[I
    .registers 4

    .line 329
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [I

    .line 330
    .local v0, "cardModes":[I
    const-string v1, "persist.vendor.radio.svlte_slot"

    const-string v2, "3,2,2,2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "svlteType":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    array-length v3, v0

    if-ge v2, v3, :cond_2e

    .line 332
    array-length v3, v1

    if-ge v2, v3, :cond_28

    .line 333
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    goto :goto_2b

    .line 335
    :cond_28
    const/4 v3, 0x1

    aput v3, v0, v2

    .line 331
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 338
    .end local v2    # "i":I
    :cond_2e
    return-object v0
.end method

.method public static isC2kSupport()Z
    .registers 1

    .line 402
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isC2kSupported()Z

    move-result v0

    return v0
.end method

.method public static isCdmaLteDcSupport()Z
    .registers 3

    .line 393
    const-string v0, "ro.vendor.mtk_c2k_lte_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 394
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    .line 397
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 395
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method public static isLteSupport()Z
    .registers 1

    .line 183
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isLteFddSupported()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isLteTddSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isSimSwitching()Z
    .registers 1

    .line 430
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sSimSwitching:Z

    return v0
.end method

.method public static isWorldModeSupport()Z
    .registers 1

    .line 212
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_MODE_SUPPORT:Z

    return v0
.end method

.method public static isWorldPhoneSupport()Z
    .registers 1

    .line 179
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isWcdmaSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isTdscdmaSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isWorldPhoneSwitching()Z
    .registers 1

    .line 321
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 322
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->isWorldModeSwitching()Z

    move-result v0

    return v0

    .line 324
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WPP_UTIL]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORLDMODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method public static makeWorldPhoneManager()V
    .registers 1

    .line 132
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 133
    const-string v0, "Factory World mode support"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->init()V

    goto :goto_2c

    .line 135
    :cond_15
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 136
    const-string v0, "Factory World phone support"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->getWorldPhoneInstance()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    goto :goto_2c

    .line 139
    :cond_27
    const-string v0, "Factory World phone not support"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 141
    :goto_2c
    return-void
.end method

.method public static regionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "region"    # I

    .line 188
    packed-switch p0, :pswitch_data_10

    .line 199
    const-string v0, "Invalid Region"

    .local v0, "regionString":Ljava/lang/String;
    goto :goto_f

    .line 196
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_6
    const-string v0, "REGION_FOREIGN"

    .line 197
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_f

    .line 193
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_9
    const-string v0, "REGION_DOMESTIC"

    .line 194
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_f

    .line 190
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_c
    const-string v0, "REGION_UNKNOWN"

    .line 191
    .restart local v0    # "regionString":Ljava/lang/String;
    nop

    .line 202
    :goto_f
    return-object v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static saveToModemType(I)V
    .registers 1
    .param p0, "modemType"    # I

    .line 422
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sToModem:I

    .line 423
    return-void
.end method

.method public static setSimSwitchingFlag(Z)V
    .registers 1
    .param p0, "flag"    # Z

    .line 434
    sput-boolean p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sSimSwitching:Z

    .line 435
    return-void
.end method


# virtual methods
.method public notifyRadioCapabilityChange(I)V
    .registers 2
    .param p1, "capailitySimId"    # I

    .line 209
    return-void
.end method

.method public setModemSelectionMode(II)V
    .registers 3
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .line 206
    return-void
.end method

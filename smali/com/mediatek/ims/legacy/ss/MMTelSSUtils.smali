.class public Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;
.super Ljava/lang/Object;
.source "MMTelSSUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MMTelSSUtils"

.field private static final MODE_SS_CS:Ljava/lang/String; = "Prefer CS"

.field private static final MODE_SS_XCAP:Ljava/lang/String; = "Prefer XCAP"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final PROP_SS_MODE:Ljava/lang/String; = "persist.vendor.radio.ss.mode"

.field private static final SENLOG:Z

.field private static final SS_SERVICE_CLASS_PROP:Ljava/lang/String; = "vendor.gsm.radio.ss.sc"

.field private static final TELDBG:Z

.field private static mSimservs:Lcom/mediatek/simservs/client/SimServs;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 85
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->SENLOG:Z

    .line 86
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    sput-boolean v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->TELDBG:Z

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addXcapRootPort(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "xcapRoot"    # Ljava/lang/String;
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 338
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 340
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 341
    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3b

    .line 342
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 345
    :cond_3b
    invoke-static {p2}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    .line 347
    .local v0, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getPort()I

    move-result v1

    .line 348
    .local v1, "port":I
    if-eqz v1, :cond_59

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 352
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 356
    .end local v0    # "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    .end local v1    # "port":I
    :cond_6a
    return-object p0
.end method

.method public static appendCountryCode(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "dialNumber"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 368
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "currIso":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currIso: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMTelSSUtils"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v1

    .line 373
    .local v1, "countryCode":I
    if-nez v1, :cond_32

    .line 374
    const-string v3, "Country code not found."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-object p0

    .line 378
    :cond_32
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "countryCodeStr":Ljava/lang/String;
    if-eqz p0, :cond_93

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_93

    if-nez v3, :cond_41

    goto :goto_93

    .line 384
    :cond_41
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No need to append country code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-object p0

    .line 388
    :cond_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "dialNumberWithCountryCode":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialNumberWithCountryCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v4

    .line 381
    .end local v4    # "dialNumberWithCountryCode":Ljava/lang/String;
    :cond_93
    :goto_93
    return-object p0
.end method

.method public static getServiceClass()I
    .registers 2

    .line 407
    const-string v0, "vendor.gsm.radio.ss.sc"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSipUriFromXui(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "sXui"    # Ljava/lang/String;

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "sipXui":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "sXuiArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 423
    .local v2, "isContainSipUri":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    array-length v4, v1

    if-ge v3, v4, :cond_29

    .line 424
    aget-object v4, v1, v3

    if-eqz v4, :cond_26

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    aget-object v4, v1, v3

    .line 425
    const-string v5, "sip:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 426
    aget-object v0, v1, v3

    .line 427
    const/4 v2, 0x1

    .line 428
    goto :goto_29

    .line 423
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 431
    .end local v3    # "i":I
    :cond_29
    :goto_29
    if-nez v2, :cond_2e

    .line 432
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 434
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSipUriFromXui: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MMTelSSUtils"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-object v0
.end method

.method private static getSubIdUsingPhoneId(I)I
    .registers 3
    .param p0, "phoneId"    # I

    .line 439
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 440
    .local v0, "values":[I
    if-eqz v0, :cond_e

    array-length v1, v0

    if-gtz v1, :cond_a

    goto :goto_e

    .line 444
    :cond_a
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 441
    :cond_e
    :goto_e
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    return v1
.end method

.method public static getXIntendedId(ILandroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 299
    invoke-static {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getXui(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXcapRootUri(ILandroid/content/Context;)Ljava/lang/String;
    .registers 16
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    .line 155
    .local v0, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/SimServs;->getXcapRoot()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "rootUri":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXcapRootUri():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->SENLOG:Z

    const-string v4, "[hidden]"

    if-nez v3, :cond_1a

    move-object v5, v1

    goto :goto_1b

    :cond_1a
    move-object v5, v4

    :goto_1b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MMTelSSUtils"

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 158
    .local v2, "subId":I
    if-nez v1, :cond_142

    .line 161
    const/4 v6, 0x0

    .line 162
    .local v6, "impi":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v6

    .line 164
    invoke-static {v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->isValidIMPI(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getXcapRootUri():get APP_FAM_IMS and impi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 165
    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v7, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v7, v6}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByImpi(Ljava/lang/String;)V

    goto/16 :goto_125

    .line 169
    :cond_5b
    const/4 v7, 0x0

    .line 170
    .local v7, "mccMnc":Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isCdma4GDualModeCard(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7e

    .line 171
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v8

    .line 172
    invoke-virtual {v8, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v9

    .line 173
    if-eqz v7, :cond_75

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_86

    .line 174
    :cond_75
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_86

    .line 177
    :cond_7e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v7

    .line 180
    :cond_86
    :goto_86
    const-string v8, ""

    .line 181
    .local v8, "mcc":Ljava/lang/String;
    const-string v10, ""

    .line 182
    .local v10, "mnc":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x3

    if-nez v11, :cond_99

    .line 183
    invoke-virtual {v7, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 184
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 187
    :cond_99
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_c6

    .line 188
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 189
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add 0 to mnc ="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_c6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get mccMnc="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " from the IccRecrods"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_125

    .line 194
    const-string v11, "460000"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11c

    const-string v11, "460002"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11c

    .line 195
    const-string v11, "460007"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11c

    const-string v11, "460008"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11c

    .line 196
    const-string v11, "460004"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10e

    goto :goto_11c

    .line 199
    :cond_10e
    sget-object v11, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v7, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 200
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 199
    invoke-virtual {v11, v9, v12}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_125

    .line 197
    :cond_11c
    :goto_11c
    sget-object v9, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    const-string v11, "460"

    const-string v12, "000"

    invoke-virtual {v9, v11, v12}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v7    # "mccMnc":Ljava/lang/String;
    .end local v8    # "mcc":Ljava/lang/String;
    .end local v10    # "mnc":Ljava/lang/String;
    :cond_125
    :goto_125
    sget-object v7, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/SimServs;->getXcapRoot()Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getXcapRoot():rootUri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_138

    move-object v4, v1

    :cond_138
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v6    # "impi":Ljava/lang/String;
    :cond_142
    return-object v1
.end method

.method public static getXui(ILandroid/content/Context;)Ljava/lang/String;
    .registers 14
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 217
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/ims/internal/ImsXuiManager;->getXui(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "sXui":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getXui():sXui from XuiManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMTelSSUtils"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 220
    .local v1, "subId":I
    if-nez v0, :cond_120

    .line 234
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v3

    .line 235
    .local v3, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/SimServs;->getXui()Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getXui():sXui from simSrv="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz v0, :cond_52

    .line 238
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getSipUriFromXui(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {v3, v0}, Lcom/mediatek/simservs/client/SimServs;->setXui(Ljava/lang/String;)V

    .line 240
    return-object v0

    .line 245
    :cond_52
    const-string v4, ""

    .line 246
    .local v4, "sImpu":Ljava/lang/String;
    const/4 v5, 0x0

    .line 247
    .local v5, "impu":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v5

    .line 249
    const/4 v6, 0x0

    if-eqz v5, :cond_8c

    aget-object v7, v5, v6

    if-eqz v7, :cond_8c

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8c

    .line 250
    aget-object v4, v5, v6

    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getXui():sImpu="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v6, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v6, v4}, Lcom/mediatek/simservs/client/SimServs;->setXuiByImpu(Ljava/lang/String;)V

    goto :goto_101

    .line 255
    :cond_8c
    nop

    .line 256
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 257
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getSubIdUsingPhoneId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "sImsi":Ljava/lang/String;
    const-string v9, "getXui():IMS uiccApp is null, try to select USIM uiccApp"

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v9, ""

    .line 262
    .local v9, "mccMnc":Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isCdma4GDualModeCard(I)Z

    move-result v10

    if-eqz v10, :cond_c5

    .line 263
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v10

    .line 264
    invoke-virtual {v10, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;

    move-result-object v10

    aget-object v9, v10, v6

    .line 265
    if-eqz v9, :cond_bc

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_cd

    .line 266
    :cond_bc
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_cd

    .line 269
    :cond_c5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 272
    :cond_cd
    :goto_cd
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getXui():Imsi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mccMnc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_101

    .line 275
    sget-object v10, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    const/4 v11, 0x3

    invoke-virtual {v9, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 276
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 275
    invoke-virtual {v10, v8, v6, v11}, Lcom/mediatek/simservs/client/SimServs;->setXuiByImsiMccMnc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .end local v7    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v8    # "sImsi":Ljava/lang/String;
    .end local v9    # "mccMnc":Ljava/lang/String;
    :cond_101
    :goto_101
    sget-object v6, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/SimServs;->getXui()Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getXui():sXui="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object v0

    .line 286
    .end local v3    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local v4    # "sImpu":Ljava/lang/String;
    .end local v5    # "impu":[Ljava/lang/String;
    :cond_120
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getSipUriFromXui(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0
.end method

.method public static initSimserv(Landroid/content/Context;I)Lcom/mediatek/simservs/client/SimServs;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 98
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    .line 99
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v0

    if-eq v0, p1, :cond_3a

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initSimserv] old PhoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " new PhoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMTelSSUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/SimServs;->resetParameters()V

    .line 103
    sget-object v0, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/SimServs;->setPhoneId(I)V

    .line 106
    :cond_3a
    invoke-static {p0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    .line 108
    .local v0, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isUseHttpProtocolScheme()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/SimServs;->setUseHttpProtocolScheme(Z)V

    .line 109
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getElementContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getElementContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    .line 110
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getElementContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/simservs/client/SimServs;->setElementUpdateContentType(ZLjava/lang/String;)V

    .line 112
    :cond_61
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isHandleError409()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/SimServs;->setHandleError409(Z)V

    .line 113
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isFillCompleteForwardTo()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/SimServs;->setFillCompleteForwardTo(Z)V

    .line 114
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isXcapNsPrefixSS()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/SimServs;->setXcapNSPrefixSS(Z)V

    .line 115
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isQueryWholeSimServ()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/SimServs;->setSimservQueryWhole(Z)V

    .line 116
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isDisableEtag()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/SimServs;->setETagDisable(Z)V

    .line 117
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isAttrNeedQuotationMark()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/SimServs;->setAttrNeedQuotationMark(Z)V

    .line 118
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getAUID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b0

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getAUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b0

    .line 119
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getAUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/SimServs;->setAUID(Ljava/lang/String;)V

    .line 121
    :cond_b0
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getXcapRoot()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c9

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getXcapRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c9

    .line 122
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getXcapRoot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/SimServs;->setXcapRoot(Ljava/lang/String;)V

    .line 125
    :cond_c9
    sget-object v1, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-static {p1, p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getXui(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/SimServs;->setXui(Ljava/lang/String;)V

    .line 127
    invoke-static {p1, p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getXcapRootUri(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "xcapRoot":Ljava/lang/String;
    if-eqz v1, :cond_e7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e7

    .line 129
    sget-object v2, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-static {v1, p1, p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->addXcapRootPort(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/SimServs;->setXcapRoot(Ljava/lang/String;)V

    .line 132
    :cond_e7
    sget-object v2, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-static {p1, p0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getXIntendedId(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/SimServs;->setIntendedId(Ljava/lang/String;)V

    .line 133
    sget-object v2, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v2, p0}, Lcom/mediatek/simservs/client/SimServs;->setContext(Landroid/content/Context;)V

    .line 134
    sget-object v2, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v2, p1}, Lcom/mediatek/simservs/client/SimServs;->setPhoneId(I)V

    .line 136
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getDataKeepAliveTimer()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->setKeepAliveTimer(I)V

    .line 137
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getRequestDataTimer()I

    move-result v2

    if-lez v2, :cond_10e

    .line 138
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getRequestDataTimer()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->setRequestDataTimer(I)V

    .line 140
    :cond_10e
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getDataCoolDownTimer()I

    move-result v2

    if-lez v2, :cond_11b

    .line 141
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getDataCoolDownTimer()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->setDataCoolDownTimer(I)V

    .line 144
    :cond_11b
    sget-object v2, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-object v2
.end method

.method public static isPreferXcap(ILandroid/content/Context;)Z
    .registers 11
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 308
    const/4 v0, 0x1

    .line 309
    .local v0, "r":Z
    const-string v1, "Prefer CS"

    .line 310
    .local v1, "ssMode":Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v2

    .line 312
    .local v2, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    const-string v3, "persist.vendor.ims_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "MMTelSSUtils"

    if-eqz v4, :cond_6b

    .line 313
    const-string v4, "persist.vendor.volte_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    goto :goto_6b

    .line 318
    :cond_24
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "Prefer CS"

    const-string v8, "persist.vendor.radio.ss.mode"

    if-eqz v3, :cond_4b

    .line 319
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 320
    const-string v3, "Prefer XCAP"

    invoke-static {v8, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {v2}, Lcom/mediatek/ims/SuppSrvConfig;->isNotSupportXcap()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 322
    const-string v1, "Prefer CS"

    goto :goto_4f

    .line 325
    :cond_4b
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    :cond_4f
    :goto_4f
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 329
    const/4 v0, 0x0

    .line 332
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreferXcap() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return v0

    .line 314
    :cond_6b
    :goto_6b
    const-string v3, "isPreferXcap(): Not Enable VOLTE feature!"

    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v3, 0x0

    return v3
.end method

.method public static isValidIMPI(Ljava/lang/String;)Z
    .registers 3
    .param p0, "impi"    # Ljava/lang/String;

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidIMPI, impi= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMTelSSUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 403
    .local v0, "validIMPI":Z
    :goto_2d
    return v0
.end method

.method public static resetServcieClass()V
    .registers 2

    .line 411
    const-string v0, "vendor.gsm.radio.ss.sc"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.class public Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;
.super Ljava/lang/Object;
.source "MtkPhoneNumberUtils.java"


# static fields
.field private static final CF_HEADERS:[Ljava/lang/String;

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "MtkPhoneNumberUtils"

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field private static final SC_CFB:Ljava/lang/String; = "67"

.field private static final SC_CFNR:Ljava/lang/String; = "62"

.field private static final SC_CFNRy:Ljava/lang/String; = "61"

.field private static final SC_CFU:Ljava/lang/String; = "21"

.field private static final SC_CF_All:Ljava/lang/String; = "002"

.field private static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field private static final VDBG:Z = false

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 131
    const-string v0, "US"

    const-string v1, "CA"

    const-string v2, "AS"

    const-string v3, "AI"

    const-string v4, "AG"

    const-string v5, "BS"

    const-string v6, "BB"

    const-string v7, "BM"

    const-string v8, "VG"

    const-string v9, "KY"

    const-string v10, "DM"

    const-string v11, "DO"

    const-string v12, "GD"

    const-string v13, "GU"

    const-string v14, "JM"

    const-string v15, "PR"

    const-string v16, "MS"

    const-string v17, "MP"

    const-string v18, "KN"

    const-string v19, "LC"

    const-string v20, "VC"

    const-string v21, "TT"

    const-string v22, "TC"

    const-string v23, "VI"

    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 172
    const-string v1, "*72"

    const-string v2, "*720"

    const-string v3, "*90"

    const-string v4, "*900"

    const-string v5, "*92"

    const-string v6, "*920"

    const-string v7, "*68"

    const-string v8, "*680"

    const-string v9, "*730"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->CF_HEADERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 185
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 189
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 205
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dlog(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 447
    const-string v0, "MtkPhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method public static extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 236
    if-nez p0, :cond_4

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_4
    const-string v0, "^([*][#]|[*]{1,2}|[#]{1,2})([0-9]{2,3})([*])([+]?[0-9]+)(.*)(#)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 243
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 244
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1a

    .line 245
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 246
    :cond_1a
    const-string v2, "*31#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_db

    const-string v2, "#31#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto/16 :goto_db

    .line 249
    :cond_2c
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_da

    .line 250
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 251
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v4, v2, :cond_da

    .line 252
    const-string v2, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/16 v4, 0x2b

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_a0

    .line 255
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " matcher pattern1, return empty string."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->vlog(Ljava/lang/String;)V

    .line 259
    return-object v7

    .line 261
    :cond_75
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "strDialNumber":Ljava/lang/String;
    if-eqz v2, :cond_9f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_9f

    .line 263
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_9f

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " matcher pattern1, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->vlog(Ljava/lang/String;)V

    .line 267
    return-object v2

    .line 269
    .end local v2    # "strDialNumber":Ljava/lang/String;
    :cond_9f
    goto :goto_da

    .line 271
    :cond_a0
    const-string v2, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 272
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 274
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    .restart local v2    # "strDialNumber":Ljava/lang/String;
    if-eqz v2, :cond_da

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_da

    .line 276
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_da

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " matcher pattern2, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->vlog(Ljava/lang/String;)V

    .line 282
    return-object v2

    .line 288
    .end local v2    # "strDialNumber":Ljava/lang/String;
    :cond_da
    :goto_da
    return-object p0

    .line 247
    :cond_db
    :goto_db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Start with *31# or #31#, return "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->vlog(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 197
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCallForwardCode(Ljava/lang/String;)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;

    .line 393
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 394
    return v1

    .line 396
    :cond_8
    move-object v0, p0

    .line 397
    .local v0, "dialPart":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 398
    nop

    .line 399
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    :cond_18
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->isGsmCallForwardCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->isCdmaCallForwardCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method private static isCdmaCallForwardCode(Ljava/lang/String;)Z
    .registers 7
    .param p0, "number"    # Ljava/lang/String;

    .line 428
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 429
    return v1

    .line 431
    :cond_8
    sget-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->CF_HEADERS:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_c
    if-ge v3, v2, :cond_20

    aget-object v4, v0, v3

    .line 432
    .local v4, "header":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1d

    .line 433
    const-string v0, "[isCdmaCallForwardCode] This is cdma call forward code"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x1

    return v0

    .line 431
    .end local v4    # "header":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 437
    :cond_20
    return v1
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 222
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .line 218
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isGsmCallForwardCode(Ljava/lang/String;)Z
    .registers 7
    .param p0, "number"    # Ljava/lang/String;

    .line 405
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 406
    return v1

    .line 408
    :cond_8
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 410
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 411
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 412
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "sc":Ljava/lang/String;
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_26

    .line 414
    const/4 v3, 0x0

    .line 416
    :cond_26
    if-eqz v3, :cond_5a

    .line 417
    const-string v4, "21"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 418
    const-string v4, "67"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    const-string v4, "61"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 419
    const-string v4, "62"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    const-string v4, "002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 420
    const-string v4, "004"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    :cond_58
    const/4 v1, 0x1

    goto :goto_5b

    :cond_5a
    nop

    .line 421
    .local v1, "isCf":Z
    :goto_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isGsmCallForwardCode] sc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "isCf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 422
    return v1

    .line 424
    .end local v1    # "isCf":Z
    .end local v3    # "sc":Ljava/lang/String;
    :cond_78
    return v1
.end method

.method public static isNonSeparator(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 211
    const/4 v2, 0x0

    return v2

    .line 209
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 214
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 442
    const-string v0, "MtkPhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .line 181
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "number"    # Ljava/lang/String;

    .line 327
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "retString":Ljava/lang/String;
    const-string v1, "^([*][#]|[*]{1,2}|[#]{1,2})([0-9]{2,3})([*])([0-9]+)(.*)(#)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 330
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 331
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const-string v6, "+"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_50

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v3, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ff

    .line 341
    .end local v3    # "ret":Ljava/lang/StringBuilder;
    :cond_50
    const-string v3, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 342
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 344
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v10, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ff

    .line 358
    .end local v3    # "ret":Ljava/lang/StringBuilder;
    :cond_91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ff

    .line 367
    .end local v3    # "ret":Ljava/lang/StringBuilder;
    :cond_bd
    const-string v3, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 368
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 369
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ff

    .line 382
    .end local v3    # "ret":Ljava/lang/StringBuilder;
    :cond_f2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :goto_ff
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .line 201
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 193
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static vlog(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 455
    return-void
.end method

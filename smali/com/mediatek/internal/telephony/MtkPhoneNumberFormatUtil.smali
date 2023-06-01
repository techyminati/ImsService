.class public Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;
.super Ljava/lang/Object;
.source "MtkPhoneNumberFormatUtil.java"


# static fields
.field public static final AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final FORMAT_AUSTRALIA:I = 0x15

.field public static final FORMAT_BRAZIL:I = 0x17

.field public static final FORMAT_CHINA_HONGKONG:I = 0x4

.field public static final FORMAT_CHINA_MACAU:I = 0x5

.field public static final FORMAT_CHINA_MAINLAND:I = 0x3

.field public static FORMAT_COUNTRY_CODES:[Ljava/lang/String; = null

.field public static final FORMAT_COUNTRY_NAMES:[Ljava/lang/String;

.field public static final FORMAT_ENGLAND:I = 0x7

.field public static final FORMAT_FRANCE:I = 0x8

.field public static final FORMAT_GERMANY:I = 0xa

.field public static final FORMAT_INDIA:I = 0xc

.field public static final FORMAT_INDONESIA:I = 0x10

.field public static final FORMAT_ITALY:I = 0x9

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_MALAYSIA:I = 0xe

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_NEW_ZEALAND:I = 0x16

.field public static final FORMAT_POLAND:I = 0x14

.field public static final FORMAT_PORTUGAL:I = 0x13

.field public static final FORMAT_RUSSIAN:I = 0xb

.field public static final FORMAT_SINGAPORE:I = 0xf

.field public static final FORMAT_SPAIN:I = 0xd

.field public static final FORMAT_TAIWAN:I = 0x6

.field public static final FORMAT_THAILAND:I = 0x11

.field public static final FORMAT_TURKEY:I = 0x18

.field public static final FORMAT_UNKNOWN:I = 0x0

.field public static final FORMAT_VIETNAM:I = 0x12

.field public static final FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final Germany_FOUR_PART_REGION_CODES:[I

.field private static final Germany_THREE_PART_REGION_CODES:[I

.field public static final HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final INDIA_THREE_DIGIG_AREA_CODES:[I

.field public static final INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final ITALY_MOBILE_PREFIXS:[I

.field public static final JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field public static final NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "MtkPhoneNumberFormatUtil"

.field public static final TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 89
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

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 120
    const-string v0, "011"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 123
    const-string v0, "010"

    const-string v1, "001"

    const-string v2, "0041"

    const-string v3, "0061"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 136
    const-string v0, "0080"

    const-string v2, "0082"

    const-string v3, "009"

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 150
    const-string v4, "002"

    const-string v5, "005"

    const-string v6, "006"

    const-string v7, "007"

    const-string v8, "009"

    const-string v9, "019"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 158
    const-string v0, "00"

    const-string v2, "40"

    const-string v4, "50"

    const-string v5, "70"

    const-string v6, "90"

    filled-new-array {v0, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 179
    const-string v4, "001"

    const-string v5, "002"

    const-string v6, "008"

    const-string v7, "012"

    const-string v8, "013"

    const-string v9, "018"

    const-string v10, "019"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 186
    const-string v0, "007"

    const-string v2, "008"

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 193
    const-string v1, "001"

    const-string v2, "004"

    const-string v3, "005"

    const-string v4, "006"

    const-string v5, "007"

    const-string v6, "008"

    const-string v7, "009"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 206
    const-string v1, "0011"

    const-string v2, "0014"

    const-string v3, "0015"

    const-string v4, "0016"

    const-string v5, "0018"

    const-string v6, "0019"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 216
    const-string v1, "0012"

    const-string v2, "0014"

    const-string v3, "0015"

    const-string v4, "0021"

    const-string v5, "0023"

    const-string v6, "0025"

    const-string v7, "0031"

    const-string v8, "0041"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 225
    const-string v1, "1"

    const-string v2, "81"

    const-string v3, "86"

    const-string v4, "852"

    const-string v5, "853"

    const-string v6, "886"

    const-string v7, "44"

    const-string v8, "33"

    const-string v9, "39"

    const-string v10, "49"

    const-string v11, "7"

    const-string v12, "91"

    const-string v13, "34"

    const-string v14, "60"

    const-string v15, "65"

    const-string v16, "62"

    const-string v17, "66"

    const-string v18, "84"

    const-string v19, "351"

    const-string v20, "48"

    const-string v21, "61"

    const-string v22, "64"

    const-string v23, "55"

    const-string v24, "90"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    .line 239
    const-string v1, "US"

    const-string v2, "JP"

    const-string v3, "CN"

    const-string v4, "HK"

    const-string v5, "MO"

    const-string v6, "TW"

    const-string v7, "GB"

    const-string v8, "FR"

    const-string v9, "IT"

    const-string v10, "DE"

    const-string v11, "RU"

    const-string v12, "IN"

    const-string v13, "ES"

    const-string v14, "MY"

    const-string v15, "SG"

    const-string v16, "ID"

    const-string v17, "TH"

    const-string v18, "VN"

    const-string v19, "PT"

    const-string v20, "PL"

    const-string v21, "AU"

    const-string v22, "NZ"

    const-string v23, "BR"

    const-string v24, "TR"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FORMAT_COUNTRY_NAMES:[Ljava/lang/String;

    .line 1688
    const/16 v0, 0x9f

    new-array v0, v0, [I

    fill-array-data v0, :array_166

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->INDIA_THREE_DIGIG_AREA_CODES:[I

    .line 1912
    const/16 v0, 0x2e

    new-array v0, v0, [I

    fill-array-data v0, :array_2a8

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->Germany_THREE_PART_REGION_CODES:[I

    .line 1922
    const/16 v0, 0xcc

    new-array v0, v0, [I

    fill-array-data v0, :array_308

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->Germany_FOUR_PART_REGION_CODES:[I

    .line 2077
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_4a4

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->ITALY_MOBILE_PREFIXS:[I

    return-void

    nop

    :array_166
    .array-data 4
        0x78
        0x79
        0x7a
        0x7c
        0x81
        0x82
        0x83
        0x84
        0x87
        0x8d
        0x90
        0x91
        0x97
        0x9a
        0xa0
        0xa1
        0xa4
        0xab
        0xac
        0xaf
        0xb1
        0xb4
        0xb5
        0xb7
        0xb8
        0xba
        0xbf
        0xc2
        0xd4
        0xd7
        0xd9
        0xe6
        0xe7
        0xe9
        0xf0
        0xf1
        0xfa
        0xfb
        0xfd
        0x101
        0x104
        0x105
        0x109
        0x10c
        0x116
        0x119
        0x11d
        0x11e
        0x120
        0x123
        0x126
        0x146
        0x155
        0x156
        0x157
        0x161
        0x162
        0x168
        0x169
        0x16c
        0x170
        0x171
        0x172
        0x174
        0x175
        0x176
        0x178
        0x17d
        0x181
        0x185
        0x19d
        0x1a0
        0x1a5
        0x1a6
        0x1a7
        0x1a8
        0x1ab
        0x1af
        0x1b3
        0x1c3
        0x1c4
        0x1cd
        0x1ce
        0x1d4
        0x1d5
        0x1d6
        0x1d7
        0x1da
        0x1db
        0x1dc
        0x1dd
        0x1de
        0x1df
        0x1e0
        0x1e1
        0x1e3
        0x1e4
        0x1e5
        0x1e7
        0x1ea
        0x1eb
        0x1ee
        0x1ef
        0x1f0
        0x1f1
        0x200
        0x203
        0x20a
        0x214
        0x217
        0x21e
        0x224
        0x227
        0x232
        0x235
        0x23b
        0x245
        0x24f
        0x253
        0x264
        0x26d
        0x277
        0x281
        0x28b
        0x291
        0x295
        0x297
        0x29f
        0x2a2
        0x2a8
        0x2c8
        0x2d1
        0x2d4
        0x2db
        0x2dd
        0x2de
        0x2e8
        0x2eb
        0x2ef
        0x2f3
        0x2f9
        0x303
        0x314
        0x330
        0x334
        0x335
        0x338
        0x33f
        0x340
        0x344
        0x35d
        0x35f
        0x362
        0x366
        0x36d
        0x36e
        0x373
        0x374
        0x37b
    .end array-data

    :array_2a8
    .array-data 4
        0xca
        0xcb
        0xd0
        0xd1
        0xd4
        0xd6
        0xdd
        0xe4
        0xea
        0xf9
        0x136
        0x14f
        0x154
        0x159
        0x16d
        0x177
        0x181
        0x18b
        0x1c9
        0x1ca
        0x1cb
        0x2bc
        0x2c5
        0x2c6
        0x2d8
        0x2d9
        0x2ed
        0x2f7
        0x301
        0x30a
        0x30b
        0x312
        0x313
        0x314
        0x315
        0x318
        0x31e
        0x31f
        0x320
        0x368
        0x36b
        0x36f
        0x384
        0x386
        0x387
        0x38a
    .end array-data

    :array_308
    .array-data 4
        0xce5
        0xce6
        0xce7
        0xce8
        0xcea
        0xceb
        0xcf9
        0xcfa
        0xcff
        0xd00
        0xd01
        0xd03
        0xd04
        0xd06
        0xd07
        0xd09
        0xd0a
        0xd0d
        0xd0e
        0xd10
        0xd12
        0xd21
        0xd22
        0xd24
        0xd26
        0xd2b
        0xd2c
        0xd2f
        0xd31
        0xd32
        0xd33
        0xd35
        0xd36
        0xd39
        0xd3a
        0xd3f
        0xd42
        0xd43
        0xd5d
        0xd5f
        0xd61
        0xd67
        0xd69
        0xd6b
        0xd6d
        0xd71
        0xd73
        0xd75
        0xd77
        0xd78
        0xd85
        0xd86
        0xd88
        0xd8a
        0xd8f
        0xd91
        0xd93
        0xd94
        0xda3
        0xda5
        0xda6
        0xda8
        0xdad
        0xdb0
        0xdc1
        0xdc2
        0xdc3
        0xdc5
        0xdc8
        0xdc9
        0xdcb
        0xdcd
        0xdd1
        0xdd5
        0xdd6
        0xdd8
        0xdda
        0xde9
        0xdea
        0xdeb
        0xdec
        0xdf3
        0xdf5
        0xdf6
        0xdf8
        0xdfa
        0xdfd
        0xdff
        0xe01
        0xe02
        0xe04
        0xe07
        0xe08
        0xe0a
        0xe0c
        0xe11
        0xe13
        0xe15
        0xe16
        0xe25
        0xe26
        0xe27
        0xe28
        0xe2a
        0xe2b
        0xe2c
        0xe2d
        0xe2f
        0xe30
        0xe32
        0xe33
        0xe34
        0xe39
        0xe3b
        0xe3c
        0xe3f
        0xe4d
        0xe4f
        0xe57
        0xe58
        0xe5b
        0xe5d
        0xe5f
        0xe60
        0xe61
        0xe62
        0xe63
        0xe65
        0xe66
        0xe6b
        0xe6d
        0xe6f
        0xe89
        0xe8a
        0xe8b
        0xe8c
        0xe8d
        0xe8e
        0xe8f
        0xe93
        0xe95
        0xe97
        0xe99
        0xe9d
        0xea0
        0xea1
        0xeb1
        0xeb2
        0xeb3
        0xeb4
        0xeb5
        0xebb
        0xebc
        0xebd
        0xebe
        0xeed
        0xef7
        0xefa
        0xefe
        0xf01
        0xf03
        0xf04
        0xf07
        0xf1f
        0xf22
        0xf24
        0xf25
        0xf29
        0xf2b
        0xf2e
        0xf3d
        0xf51
        0xf53
        0xf55
        0xf58
        0xf5b
        0xf5d
        0xf5f
        0xf61
        0xf65
        0xf66
        0xf67
        0xf68
        0xf6a
        0xf6b
        0xf6d
        0xf79
        0xf7a
        0xf7b
        0xf7c
        0xf7d
        0xf7e
        0xf7f
        0xf80
        0xf81
        0xf83
        0xf85
        0xf88
        0xf8d
        0xf90
        0xf97
        0xf9a
        0xf9c
        0xf9d
    .end array-data

    :array_4a4
    .array-data 4
        0x148
        0x149
        0x14a
        0x14d
        0x14e
        0x14f
        0x150
        0x151
        0x152
        0x153
        0x15b
        0x15c
        0x15d
        0x168
        0x170
        0x17c
        0x184
        0x185
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIndiaNumber(CCCC)I
    .registers 20
    .param p0, "c1"    # C
    .param p1, "c2"    # C
    .param p2, "c3"    # C
    .param p3, "c4"    # C

    .line 1717
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, -0x1

    .line 1718
    .local v3, "result":I
    add-int/lit8 v4, v2, -0x30

    const/16 v5, 0xa

    mul-int/2addr v4, v5

    add-int/lit8 v6, p3, -0x30

    add-int/2addr v4, v6

    .line 1719
    .local v4, "temp":I
    const/16 v8, 0x39

    const/16 v9, 0x31

    const/16 v10, 0x37

    const/16 v11, 0x38

    const/16 v12, 0x32

    const/16 v13, 0x30

    if-ne v0, v8, :cond_20

    .line 1720
    const/4 v3, 0x0

    goto/16 :goto_19f

    .line 1721
    :cond_20
    const/16 v15, 0x1d

    const/16 v6, 0x3c

    const/16 v7, 0x5a

    const/16 v8, 0x14

    const/16 v14, 0x27

    if-ne v0, v11, :cond_89

    .line 1722
    if-ne v1, v13, :cond_38

    if-lt v4, v8, :cond_86

    if-lt v4, v12, :cond_34

    if-le v4, v6, :cond_86

    :cond_34
    const/16 v6, 0x50

    if-ge v4, v6, :cond_86

    :cond_38
    if-ne v1, v9, :cond_46

    if-lt v4, v5, :cond_86

    if-lt v4, v8, :cond_40

    if-le v4, v15, :cond_86

    :cond_40
    const/16 v6, 0x28

    if-lt v4, v6, :cond_46

    if-le v4, v9, :cond_86

    :cond_46
    if-ne v1, v10, :cond_4e

    if-ge v4, v7, :cond_86

    const/16 v6, 0x45

    if-eq v4, v6, :cond_86

    :cond_4e
    if-ne v1, v11, :cond_68

    if-lt v4, v5, :cond_86

    const/16 v6, 0x11

    if-eq v4, v6, :cond_86

    const/16 v6, 0x19

    if-lt v4, v6, :cond_5e

    const/16 v6, 0x1c

    if-le v4, v6, :cond_86

    :cond_5e
    const/16 v6, 0x2c

    if-eq v4, v6, :cond_86

    const/16 v6, 0x35

    if-eq v4, v6, :cond_86

    if-ge v4, v7, :cond_86

    :cond_68
    const/16 v6, 0x39

    if-ne v2, v6, :cond_19f

    if-lt v4, v5, :cond_86

    const/16 v6, 0x17

    if-eq v4, v6, :cond_86

    if-eq v4, v14, :cond_86

    if-lt v4, v12, :cond_7a

    const/16 v6, 0x3e

    if-le v4, v6, :cond_86

    :cond_7a
    const/16 v6, 0x43

    if-eq v4, v6, :cond_86

    const/16 v6, 0x44

    if-eq v4, v6, :cond_86

    const/16 v6, 0x46

    if-lt v4, v6, :cond_19f

    .line 1727
    :cond_86
    const/4 v3, 0x0

    goto/16 :goto_19f

    .line 1729
    :cond_89
    if-ne v0, v10, :cond_19f

    .line 1731
    if-eq v1, v13, :cond_19e

    const/4 v13, 0x4

    const/16 v7, 0x9

    if-ne v1, v12, :cond_ac

    if-eqz v4, :cond_19e

    if-lt v4, v13, :cond_98

    if-le v4, v7, :cond_19e

    :cond_98
    if-eq v4, v12, :cond_19e

    const/16 v11, 0x3b

    if-eq v4, v11, :cond_19e

    const/16 v11, 0x4b

    if-lt v4, v11, :cond_a6

    const/16 v11, 0x4e

    if-le v4, v11, :cond_19e

    :cond_a6
    const/16 v11, 0x5d

    if-eq v4, v11, :cond_19e

    if-eq v4, v7, :cond_19e

    :cond_ac
    const/16 v11, 0x4d

    const/16 v6, 0x4c

    const/16 v7, 0x33

    if-ne v1, v7, :cond_c8

    const/16 v7, 0x49

    if-eq v4, v7, :cond_19e

    if-eq v4, v6, :cond_19e

    if-eq v4, v11, :cond_19e

    const/16 v7, 0x60

    if-eq v4, v7, :cond_19e

    const/16 v7, 0x62

    if-eq v4, v7, :cond_19e

    const/16 v7, 0x63

    if-eq v4, v7, :cond_19e

    :cond_c8
    const/16 v7, 0x34

    if-ne v1, v7, :cond_f6

    if-lt v4, v5, :cond_19e

    const/16 v7, 0xb

    if-eq v4, v7, :cond_19e

    const/16 v7, 0xf

    if-lt v4, v7, :cond_da

    const/16 v7, 0x13

    if-le v4, v7, :cond_19e

    :cond_da
    const/16 v7, 0x1c

    if-eq v4, v7, :cond_19e

    if-eq v4, v15, :cond_19e

    if-eq v4, v14, :cond_19e

    const/16 v7, 0x53

    if-eq v4, v7, :cond_19e

    const/16 v7, 0x58

    if-eq v4, v7, :cond_19e

    const/16 v7, 0x59

    if-eq v4, v7, :cond_19e

    const/16 v7, 0x62

    if-eq v4, v7, :cond_19e

    const/16 v7, 0x63

    if-eq v4, v7, :cond_19e

    :cond_f6
    const/16 v7, 0x4f

    const/16 v15, 0x35

    if-ne v1, v15, :cond_118

    if-le v4, v13, :cond_19e

    if-eq v4, v9, :cond_19e

    if-eq v4, v12, :cond_19e

    const/16 v13, 0x42

    if-lt v4, v13, :cond_10a

    const/16 v13, 0x45

    if-le v4, v13, :cond_19e

    :cond_10a
    if-eq v4, v7, :cond_19e

    const/16 v13, 0x57

    if-lt v4, v13, :cond_114

    const/16 v13, 0x59

    if-le v4, v13, :cond_19e

    :cond_114
    const/16 v13, 0x61

    if-ge v4, v13, :cond_19e

    :cond_118
    const/16 v13, 0x36

    if-ne v1, v13, :cond_140

    if-eqz v4, :cond_19e

    const/4 v15, 0x2

    if-eq v4, v15, :cond_19e

    const/4 v15, 0x7

    if-eq v4, v15, :cond_19e

    if-eq v4, v8, :cond_19e

    const/16 v8, 0x1f

    if-eq v4, v8, :cond_19e

    if-eq v4, v14, :cond_19e

    if-eq v4, v13, :cond_19e

    if-eq v4, v10, :cond_19e

    const/16 v8, 0x41

    if-lt v4, v8, :cond_138

    const/16 v8, 0x45

    if-le v4, v8, :cond_19e

    :cond_138
    if-lt v4, v6, :cond_13c

    if-le v4, v7, :cond_19e

    :cond_13c
    const/16 v6, 0x60

    if-ge v4, v6, :cond_19e

    :cond_140
    if-ne v1, v10, :cond_161

    const/4 v6, 0x2

    if-eq v4, v6, :cond_19e

    const/16 v6, 0x8

    if-eq v4, v6, :cond_19e

    const/16 v6, 0x9

    if-eq v4, v6, :cond_19e

    const/16 v6, 0x23

    if-lt v4, v6, :cond_153

    if-le v4, v14, :cond_19e

    :cond_153
    const/16 v6, 0x2a

    if-eq v4, v6, :cond_19e

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_19e

    if-eq v4, v11, :cond_19e

    const/16 v6, 0x5f

    if-ge v4, v6, :cond_19e

    :cond_161
    const/16 v6, 0x38

    if-ne v1, v6, :cond_182

    if-gt v4, v14, :cond_182

    if-eqz v4, :cond_19e

    const/4 v6, 0x7

    if-lt v4, v6, :cond_170

    const/16 v6, 0x9

    if-le v4, v6, :cond_19e

    :cond_170
    const/16 v6, 0xe

    if-eq v4, v6, :cond_19e

    const/16 v6, 0x1b

    if-lt v4, v6, :cond_17c

    const/16 v6, 0x1e

    if-le v4, v6, :cond_19e

    :cond_17c
    const/16 v6, 0x25

    if-lt v4, v6, :cond_182

    if-le v4, v14, :cond_19e

    :cond_182
    const/16 v6, 0x38

    if-ne v1, v6, :cond_19f

    if-le v4, v14, :cond_19f

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_19e

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_19e

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_19e

    const/16 v6, 0x45

    if-lt v4, v6, :cond_19a

    if-le v4, v7, :cond_19e

    :cond_19a
    const/16 v6, 0x5a

    if-lt v4, v6, :cond_19f

    .line 1740
    :cond_19e
    const/4 v3, 0x0

    .line 1743
    :cond_19f
    :goto_19f
    if-nez v3, :cond_1a2

    .line 1744
    return v3

    .line 1746
    :cond_1a2
    if-ne v0, v9, :cond_1a6

    if-eq v1, v9, :cond_1cc

    :cond_1a6
    if-ne v0, v12, :cond_1ae

    const/16 v6, 0x30

    if-eq v1, v6, :cond_1cc

    if-eq v1, v12, :cond_1cc

    :cond_1ae
    const/16 v6, 0x33

    if-ne v0, v6, :cond_1b4

    if-eq v1, v6, :cond_1cc

    :cond_1b4
    const/16 v6, 0x34

    if-ne v0, v6, :cond_1be

    const/16 v7, 0x30

    if-eq v1, v7, :cond_1cc

    if-eq v1, v6, :cond_1cc

    :cond_1be
    if-ne v0, v10, :cond_1c4

    const/16 v6, 0x39

    if-eq v1, v6, :cond_1cc

    :cond_1c4
    const/16 v6, 0x38

    if-ne v0, v6, :cond_1ce

    const/16 v6, 0x30

    if-ne v1, v6, :cond_1ce

    .line 1752
    :cond_1cc
    const/4 v3, 0x2

    goto :goto_1e4

    .line 1754
    :cond_1ce
    add-int/lit8 v6, v0, -0x30

    mul-int/lit8 v6, v6, 0x64

    add-int/lit8 v7, v1, -0x30

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v2, -0x30

    add-int/2addr v6, v5

    .line 1755
    .local v6, "key":I
    sget-object v5, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->INDIA_THREE_DIGIG_AREA_CODES:[I

    invoke-static {v5, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-ltz v5, :cond_1e3

    .line 1756
    const/4 v3, 0x3

    goto :goto_1e4

    .line 1758
    :cond_1e3
    const/4 v3, 0x4

    .line 1761
    .end local v6    # "key":I
    :goto_1e4
    return v3
.end method

.method static checkInputNormalNumber(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 392
    const/4 v0, 0x1

    .line 394
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 395
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 396
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_14

    const/16 v3, 0x39

    if-le v2, v3, :cond_2a

    :cond_14
    const/16 v3, 0x2a

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2a

    .line 397
    const/4 v0, 0x0

    .line 398
    goto :goto_2d

    .line 394
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 401
    .end local v1    # "index":I
    .end local v2    # "c":C
    :cond_2d
    :goto_2d
    return v0
.end method

.method private static formatAustraliaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1258
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1262
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1263
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1264
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 1266
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x30

    if-gtz v3, :cond_2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1a

    goto :goto_2b

    .line 1294
    :cond_1a
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(I)V

    .line 1295
    add-int/lit8 v4, v3, 0x8

    if-ne v0, v4, :cond_6a

    .line 1296
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v2

    move v2, v4

    goto :goto_6a

    .line 1267
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2b
    :goto_2b
    move v5, v3

    .line 1268
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_34

    .line 1269
    add-int/lit8 v5, v5, 0x1

    .line 1272
    :cond_34
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x34

    if-ne v4, v6, :cond_53

    .line 1274
    add-int/lit8 v4, v5, 0x5

    if-le v0, v4, :cond_47

    .line 1275
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x3

    aput v6, v1, v2

    move v2, v4

    .line 1278
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_47
    add-int/lit8 v4, v5, 0x8

    if-le v0, v4, :cond_69

    .line 1279
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x6

    aput v6, v1, v2

    move v2, v4

    goto :goto_69

    .line 1283
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_53
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_5e

    .line 1284
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x1

    aput v6, v1, v2

    move v2, v4

    .line 1287
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_5e
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_69

    .line 1288
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x5

    aput v6, v1, v2

    move v2, v4

    .line 1291
    .end local v4    # "numDashes":I
    .end local v5    # "index":I
    .restart local v2    # "numDashes":I
    :cond_69
    :goto_69
    nop

    .line 1300
    :cond_6a
    :goto_6a
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6b
    if-ge v4, v2, :cond_7b

    .line 1301
    aget v5, v1, v4

    .line 1302
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 1304
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_7b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatBrazilNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1161
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1165
    .local v0, "length":I
    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 1166
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1167
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 1169
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x30

    if-gtz v3, :cond_27

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1a

    goto :goto_27

    .line 1184
    :cond_1a
    add-int/lit8 v4, v3, 0x5

    if-le v0, v4, :cond_26

    .line 1185
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v2

    move v2, v4

    goto :goto_63

    .line 1184
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_26
    :goto_26
    goto :goto_63

    .line 1170
    :cond_27
    :goto_27
    move v5, v3

    .line 1171
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_37

    .line 1172
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v3, 0x1

    aput v6, v1, v2

    .line 1173
    add-int/lit8 v5, v5, 0x1

    move v2, v4

    .line 1175
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_37
    add-int/lit8 v4, v5, 0x3

    if-le v0, v4, :cond_42

    .line 1176
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x2

    aput v6, v1, v2

    move v2, v4

    .line 1178
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_42
    add-int/lit8 v4, v5, 0x7

    if-le v0, v4, :cond_52

    add-int/lit8 v4, v5, 0xa

    if-gt v0, v4, :cond_52

    .line 1179
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x6

    aput v6, v1, v2

    move v2, v4

    goto :goto_26

    .line 1180
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_52
    add-int/lit8 v4, v5, 0xa

    if-le v0, v4, :cond_26

    .line 1181
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x4

    aput v6, v1, v2

    .line 1182
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v6, v5, 0x8

    aput v6, v1, v4

    goto :goto_26

    .line 1188
    .end local v5    # "index":I
    :goto_63
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_64
    if-ge v4, v2, :cond_74

    .line 1189
    aget v5, v1, v4

    .line 1190
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 1192
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatChinaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 12
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 812
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 816
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 817
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 818
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 820
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x32

    const/16 v5, 0x31

    const/16 v6, 0x30

    if-gtz v3, :cond_6a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1e

    goto :goto_6a

    .line 845
    :cond_1e
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 846
    .local v7, "c1":C
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 847
    .local v8, "c2":C
    if-ne v7, v5, :cond_44

    if-eq v8, v6, :cond_44

    .line 850
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_37

    .line 851
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 854
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_37
    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_ac

    .line 855
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x7

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_ac

    .line 857
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_44
    if-ne v7, v5, :cond_54

    if-ne v8, v6, :cond_54

    .line 859
    add-int/lit8 v4, v3, 0x3

    if-le v0, v4, :cond_ac

    .line 860
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    move v2, v4

    goto :goto_ac

    .line 864
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_54
    add-int/lit8 v5, v3, 0x8

    if-le v0, v5, :cond_ac

    .line 865
    if-ne v7, v4, :cond_62

    .line 866
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    move v2, v4

    goto :goto_ac

    .line 868
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_62
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto :goto_ac

    .line 821
    .end local v4    # "numDashes":I
    .end local v7    # "c1":C
    .end local v8    # "c2":C
    .restart local v2    # "numDashes":I
    :cond_6a
    :goto_6a
    move v7, v3

    .line 822
    .local v7, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_73

    .line 823
    add-int/lit8 v7, v7, 0x1

    .line 825
    :cond_73
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 826
    .local v8, "c1":C
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 829
    .local v9, "c2":C
    if-ne v8, v5, :cond_81

    if-eq v9, v6, :cond_83

    :cond_81
    if-ne v8, v4, :cond_8b

    .line 830
    :cond_83
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x2

    aput v5, v1, v2

    move v2, v4

    goto :goto_ab

    .line 831
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_8b
    if-ne v8, v5, :cond_a4

    .line 834
    add-int/lit8 v4, v7, 0x4

    if-le v0, v4, :cond_98

    .line 835
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 838
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_98
    add-int/lit8 v4, v7, 0x8

    if-le v0, v4, :cond_ab

    .line 839
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x7

    aput v5, v1, v2

    move v2, v4

    goto :goto_ab

    .line 842
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_a4
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 844
    .end local v4    # "numDashes":I
    .end local v7    # "index":I
    .end local v8    # "c1":C
    .end local v9    # "c2":C
    .restart local v2    # "numDashes":I
    :cond_ab
    :goto_ab
    nop

    .line 873
    :cond_ac
    :goto_ac
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ad
    if-ge v4, v2, :cond_bd

    .line 874
    aget v5, v1, v4

    .line 875
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .end local v5    # "pos":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_ad

    .line 877
    .end local v4    # "i":I
    :cond_bd
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatEnglandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 14
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 2284
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2288
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2289
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 2290
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 2291
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x30

    if-gtz v3, :cond_38

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1a

    goto :goto_38

    .line 2355
    :cond_1a
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_2b

    add-int/lit8 v4, v3, 0x8

    if-ge v0, v4, :cond_2b

    .line 2356
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_113

    .line 2357
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2b
    add-int/lit8 v4, v3, 0x8

    if-lt v0, v4, :cond_113

    .line 2358
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_113

    .line 2292
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_38
    :goto_38
    move v5, v3

    .line 2293
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_41

    .line 2294
    add-int/lit8 v5, v5, 0x1

    .line 2296
    :cond_41
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 2297
    .local v4, "c1":C
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 2298
    .local v6, "c2":C
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 2300
    .local v7, "c3":C
    const/16 v8, 0x37

    if-ne v4, v8, :cond_62

    .line 2302
    add-int/lit8 v8, v5, 0x5

    if-le v0, v8, :cond_112

    .line 2303
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .local v8, "numDashes":I
    add-int/lit8 v9, v5, 0x4

    aput v9, v1, v2

    move v2, v8

    goto/16 :goto_112

    .line 2305
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_62
    const/16 v8, 0x32

    if-ne v4, v8, :cond_7b

    .line 2307
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x2

    aput v9, v1, v2

    .line 2309
    add-int/lit8 v2, v5, 0x7

    if-le v0, v2, :cond_78

    .line 2310
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v8

    goto/16 :goto_112

    .line 2309
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_78
    move v2, v8

    goto/16 :goto_112

    .line 2312
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_7b
    const/16 v8, 0x31

    if-ne v4, v8, :cond_dc

    .line 2313
    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 2314
    .local v9, "c4":C
    add-int/lit8 v10, v4, -0x30

    mul-int/lit16 v10, v10, 0x3e8

    add-int/lit8 v11, v6, -0x30

    mul-int/lit8 v11, v11, 0x64

    add-int/2addr v10, v11

    add-int/lit8 v11, v7, -0x30

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v10, v11

    add-int/2addr v10, v9

    .line 2315
    .local v10, "key":I
    if-eq v6, v8, :cond_c5

    if-ne v7, v8, :cond_99

    goto :goto_c5

    .line 2324
    :cond_99
    const/16 v8, 0x56b

    if-eq v10, v8, :cond_b9

    const/16 v8, 0x603

    if-eq v10, v8, :cond_b9

    const/16 v8, 0x6a1

    if-eq v10, v8, :cond_b9

    const/16 v8, 0x6e8

    if-eq v10, v8, :cond_b9

    const/16 v8, 0x79a

    if-eq v10, v8, :cond_b9

    .line 2327
    add-int/lit8 v8, v5, 0x5

    if-le v0, v8, :cond_db

    .line 2328
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x4

    aput v11, v1, v2

    move v2, v8

    goto :goto_db

    .line 2332
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_b9
    add-int/lit8 v8, v5, 0x6

    if-le v0, v8, :cond_db

    .line 2333
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x5

    aput v11, v1, v2

    move v2, v8

    goto :goto_db

    .line 2317
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_c5
    :goto_c5
    add-int/lit8 v8, v5, 0x4

    if-le v0, v8, :cond_d0

    .line 2318
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x3

    aput v11, v1, v2

    move v2, v8

    .line 2321
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_d0
    add-int/lit8 v8, v5, 0x7

    if-le v0, v8, :cond_db

    .line 2322
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x6

    aput v11, v1, v2

    move v2, v8

    .line 2336
    .end local v8    # "numDashes":I
    .end local v9    # "c4":C
    .end local v10    # "key":I
    .restart local v2    # "numDashes":I
    :cond_db
    :goto_db
    goto :goto_112

    :cond_dc
    const/16 v8, 0x33

    if-eq v4, v8, :cond_fc

    const/16 v8, 0x38

    if-eq v4, v8, :cond_fc

    const/16 v8, 0x39

    if-ne v4, v8, :cond_e9

    goto :goto_fc

    .line 2348
    :cond_e9
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x2

    aput v9, v1, v2

    .line 2350
    add-int/lit8 v2, v5, 0x7

    if-le v0, v2, :cond_fa

    .line 2351
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v8

    goto :goto_112

    .line 2350
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_fa
    move v2, v8

    goto :goto_112

    .line 2338
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_fc
    :goto_fc
    add-int/lit8 v8, v5, 0x4

    if-le v0, v8, :cond_107

    .line 2339
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x3

    aput v9, v1, v2

    move v2, v8

    .line 2342
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_107
    add-int/lit8 v8, v5, 0x7

    if-le v0, v8, :cond_112

    .line 2343
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v2

    move v2, v8

    .line 2354
    .end local v4    # "c1":C
    .end local v5    # "index":I
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_112
    :goto_112
    nop

    .line 2362
    :cond_113
    :goto_113
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_114
    if-ge v4, v2, :cond_124

    .line 2363
    aget v5, v1, v4

    .line 2364
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2362
    add-int/lit8 v4, v4, 0x1

    goto :goto_114

    .line 2366
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatFranceNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 13
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 2207
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2211
    .local v0, "length":I
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 2212
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 2213
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 2214
    .local v3, "phoneNumPosition":I
    :goto_f
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 2215
    .local v4, "c":I
    const/16 v5, 0x39

    const/16 v6, 0x37

    const/16 v7, 0x35

    const/16 v8, 0x34

    const/16 v9, 0x30

    if-gtz v3, :cond_29

    if-eq v4, v9, :cond_29

    if-eq v4, v8, :cond_29

    if-eq v4, v7, :cond_29

    if-eq v4, v6, :cond_29

    if-ne v4, v5, :cond_64

    .line 2216
    :cond_29
    move v10, v3

    .line 2217
    .local v10, "index":I
    if-nez v3, :cond_36

    if-eq v4, v9, :cond_3a

    if-eq v4, v8, :cond_3a

    if-eq v4, v7, :cond_3a

    if-eq v4, v6, :cond_3a

    if-eq v4, v5, :cond_3a

    :cond_36
    if-lez v3, :cond_3c

    if-ne v4, v9, :cond_3c

    .line 2218
    :cond_3a
    add-int/lit8 v10, v10, 0x1

    .line 2221
    :cond_3c
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "numDashes":I
    .local v5, "numDashes":I
    add-int/lit8 v6, v10, 0x1

    aput v6, v1, v2

    .line 2223
    add-int/lit8 v2, v10, 0x4

    if-le v0, v2, :cond_4d

    .line 2224
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v6, v10, 0x3

    aput v6, v1, v5

    move v5, v2

    .line 2227
    .end local v2    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_4d
    add-int/lit8 v2, v10, 0x6

    if-le v0, v2, :cond_58

    .line 2228
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v6, v10, 0x5

    aput v6, v1, v5

    goto :goto_59

    .line 2227
    .end local v2    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_58
    move v2, v5

    .line 2231
    .end local v5    # "numDashes":I
    .restart local v2    # "numDashes":I
    :goto_59
    add-int/lit8 v5, v10, 0x8

    if-le v0, v5, :cond_64

    .line 2232
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v6, v10, 0x7

    aput v6, v1, v2

    move v2, v5

    .line 2236
    .end local v5    # "numDashes":I
    .end local v10    # "index":I
    .restart local v2    # "numDashes":I
    :cond_64
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_65
    if-ge v5, v2, :cond_75

    .line 2237
    aget v6, v1, v5

    .line 2238
    .local v6, "pos":I
    add-int v7, v6, v5

    add-int v8, v6, v5

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 2240
    .end local v5    # "i":I
    .end local v6    # "pos":I
    :cond_75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static formatGermanyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 19
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1984
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1988
    .local v2, "length":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1989
    .local v3, "dashPositions":[I
    const/4 v4, 0x0

    .line 1990
    .local v4, "numDashes":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_11

    const/4 v5, 0x0

    goto :goto_13

    :cond_11
    add-int/lit8 v5, v1, 0x1

    .line 1992
    .local v5, "phoneNumPosition":I
    :goto_13
    const/16 v6, 0x30

    if-gtz v5, :cond_2f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1e

    goto :goto_2f

    .line 2060
    :cond_1e
    add-int/lit8 v6, v5, 0x6

    if-lt v2, v6, :cond_120

    add-int/lit8 v6, v5, 0x8

    if-gt v2, v6, :cond_120

    .line 2061
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .local v6, "numDashes":I
    add-int/lit8 v7, v5, 0x3

    aput v7, v3, v4

    move v4, v6

    goto/16 :goto_121

    .line 1993
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_2f
    :goto_2f
    move v7, v5

    .line 1994
    .local v7, "index":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_38

    .line 1995
    add-int/lit8 v7, v7, 0x1

    .line 1997
    :cond_38
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 1998
    .local v8, "c1":C
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 2000
    .local v9, "c2":C
    const/16 v10, 0x36

    const/16 v11, 0x31

    if-ne v8, v11, :cond_6a

    .line 2002
    add-int/lit8 v6, v7, 0x4

    if-le v2, v6, :cond_53

    .line 2003
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x3

    aput v11, v3, v4

    move v4, v6

    .line 2006
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_53
    const/16 v6, 0x35

    if-eq v9, v6, :cond_5d

    if-eq v9, v10, :cond_5d

    const/16 v6, 0x37

    if-ne v9, v6, :cond_120

    .line 2008
    :cond_5d
    add-int/lit8 v6, v7, 0xa

    if-le v2, v6, :cond_120

    .line 2009
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v10, v7, 0x9

    aput v10, v3, v4

    move v4, v6

    goto/16 :goto_120

    .line 2013
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_6a
    const/16 v12, 0x33

    if-ne v8, v12, :cond_70

    if-eq v9, v6, :cond_82

    :cond_70
    const/16 v13, 0x34

    if-ne v8, v13, :cond_76

    if-eq v9, v6, :cond_82

    :cond_76
    const/16 v6, 0x39

    if-ne v8, v10, :cond_7c

    if-eq v9, v6, :cond_82

    :cond_7c
    const/16 v10, 0x38

    if-ne v8, v10, :cond_9a

    if-ne v9, v6, :cond_9a

    .line 2016
    :cond_82
    add-int/lit8 v6, v7, 0x4

    if-le v2, v6, :cond_8d

    .line 2017
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v10, v7, 0x2

    aput v10, v3, v4

    move v4, v6

    .line 2020
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_8d
    add-int/lit8 v6, v7, 0x6

    if-le v2, v6, :cond_120

    .line 2021
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v10, v7, 0x5

    aput v10, v3, v4

    move v4, v6

    goto/16 :goto_120

    .line 2023
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_9a
    add-int/lit8 v10, v7, 0x3

    if-le v2, v10, :cond_120

    .line 2024
    add-int/lit8 v10, v7, 0x2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    .line 2025
    .local v10, "c3":C
    add-int/lit8 v13, v7, 0x3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    .line 2026
    .local v13, "c4":C
    add-int/lit8 v14, v8, -0x30

    mul-int/lit8 v14, v14, 0x64

    add-int/lit8 v15, v9, -0x30

    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v14, v15

    add-int/lit8 v15, v10, -0x30

    add-int/2addr v14, v15

    .line 2027
    .local v14, "key3":I
    mul-int/lit8 v15, v14, 0xa

    add-int/lit8 v16, v13, -0x30

    add-int v15, v15, v16

    .line 2029
    .local v15, "key4":I
    if-eq v10, v11, :cond_10a

    sget-object v11, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->Germany_THREE_PART_REGION_CODES:[I

    invoke-static {v11, v14}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    if-ltz v11, :cond_cf

    const/16 v11, 0xd4

    if-ne v14, v11, :cond_10a

    if-ne v14, v11, :cond_cf

    if-eq v13, v6, :cond_cf

    goto :goto_10a

    .line 2039
    :cond_cf
    if-ne v8, v12, :cond_f3

    if-ne v8, v12, :cond_dc

    sget-object v6, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->Germany_FOUR_PART_REGION_CODES:[I

    invoke-static {v6, v15}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ltz v6, :cond_dc

    goto :goto_f3

    .line 2051
    :cond_dc
    add-int/lit8 v6, v7, 0x6

    if-le v2, v6, :cond_e7

    .line 2052
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x5

    aput v11, v3, v4

    move v4, v6

    .line 2055
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_e7
    add-int/lit8 v6, v7, 0x9

    if-le v2, v6, :cond_120

    .line 2056
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x8

    aput v11, v3, v4

    move v4, v6

    goto :goto_120

    .line 2041
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_f3
    :goto_f3
    add-int/lit8 v6, v7, 0x5

    if-le v2, v6, :cond_fe

    .line 2042
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x4

    aput v11, v3, v4

    move v4, v6

    .line 2045
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_fe
    add-int/lit8 v6, v7, 0x8

    if-le v2, v6, :cond_120

    .line 2046
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x7

    aput v11, v3, v4

    move v4, v6

    goto :goto_120

    .line 2031
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_10a
    :goto_10a
    add-int/lit8 v6, v7, 0x4

    if-le v2, v6, :cond_115

    .line 2032
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x3

    aput v11, v3, v4

    move v4, v6

    .line 2035
    .end local v6    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_115
    add-int/lit8 v6, v7, 0x7

    if-le v2, v6, :cond_120

    .line 2036
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v11, v7, 0x6

    aput v11, v3, v4

    move v4, v6

    .line 2060
    .end local v6    # "numDashes":I
    .end local v7    # "index":I
    .end local v8    # "c1":C
    .end local v9    # "c2":C
    .end local v10    # "c3":C
    .end local v13    # "c4":C
    .end local v14    # "key3":I
    .end local v15    # "key4":I
    .restart local v4    # "numDashes":I
    :cond_120
    :goto_120
    nop

    .line 2064
    :goto_121
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_122
    if-ge v6, v4, :cond_132

    .line 2065
    aget v7, v3, v6

    .line 2066
    .local v7, "pos":I
    add-int v8, v7, v6

    add-int v9, v7, v6

    const-string v10, "-"

    invoke-virtual {v0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    add-int/lit8 v6, v6, 0x1

    goto :goto_122

    .line 2068
    .end local v6    # "i":I
    .end local v7    # "pos":I
    :cond_132
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1020
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1021
    .local v0, "dashPositions":[I
    const/4 v1, 0x0

    .line 1023
    .local v1, "numDashes":I
    const/4 v2, -0x1

    if-ne p1, v2, :cond_9

    const/4 v2, 0x0

    goto :goto_b

    :cond_9
    add-int/lit8 v2, p1, 0x1

    .line 1025
    .local v2, "phoneNumPosition":I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x6

    if-lt v3, v4, :cond_1a

    .line 1026
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "numDashes":I
    .local v3, "numDashes":I
    add-int/lit8 v4, v2, 0x4

    aput v4, v0, v1

    move v1, v3

    .line 1028
    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    :cond_1a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v1, :cond_2b

    .line 1029
    aget v4, v0, v3

    .line 1030
    .local v4, "pos":I
    add-int v5, v4, v3

    add-int v6, v4, v3

    const-string v7, "-"

    invoke-virtual {p0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    .end local v4    # "pos":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1032
    .end local v3    # "i":I
    :cond_2b
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->removeTrailingDashes(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatIndiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 15
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1786
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1790
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 1791
    .local v2, "dashPositions":[I
    const/4 v3, 0x0

    .line 1792
    .local v3, "numDashes":I
    const/4 v4, -0x1

    if-ne p1, v4, :cond_d

    const/4 v4, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v4, p1, 0x1

    .line 1795
    .local v4, "phoneNumPosition":I
    :goto_f
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 1796
    .local v5, "c":C
    const/16 v6, 0x30

    if-lez v4, :cond_19

    if-ne v5, v6, :cond_1f

    :cond_19
    if-ne v5, v6, :cond_78

    add-int/lit8 v7, v4, 0x4

    if-le v0, v7, :cond_78

    .line 1798
    :cond_1f
    move v7, v4

    .line 1799
    .local v7, "index":I
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_28

    .line 1800
    add-int/lit8 v7, v7, 0x1

    .line 1802
    :cond_28
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1803
    .local v6, "c1":C
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 1804
    .local v8, "c2":C
    add-int/lit8 v9, v7, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 1805
    .local v9, "c3":C
    add-int/lit8 v10, v7, 0x3

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    .line 1807
    .local v10, "c4":C
    invoke-static {v6, v8, v9, v10}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->checkIndiaNumber(CCCC)I

    move-result v11

    .line 1809
    .local v11, "type":I
    if-nez v11, :cond_57

    .line 1810
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "numDashes":I
    .local v1, "numDashes":I
    add-int/lit8 v12, v7, 0x2

    aput v12, v2, v3

    .line 1812
    add-int/lit8 v3, v7, 0x7

    if-le v0, v3, :cond_55

    .line 1813
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v12, v7, 0x4

    aput v12, v2, v1

    goto :goto_89

    .line 1812
    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    :cond_55
    move v3, v1

    goto :goto_89

    .line 1815
    .end local v1    # "numDashes":I
    .restart local v3    # "numDashes":I
    :cond_57
    if-ne v11, v1, :cond_61

    .line 1817
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    add-int/lit8 v12, v7, 0x2

    aput v12, v2, v3

    move v3, v1

    goto :goto_89

    .line 1818
    .end local v1    # "numDashes":I
    .restart local v3    # "numDashes":I
    :cond_61
    const/4 v1, 0x3

    if-ne v11, v1, :cond_6c

    .line 1820
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    add-int/lit8 v12, v7, 0x3

    aput v12, v2, v3

    move v3, v1

    goto :goto_89

    .line 1823
    .end local v1    # "numDashes":I
    .restart local v3    # "numDashes":I
    :cond_6c
    add-int/lit8 v1, v7, 0x5

    if-le v0, v1, :cond_89

    .line 1824
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    add-int/lit8 v12, v7, 0x4

    aput v12, v2, v3

    move v3, v1

    goto :goto_89

    .line 1827
    .end local v1    # "numDashes":I
    .end local v6    # "c1":C
    .end local v7    # "index":I
    .end local v8    # "c2":C
    .end local v9    # "c3":C
    .end local v10    # "c4":C
    .end local v11    # "type":I
    .restart local v3    # "numDashes":I
    :cond_78
    add-int/lit8 v1, v4, 0x8

    if-le v0, v1, :cond_89

    .line 1829
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v1    # "numDashes":I
    add-int/lit8 v6, v4, 0x2

    aput v6, v2, v3

    .line 1830
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v6, v4, 0x4

    aput v6, v2, v1

    goto :goto_8a

    .line 1827
    :cond_89
    :goto_89
    nop

    .line 1833
    :goto_8a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8b
    if-ge v1, v3, :cond_9b

    .line 1834
    aget v6, v2, v1

    .line 1835
    .local v6, "pos":I
    add-int v7, v6, v1

    add-int v8, v6, v1

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 1837
    .end local v1    # "i":I
    .end local v6    # "pos":I
    :cond_9b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatIndonesiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 12
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1474
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1478
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1479
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1480
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 1482
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x38

    const/16 v5, 0x30

    if-gtz v3, :cond_64

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1c

    goto :goto_64

    .line 1529
    :cond_1c
    add-int/lit8 v5, v3, 0x7

    if-ne v0, v5, :cond_29

    .line 1530
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_f1

    .line 1531
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_29
    add-int/lit8 v5, v3, 0x8

    if-ne v0, v5, :cond_36

    .line 1533
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_f1

    .line 1534
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_36
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_f1

    .line 1535
    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_52

    add-int/lit8 v4, v3, 0xa

    if-gt v0, v4, :cond_52

    .line 1536
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    .line 1537
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x6

    aput v5, v1, v4

    goto/16 :goto_f1

    .line 1538
    :cond_52
    add-int/lit8 v4, v3, 0xa

    if-le v0, v4, :cond_f1

    .line 1539
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    .line 1540
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x7

    aput v5, v1, v4

    goto/16 :goto_f1

    .line 1483
    :cond_64
    :goto_64
    move v6, v3

    .line 1484
    .local v6, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_6d

    .line 1485
    add-int/lit8 v6, v6, 0x1

    .line 1487
    :cond_6d
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 1488
    .local v5, "c1":C
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 1489
    .local v7, "c2":C
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 1491
    .local v8, "c3":C
    if-ne v5, v4, :cond_a5

    .line 1493
    add-int/lit8 v4, v6, 0x5

    if-le v0, v4, :cond_8a

    .line 1494
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x3

    aput v9, v1, v2

    move v2, v4

    .line 1497
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_8a
    add-int/lit8 v4, v6, 0x8

    if-lt v0, v4, :cond_99

    add-int/lit8 v4, v6, 0xa

    if-gt v0, v4, :cond_99

    .line 1498
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x6

    aput v9, v1, v2

    move v2, v4

    .line 1501
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_99
    add-int/lit8 v4, v6, 0xa

    if-le v0, v4, :cond_f0

    .line 1502
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x7

    aput v9, v1, v2

    move v2, v4

    goto :goto_f0

    .line 1504
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_a5
    const/16 v4, 0x32

    const/16 v9, 0x31

    if-ne v5, v4, :cond_b3

    if-eq v7, v9, :cond_c3

    if-eq v7, v4, :cond_c3

    const/16 v4, 0x34

    if-eq v7, v4, :cond_c3

    :cond_b3
    const/16 v4, 0x33

    if-ne v5, v4, :cond_b9

    if-eq v7, v9, :cond_c3

    :cond_b9
    const/16 v4, 0x36

    if-ne v5, v4, :cond_da

    if-ne v7, v9, :cond_da

    const/16 v4, 0x39

    if-eq v8, v4, :cond_da

    .line 1509
    :cond_c3
    add-int/lit8 v4, v6, 0x3

    if-le v0, v4, :cond_ce

    .line 1510
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x2

    aput v9, v1, v2

    move v2, v4

    .line 1513
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_ce
    add-int/lit8 v4, v6, 0x7

    if-le v0, v4, :cond_f0

    .line 1514
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x6

    aput v9, v1, v2

    move v2, v4

    goto :goto_f0

    .line 1519
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_da
    add-int/lit8 v4, v6, 0x4

    if-le v0, v4, :cond_e5

    .line 1520
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x3

    aput v9, v1, v2

    move v2, v4

    .line 1523
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_e5
    add-int/lit8 v4, v6, 0x7

    if-le v0, v4, :cond_f0

    .line 1524
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v9, v6, 0x6

    aput v9, v1, v2

    move v2, v4

    .line 1527
    .end local v4    # "numDashes":I
    .end local v5    # "c1":C
    .end local v6    # "index":I
    .end local v7    # "c2":C
    .end local v8    # "c3":C
    .restart local v2    # "numDashes":I
    :cond_f0
    :goto_f0
    nop

    .line 1545
    :cond_f1
    :goto_f1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f2
    if-ge v4, v2, :cond_102

    .line 1546
    aget v5, v1, v4

    .line 1547
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    add-int/lit8 v4, v4, 0x1

    goto :goto_f2

    .line 1549
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatItalyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 13
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 2108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2112
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2113
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 2114
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 2115
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x30

    if-gtz v3, :cond_56

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1a

    goto :goto_56

    .line 2157
    :cond_1a
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 2158
    .local v4, "c1":C
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 2159
    .local v5, "c2":C
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 2160
    .local v6, "c3":C
    add-int/lit8 v7, v4, -0x30

    mul-int/lit8 v7, v7, 0x64

    add-int/lit8 v8, v5, -0x30

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v7, v8

    add-int/lit8 v8, v6, -0x30

    add-int/2addr v7, v8

    .line 2161
    .local v7, "key":I
    sget-object v8, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->ITALY_MOBILE_PREFIXS:[I

    invoke-static {v8, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    if-ltz v8, :cond_d2

    .line 2163
    add-int/lit8 v8, v3, 0x5

    if-le v0, v8, :cond_49

    .line 2164
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .local v8, "numDashes":I
    add-int/lit8 v9, v3, 0x3

    aput v9, v1, v2

    move v2, v8

    .line 2167
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_49
    add-int/lit8 v8, v3, 0x7

    if-le v0, v8, :cond_d2

    .line 2168
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v3, 0x6

    aput v9, v1, v2

    move v2, v8

    goto/16 :goto_d2

    .line 2116
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    .end local v6    # "c3":C
    .end local v7    # "key":I
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_56
    :goto_56
    move v5, v3

    .line 2117
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_5f

    .line 2118
    add-int/lit8 v5, v5, 0x1

    .line 2120
    :cond_5f
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 2121
    .local v6, "c1":C
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 2122
    .local v7, "c2":C
    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 2123
    .local v8, "c3":C
    add-int/lit8 v9, v6, -0x30

    mul-int/lit8 v9, v9, 0x64

    add-int/lit8 v10, v7, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v9, v10

    add-int/lit8 v10, v8, -0x30

    add-int/2addr v9, v10

    .line 2125
    .local v9, "key":I
    sget-object v10, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->ITALY_MOBILE_PREFIXS:[I

    invoke-static {v10, v9}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v10

    if-ltz v10, :cond_9a

    .line 2127
    add-int/lit8 v4, v5, 0x5

    if-le v0, v4, :cond_8e

    .line 2128
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v10, v5, 0x3

    aput v10, v1, v2

    move v2, v4

    .line 2131
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_8e
    add-int/lit8 v4, v5, 0x8

    if-le v0, v4, :cond_d1

    .line 2132
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v10, v5, 0x6

    aput v10, v1, v2

    move v2, v4

    goto :goto_d1

    .line 2134
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_9a
    const/16 v10, 0x32

    if-eq v6, v10, :cond_ca

    const/16 v10, 0x36

    if-ne v6, v10, :cond_a3

    goto :goto_ca

    .line 2138
    :cond_a3
    if-eq v7, v4, :cond_be

    const/16 v4, 0x31

    if-eq v7, v4, :cond_be

    const/16 v4, 0x35

    if-eq v7, v4, :cond_be

    const/16 v4, 0x39

    if-ne v7, v4, :cond_b2

    goto :goto_be

    .line 2152
    :cond_b2
    add-int/lit8 v4, v5, 0x5

    if-le v0, v4, :cond_d1

    .line 2153
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v10, v5, 0x3

    aput v10, v1, v2

    move v2, v4

    goto :goto_d1

    .line 2147
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_be
    :goto_be
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_d1

    .line 2148
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v10, v5, 0x2

    aput v10, v1, v2

    move v2, v4

    goto :goto_d1

    .line 2137
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_ca
    :goto_ca
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v10, v5, 0x1

    aput v10, v1, v2

    move v2, v4

    .line 2156
    .end local v4    # "numDashes":I
    .end local v5    # "index":I
    .end local v6    # "c1":C
    .end local v7    # "c2":C
    .end local v8    # "c3":C
    .end local v9    # "key":I
    .restart local v2    # "numDashes":I
    :cond_d1
    :goto_d1
    nop

    .line 2173
    :cond_d2
    :goto_d2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d3
    if-ge v4, v2, :cond_e3

    .line 2174
    aget v5, v1, v4

    .line 2175
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    add-int/lit8 v4, v4, 0x1

    goto :goto_d3

    .line 2177
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_e3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatMacauNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 992
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_7

    :cond_5
    add-int/lit8 v0, p1, 0x1

    .line 994
    .local v0, "phoneNumPosition":I
    :goto_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_29

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_29

    .line 995
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, 0x2

    const-string v3, " "

    invoke-virtual {p0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    add-int/lit8 v1, p1, 0x3

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 998
    :cond_29
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatMalaysiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1575
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1579
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1580
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1581
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 1583
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x31

    const/16 v5, 0x32

    const/16 v6, 0x30

    if-gtz v3, :cond_4e

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1e

    goto :goto_4e

    .line 1620
    :cond_1e
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_36

    add-int/lit8 v5, v3, 0x8

    if-le v0, v5, :cond_36

    .line 1622
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x1

    aput v5, v1, v2

    .line 1624
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x5

    aput v5, v1, v4

    goto/16 :goto_b5

    .line 1625
    :cond_36
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_b5

    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_b5

    .line 1627
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    .line 1628
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x5

    aput v5, v1, v4

    goto/16 :goto_b5

    .line 1584
    :cond_4e
    :goto_4e
    move v7, v3

    .line 1585
    .local v7, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_57

    .line 1586
    add-int/lit8 v7, v7, 0x1

    .line 1588
    :cond_57
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1590
    .local v6, "c1":C
    const/16 v8, 0x33

    if-lt v6, v8, :cond_63

    const/16 v8, 0x37

    if-le v6, v8, :cond_67

    :cond_63
    const/16 v8, 0x39

    if-ne v6, v8, :cond_73

    .line 1592
    :cond_67
    add-int/lit8 v4, v7, 0x4

    if-le v0, v4, :cond_b4

    .line 1593
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x1

    aput v5, v1, v2

    move v2, v4

    goto :goto_b4

    .line 1595
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_73
    const/16 v8, 0x38

    if-ne v6, v8, :cond_83

    .line 1597
    add-int/lit8 v4, v7, 0x4

    if-le v0, v4, :cond_b4

    .line 1598
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x2

    aput v5, v1, v2

    move v2, v4

    goto :goto_b4

    .line 1600
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_83
    if-ne v6, v4, :cond_9c

    .line 1603
    add-int/lit8 v4, v7, 0x4

    if-le v0, v4, :cond_90

    .line 1604
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x2

    aput v5, v1, v2

    move v2, v4

    .line 1607
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_90
    add-int/lit8 v4, v7, 0x6

    if-le v0, v4, :cond_b4

    .line 1608
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x5

    aput v5, v1, v2

    move v2, v4

    goto :goto_b4

    .line 1610
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_9c
    if-ne v6, v5, :cond_b4

    .line 1612
    add-int/lit8 v4, v7, 0x4

    if-le v0, v4, :cond_a9

    .line 1613
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x1

    aput v5, v1, v2

    move v2, v4

    .line 1616
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_a9
    add-int/lit8 v4, v7, 0x7

    if-le v0, v4, :cond_b4

    .line 1617
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v7, 0x5

    aput v5, v1, v2

    move v2, v4

    .line 1620
    .end local v4    # "numDashes":I
    .end local v6    # "c1":C
    .end local v7    # "index":I
    .restart local v2    # "numDashes":I
    :cond_b4
    :goto_b4
    nop

    .line 1631
    :cond_b5
    :goto_b5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b6
    if-ge v4, v2, :cond_c6

    .line 1632
    aget v5, v1, v4

    .line 1633
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    .line 1635
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_c6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatNewZealandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1322
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1326
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1327
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1328
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 1330
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x30

    if-gtz v3, :cond_2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1a

    goto :goto_2b

    .line 1358
    :cond_1a
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(I)V

    .line 1359
    add-int/lit8 v4, v3, 0x7

    if-ne v0, v4, :cond_74

    .line 1360
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto :goto_74

    .line 1331
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2b
    :goto_2b
    move v5, v3

    .line 1332
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_34

    .line 1333
    add-int/lit8 v5, v5, 0x1

    .line 1336
    :cond_34
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x32

    if-ne v4, v6, :cond_5d

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x34

    if-eq v4, v6, :cond_5d

    .line 1338
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_51

    .line 1339
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x2

    aput v6, v1, v2

    move v2, v4

    .line 1342
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_51
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_73

    .line 1343
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x5

    aput v6, v1, v2

    move v2, v4

    goto :goto_73

    .line 1347
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_5d
    add-int/lit8 v4, v5, 0x3

    if-le v0, v4, :cond_68

    .line 1348
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x1

    aput v6, v1, v2

    move v2, v4

    .line 1351
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_68
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_73

    .line 1352
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x4

    aput v6, v1, v2

    move v2, v4

    .line 1355
    .end local v4    # "numDashes":I
    .end local v5    # "index":I
    .restart local v2    # "numDashes":I
    :cond_73
    :goto_73
    nop

    .line 1364
    :cond_74
    :goto_74
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_75
    if-ge v4, v2, :cond_85

    .line 1365
    aget v5, v1, v4

    .line 1366
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 1368
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;

    .line 339
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 340
    .local v0, "sCachedLocale":Ljava/util/Locale;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MTK Format Number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 412
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->checkInputNormalNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal Number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", do nothing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 414
    return-object p0

    .line 416
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 417
    const/4 v0, 0x1

    if-nez p1, :cond_4a

    move v1, v0

    goto :goto_4b

    :cond_4a
    move v1, p1

    .line 418
    .local v1, "formatType":I
    :goto_4b
    move-object v2, p0

    .line 419
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_86

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_86

    .line 420
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x31

    if-ne v3, v5, :cond_66

    .line 421
    const/4 v1, 0x1

    goto :goto_86

    .line 422
    :cond_66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x3

    if-lt v3, v6, :cond_7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x38

    if-ne v3, v6, :cond_7d

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_7d

    .line 423
    const/4 v1, 0x2

    goto :goto_86

    .line 424
    :cond_7d
    if-eq v1, v0, :cond_81

    if-ne v1, v4, :cond_86

    .line 425
    :cond_81
    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 426
    .end local v2    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 429
    .end local v0    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_86
    :goto_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatNumber:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 430
    packed-switch v1, :pswitch_data_a8

    .line 436
    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .end local v2    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_a7

    .line 433
    .end local v0    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :pswitch_a2
    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .end local v2    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    nop

    .line 439
    :goto_a7
    return-object v0

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_a2
    .end packed-switch
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .registers 10
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_50

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 358
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 359
    .local v1, "oldIndex":I
    move v2, v1

    .line 360
    .local v2, "digitCount":I
    const/4 v3, 0x0

    .line 362
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_1b
    const/16 v4, 0x2d

    const/16 v5, 0x20

    if-ge v3, v1, :cond_2e

    .line 363
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 364
    .local v6, "c":C
    if-eq v6, v5, :cond_29

    if-ne v6, v4, :cond_2b

    .line 365
    :cond_29
    add-int/lit8 v2, v2, -0x1

    .line 362
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 369
    .end local v6    # "c":C
    :cond_2e
    const/4 v6, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {p0, v6, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 372
    const/4 v6, 0x0

    .line 373
    .local v6, "count":I
    const/4 v3, 0x0

    :goto_38
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v7

    if-ge v3, v7, :cond_4d

    if-ge v6, v2, :cond_4d

    .line 374
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    .line 375
    .local v7, "c":C
    if-eq v7, v5, :cond_4a

    if-eq v7, v4, :cond_4a

    .line 376
    add-int/lit8 v6, v6, 0x1

    .line 373
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 379
    .end local v7    # "c":C
    :cond_4d
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 383
    .end local v1    # "oldIndex":I
    .end local v2    # "digitCount":I
    .end local v3    # "i":I
    .end local v6    # "count":I
    :cond_50
    return-void
.end method

.method private static formatPolandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1208
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1212
    .local v0, "length":I
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 1213
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1214
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 1216
    .local v3, "phoneNumPosition":I
    :goto_f
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x35

    if-lt v4, v5, :cond_41

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x38

    if-gt v4, v5, :cond_41

    .line 1217
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_2a

    .line 1218
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    move v2, v4

    .line 1220
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2a
    add-int/lit8 v4, v3, 0x6

    if-le v0, v4, :cond_35

    .line 1221
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x5

    aput v5, v1, v2

    move v2, v4

    .line 1223
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_35
    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_57

    .line 1224
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x7

    aput v5, v1, v2

    move v2, v4

    goto :goto_57

    .line 1227
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_41
    add-int/lit8 v4, v3, 0x5

    if-le v0, v4, :cond_4c

    .line 1228
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 1230
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_4c
    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_57

    .line 1231
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x6

    aput v5, v1, v2

    move v2, v4

    .line 1235
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_57
    :goto_57
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_58
    if-ge v4, v2, :cond_68

    .line 1236
    aget v5, v1, v4

    .line 1237
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 1239
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatPortugalNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1128
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1129
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1130
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 1131
    .local v3, "phoneNumPosition":I
    :goto_f
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_1a

    .line 1132
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    move v2, v4

    .line 1134
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_1a
    add-int/lit8 v4, v3, 0x8

    if-le v0, v4, :cond_25

    .line 1135
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x5

    aput v5, v1, v2

    move v2, v4

    .line 1137
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_25
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    if-ge v4, v2, :cond_36

    .line 1138
    aget v5, v1, v4

    .line 1139
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .end local v5    # "pos":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1141
    .end local v4    # "i":I
    :cond_36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatRussianNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1859
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1863
    .local v0, "length":I
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 1864
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1865
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 1867
    .local v3, "phoneNumPosition":I
    :goto_f
    if-lez v3, :cond_33

    .line 1869
    add-int/lit8 v4, v3, 0x5

    if-le v0, v4, :cond_1c

    .line 1870
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 1873
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_1c
    add-int/lit8 v4, v3, 0x7

    if-le v0, v4, :cond_27

    .line 1874
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x6

    aput v5, v1, v2

    move v2, v4

    .line 1877
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_27
    add-int/lit8 v4, v3, 0x9

    if-le v0, v4, :cond_70

    .line 1878
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x8

    aput v5, v1, v2

    move v2, v4

    goto :goto_70

    .line 1880
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_33
    add-int/lit8 v4, v3, 0x6

    if-ne v0, v4, :cond_44

    .line 1882
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x2

    aput v5, v1, v2

    .line 1883
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v4

    goto :goto_70

    .line 1884
    :cond_44
    add-int/lit8 v4, v3, 0x7

    if-ne v0, v4, :cond_55

    .line 1886
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    .line 1887
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x5

    aput v5, v1, v4

    goto :goto_70

    .line 1888
    :cond_55
    add-int/lit8 v4, v3, 0x8

    if-lt v0, v4, :cond_70

    .line 1890
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    .line 1891
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v5, v3, 0x6

    aput v5, v1, v4

    .line 1893
    add-int/lit8 v4, v3, 0x9

    if-le v0, v4, :cond_70

    .line 1894
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x8

    aput v5, v1, v2

    move v2, v4

    .line 1898
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_70
    :goto_70
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_71
    if-ge v4, v2, :cond_81

    .line 1899
    aget v5, v1, v4

    .line 1900
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 1902
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatSpainNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1652
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1656
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1657
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1658
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 1660
    .local v3, "phoneNumPosition":I
    :goto_f
    add-int/lit8 v4, v3, 0x5

    if-le v0, v4, :cond_1a

    .line 1661
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    .line 1664
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_1a
    add-int/lit8 v4, v3, 0x7

    if-le v0, v4, :cond_25

    .line 1665
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x6

    aput v5, v1, v2

    move v2, v4

    .line 1668
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_25
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    if-ge v4, v2, :cond_36

    .line 1669
    aget v5, v1, v4

    .line 1670
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1672
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatTaiwanNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 15
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 907
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 911
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 912
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 913
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 915
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x30

    if-gtz v3, :cond_38

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1a

    goto :goto_38

    .line 965
    :cond_1a
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_2b

    add-int/lit8 v4, v3, 0x8

    if-ge v0, v4, :cond_2b

    .line 966
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_f0

    .line 967
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_2b
    add-int/lit8 v4, v3, 0x8

    if-lt v0, v4, :cond_f0

    .line 968
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v5, v3, 0x4

    aput v5, v1, v2

    move v2, v4

    goto/16 :goto_f0

    .line 916
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_38
    :goto_38
    move v5, v3

    .line 917
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_41

    .line 918
    add-int/lit8 v5, v5, 0x1

    .line 920
    :cond_41
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 921
    .local v4, "c1":C
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 922
    .local v6, "c2":C
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 924
    .local v7, "c3":C
    const/16 v8, 0x39

    if-ne v4, v8, :cond_6d

    .line 930
    add-int/lit8 v8, v5, 0x4

    if-le v0, v8, :cond_60

    .line 931
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .local v8, "numDashes":I
    add-int/lit8 v9, v5, 0x3

    aput v9, v1, v2

    move v2, v8

    .line 933
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_60
    add-int/lit8 v8, v5, 0x7

    if-le v0, v8, :cond_ef

    .line 934
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v2

    move v2, v8

    goto/16 :goto_ef

    .line 936
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_6d
    const/16 v9, 0x36

    const/16 v10, 0x32

    const/16 v11, 0x38

    if-ne v4, v11, :cond_79

    if-ne v6, v10, :cond_79

    if-eq v7, v9, :cond_81

    :cond_79
    const/16 v12, 0x33

    if-ne v4, v11, :cond_98

    if-ne v6, v12, :cond_98

    if-ne v7, v9, :cond_98

    .line 938
    :cond_81
    add-int/lit8 v8, v5, 0x4

    if-le v0, v8, :cond_8c

    .line 939
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x3

    aput v9, v1, v2

    move v2, v8

    .line 942
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_8c
    add-int/lit8 v8, v5, 0x7

    if-le v0, v8, :cond_ef

    .line 943
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v2

    move v2, v8

    goto :goto_ef

    .line 945
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_98
    if-ne v4, v12, :cond_9e

    const/16 v9, 0x37

    if-eq v6, v9, :cond_ac

    :cond_9e
    const/16 v9, 0x34

    if-ne v4, v9, :cond_a4

    if-eq v6, v8, :cond_ac

    :cond_a4
    if-ne v4, v11, :cond_a8

    if-eq v6, v8, :cond_ac

    :cond_a8
    if-ne v4, v11, :cond_ce

    if-ne v6, v10, :cond_ce

    .line 947
    :cond_ac
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x2

    aput v9, v1, v2

    .line 949
    add-int/lit8 v2, v5, 0x6

    if-le v0, v2, :cond_c1

    add-int/lit8 v2, v5, 0xa

    if-ge v0, v2, :cond_c1

    .line 950
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x5

    aput v9, v1, v8

    goto :goto_ef

    .line 951
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_c1
    add-int/lit8 v2, v5, 0xa

    if-lt v0, v2, :cond_cc

    .line 952
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x6

    aput v9, v1, v8

    goto :goto_ef

    .line 951
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_cc
    move v2, v8

    goto :goto_ef

    .line 956
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_ce
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v9, v5, 0x1

    aput v9, v1, v2

    .line 958
    add-int/lit8 v2, v5, 0x6

    if-le v0, v2, :cond_e3

    add-int/lit8 v2, v5, 0x9

    if-ge v0, v2, :cond_e3

    .line 959
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x4

    aput v9, v1, v8

    goto :goto_ef

    .line 960
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_e3
    add-int/lit8 v2, v5, 0x9

    if-lt v0, v2, :cond_ee

    .line 961
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v9, v5, 0x5

    aput v9, v1, v8

    goto :goto_ef

    .line 960
    .end local v2    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_ee
    move v2, v8

    .line 964
    .end local v4    # "c1":C
    .end local v5    # "index":I
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_ef
    :goto_ef
    nop

    .line 971
    :cond_f0
    :goto_f0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f1
    if-ge v4, v2, :cond_101

    .line 972
    aget v5, v1, v4

    .line 973
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .end local v5    # "pos":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_f1

    .line 975
    .end local v4    # "i":I
    :cond_101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatThailandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1388
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1392
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1393
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1394
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 1396
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x30

    if-gtz v3, :cond_19

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_76

    .line 1397
    :cond_19
    move v5, v3

    .line 1398
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_22

    .line 1399
    add-int/lit8 v5, v5, 0x1

    .line 1402
    :cond_22
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x38

    if-ne v4, v6, :cond_41

    .line 1404
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_35

    .line 1405
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v6, v5, 0x2

    aput v6, v1, v2

    move v2, v4

    .line 1408
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_35
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_76

    .line 1409
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x5

    aput v6, v1, v2

    move v2, v4

    goto :goto_76

    .line 1411
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_41
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x32

    if-ne v4, v6, :cond_60

    .line 1413
    add-int/lit8 v4, v5, 0x3

    if-le v0, v4, :cond_54

    .line 1414
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x1

    aput v6, v1, v2

    move v2, v4

    .line 1417
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_54
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_76

    .line 1418
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x4

    aput v6, v1, v2

    move v2, v4

    goto :goto_76

    .line 1422
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_60
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_6b

    .line 1423
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x2

    aput v6, v1, v2

    move v2, v4

    .line 1426
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_6b
    add-int/lit8 v4, v5, 0x6

    if-le v0, v4, :cond_76

    .line 1427
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x5

    aput v6, v1, v2

    move v2, v4

    .line 1441
    .end local v4    # "numDashes":I
    .end local v5    # "index":I
    .restart local v2    # "numDashes":I
    :cond_76
    :goto_76
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_77
    if-ge v4, v2, :cond_87

    .line 1442
    aget v5, v1, v4

    .line 1443
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 1445
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatTurkeyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 2383
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2387
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2388
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 2389
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 2390
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x30

    if-gtz v3, :cond_26

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1a

    goto :goto_26

    .line 2405
    :cond_1a
    add-int/lit8 v4, v3, 0x4

    if-le v0, v4, :cond_46

    .line 2406
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v5, v3, 0x3

    aput v5, v1, v2

    move v2, v4

    goto :goto_46

    .line 2391
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_26
    :goto_26
    move v5, v3

    .line 2392
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_2f

    .line 2393
    add-int/lit8 v5, v5, 0x1

    .line 2396
    :cond_2f
    add-int/lit8 v4, v5, 0x4

    if-le v0, v4, :cond_3a

    .line 2397
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x3

    aput v6, v1, v2

    move v2, v4

    .line 2400
    .end local v4    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_3a
    add-int/lit8 v4, v5, 0x7

    if-le v0, v4, :cond_45

    .line 2401
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v6, v5, 0x6

    aput v6, v1, v2

    move v2, v4

    .line 2403
    .end local v4    # "numDashes":I
    .end local v5    # "index":I
    .restart local v2    # "numDashes":I
    :cond_45
    nop

    .line 2410
    :cond_46
    :goto_46
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_47
    if-ge v4, v2, :cond_57

    .line 2411
    aget v5, v1, v4

    .line 2412
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 2414
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatVietnamNubmer(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 14
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .line 1056
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1060
    .local v0, "length":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1061
    .local v1, "dashPositions":[I
    const/4 v2, 0x0

    .line 1062
    .local v2, "numDashes":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    add-int/lit8 v3, p1, 0x1

    .line 1064
    .local v3, "phoneNumPosition":I
    :goto_f
    const/16 v4, 0x30

    if-gtz v3, :cond_19

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_a7

    .line 1065
    :cond_19
    move v5, v3

    .line 1066
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_22

    .line 1067
    add-int/lit8 v5, v5, 0x1

    .line 1069
    :cond_22
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 1070
    .local v4, "c1":C
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1072
    .local v6, "c2":C
    const/16 v7, 0x34

    if-eq v4, v7, :cond_a0

    const/16 v8, 0x38

    if-ne v4, v8, :cond_36

    goto/16 :goto_a0

    .line 1074
    :cond_36
    const/16 v9, 0x33

    const/16 v10, 0x32

    const/16 v11, 0x31

    if-ne v4, v10, :cond_46

    if-eq v6, v11, :cond_5c

    if-eq v6, v9, :cond_5c

    if-eq v6, v7, :cond_5c

    if-eq v6, v8, :cond_5c

    :cond_46
    const/16 v7, 0x35

    if-ne v4, v9, :cond_4e

    if-eq v6, v10, :cond_5c

    if-eq v6, v7, :cond_5c

    :cond_4e
    const/16 v9, 0x36

    if-ne v4, v9, :cond_54

    if-eq v6, v7, :cond_5c

    :cond_54
    const/16 v7, 0x37

    if-ne v4, v7, :cond_68

    if-eq v6, v11, :cond_5c

    if-ne v6, v8, :cond_68

    .line 1079
    :cond_5c
    add-int/lit8 v7, v5, 0x4

    if-le v0, v7, :cond_a7

    .line 1080
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .local v7, "numDashes":I
    add-int/lit8 v8, v5, 0x3

    aput v8, v1, v2

    move v2, v7

    goto :goto_a7

    .line 1082
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_68
    const/16 v7, 0x39

    if-ne v4, v7, :cond_7f

    .line 1084
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v8, v5, 0x2

    aput v8, v1, v2

    .line 1086
    add-int/lit8 v2, v5, 0x6

    if-le v0, v2, :cond_7d

    .line 1087
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    add-int/lit8 v8, v5, 0x5

    aput v8, v1, v7

    goto :goto_a7

    .line 1086
    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    :cond_7d
    move v2, v7

    goto :goto_a7

    .line 1089
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_7f
    if-ne v4, v11, :cond_98

    .line 1091
    add-int/lit8 v7, v5, 0x4

    if-le v0, v7, :cond_8c

    .line 1092
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v8, v5, 0x3

    aput v8, v1, v2

    move v2, v7

    .line 1095
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_8c
    add-int/lit8 v7, v5, 0x7

    if-le v0, v7, :cond_a7

    .line 1096
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v8, v5, 0x6

    aput v8, v1, v2

    move v2, v7

    goto :goto_a7

    .line 1100
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_98
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v8, v5, 0x2

    aput v8, v1, v2

    move v2, v7

    goto :goto_a7

    .line 1073
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_a0
    :goto_a0
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v8, v5, 0x1

    aput v8, v1, v2

    move v2, v7

    .line 1103
    .end local v4    # "c1":C
    .end local v5    # "index":I
    .end local v6    # "c2":C
    .end local v7    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_a7
    :goto_a7
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a8
    if-ge v4, v2, :cond_b8

    .line 1104
    aget v5, v1, v4

    .line 1105
    .local v5, "pos":I
    add-int v6, v5, v4

    add-int v7, v5, v4

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .end local v5    # "pos":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_a8

    .line 1107
    .end local v4    # "i":I
    :cond_b8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static getDefaultSimCountryIso()Ljava/lang/String;
    .registers 5

    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "simId":I
    const/4 v1, 0x0

    .line 272
    .local v1, "iso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 273
    const/4 v0, 0x0

    goto :goto_35

    .line 274
    :cond_f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 275
    const/4 v0, 0x1

    goto :goto_35

    .line 276
    :cond_1c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 277
    const/4 v0, 0x2

    goto :goto_35

    .line 278
    :cond_29
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 279
    const/4 v0, 0x3

    .line 281
    :cond_35
    :goto_35
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 282
    .local v2, "subId":[I
    if-eqz v2, :cond_47

    array-length v4, v2

    if-lez v4, :cond_47

    .line 283
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    aget v3, v2, v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    :cond_47
    return-object v1
.end method

.method private static getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I
    .registers 12
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "prefixs"    # [Ljava/lang/String;

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "result":I
    const/4 v1, 0x0

    .line 631
    .local v1, "index":I
    const/4 v2, 0x0

    .line 632
    .local v2, "startIndex":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 634
    .local v3, "match":[I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_11

    .line 635
    const/4 v2, 0x1

    goto :goto_25

    .line 638
    :cond_11
    array-length v5, p1

    move v6, v4

    :goto_13
    if-ge v6, v5, :cond_25

    aget-object v7, p1, v6

    .line 639
    .local v7, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 640
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 641
    goto :goto_25

    .line 638
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 646
    :cond_25
    :goto_25
    if-lez v2, :cond_41

    .line 647
    sget-object v5, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    array-length v6, v5

    move v7, v4

    :goto_2b
    if-ge v7, v6, :cond_41

    aget-object v8, v5, v7

    .line 648
    .local v8, "pattern":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 649
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 650
    move v0, v1

    .line 651
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 652
    goto :goto_41

    .line 647
    .end local v8    # "pattern":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 656
    :cond_41
    :goto_41
    if-nez v0, :cond_44

    .line 657
    const/4 v2, 0x0

    .line 659
    :cond_44
    aput v2, v3, v4

    .line 660
    const/4 v4, 0x1

    aput v0, v3, v4

    .line 661
    return-object v3
.end method

.method private static getFormatTypeByCommonPrefix(Ljava/lang/String;)[I
    .registers 12
    .param p0, "text"    # Ljava/lang/String;

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "result":I
    const/4 v1, 0x0

    .line 594
    .local v1, "index":I
    const/4 v2, 0x0

    .line 595
    .local v2, "startIndex":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 597
    .local v3, "match":[I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_18

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x2b

    if-ne v4, v7, :cond_18

    .line 598
    const/4 v2, 0x1

    goto :goto_2d

    .line 599
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_2d

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x30

    if-ne v4, v7, :cond_2d

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_2d

    .line 600
    const/4 v2, 0x2

    .line 602
    :cond_2d
    :goto_2d
    if-eqz v2, :cond_49

    .line 603
    sget-object v4, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    array-length v7, v4

    move v8, v5

    :goto_33
    if-ge v8, v7, :cond_49

    aget-object v9, v4, v8

    .line 604
    .local v9, "pattern":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 605
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_46

    .line 606
    move v0, v1

    .line 607
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 608
    goto :goto_49

    .line 603
    .end local v9    # "pattern":Ljava/lang/String;
    :cond_46
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    .line 612
    :cond_49
    :goto_49
    if-nez v0, :cond_4c

    .line 613
    const/4 v2, 0x0

    .line 615
    :cond_4c
    aput v2, v3, v5

    .line 616
    aput v0, v3, v6

    .line 617
    return-object v3
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 256
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getDefaultSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "simIso":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFormatTypeForLocale Get sim sio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 258
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .registers 8
    .param p0, "country"    # Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "type":I
    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_30

    .line 311
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatTypeFromCountryCodeInternal(Ljava/lang/String;)I

    move-result v0

    .line 313
    if-nez v0, :cond_30

    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "index":I
    sget-object v2, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FORMAT_COUNTRY_NAMES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_25

    aget-object v5, v2, v4

    .line 316
    .local v5, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 317
    invoke-virtual {v5, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_22

    .line 318
    move v0, v1

    .line 319
    goto :goto_25

    .line 315
    .end local v5    # "name":Ljava/lang/String;
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 323
    :cond_25
    :goto_25
    if-nez v0, :cond_30

    const-string v2, "UK"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_30

    .line 324
    const/4 v0, 0x7

    .line 328
    .end local v1    # "index":I
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get Format Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 329
    return v0
.end method

.method private static getFormatTypeFromCountryCodeInternal(Ljava/lang/String;)I
    .registers 4
    .param p0, "country"    # Ljava/lang/String;

    .line 291
    sget-object v0, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v0, v0

    .line 292
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 293
    sget-object v2, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 294
    const/4 v2, 0x1

    return v2

    .line 292
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 297
    .end local v1    # "i":I
    :cond_15
    const-string v1, "jp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    .line 298
    const/4 v1, 0x2

    return v1

    .line 300
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method private static getFormatTypeFromNumber(Ljava/lang/String;I)[I
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultFormatType"    # I

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "match":[I
    packed-switch p1, :pswitch_data_52

    goto :goto_50

    .line 722
    :pswitch_5
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_50

    .line 719
    :pswitch_c
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 720
    goto :goto_50

    .line 716
    :pswitch_13
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 717
    goto :goto_50

    .line 713
    :pswitch_1a
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 714
    goto :goto_50

    .line 710
    :pswitch_21
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 711
    goto :goto_50

    .line 707
    :pswitch_28
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 708
    goto :goto_50

    .line 695
    :pswitch_2f
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 696
    goto :goto_50

    .line 698
    :pswitch_36
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 699
    goto :goto_50

    .line 692
    :pswitch_3d
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatTypeByCommonPrefix(Ljava/lang/String;)[I

    move-result-object v0

    .line 693
    goto :goto_50

    .line 704
    :pswitch_42
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 705
    goto :goto_50

    .line 701
    :pswitch_49
    sget-object v1, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 702
    nop

    .line 725
    :goto_50
    return-object v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_49
        :pswitch_42
        :pswitch_3d
        :pswitch_36
        :pswitch_3d
        :pswitch_2f
        :pswitch_3d
        :pswitch_28
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_c
        :pswitch_3d
        :pswitch_5
        :pswitch_3d
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;)V
    .registers 1
    .param p0, "info"    # Ljava/lang/String;

    .line 2424
    return-void
.end method

.method static mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultFormatType"    # I

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MTK Format Number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->log(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 452
    .local v0, "length":I
    const/4 v1, 0x6

    if-ge v0, v1, :cond_24

    .line 454
    return-object p0

    .line 459
    :cond_24
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_168

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_168

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    goto/16 :goto_168

    .line 463
    :cond_3e
    move v1, p1

    .line 465
    .local v1, "formatType":I
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->getFormatTypeFromNumber(Ljava/lang/String;I)[I

    move-result-object v2

    .line 466
    .local v2, "match":[I
    const/4 v3, 0x0

    .line 467
    .local v3, "startIndex":I
    const/4 v4, 0x0

    if-eqz v2, :cond_50

    const/4 v5, 0x1

    aget v6, v2, v5

    if-eqz v6, :cond_50

    .line 468
    aget v1, v2, v5

    .line 469
    aget v3, v2, v4

    .line 473
    :cond_50
    add-int/lit8 v5, v3, 0x4

    if-ge v0, v5, :cond_55

    .line 474
    return-object p0

    .line 475
    :cond_55
    add-int/lit8 v5, v3, 0xf

    if-le v0, v5, :cond_5a

    .line 476
    return-object p0

    .line 478
    :cond_5a
    move-object v5, p0

    .line 479
    .local v5, "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v7, -0x1

    .line 482
    .local v7, "blankPosition":I
    invoke-static {v6, v3}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->removeAllDashAndFormatBlank(Ljava/lang/StringBuilder;I)I

    move-result v7

    .line 484
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v9, v3, 0x4

    if-lt v8, v9, :cond_163

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v9, v3, 0x4

    if-ne v8, v9, :cond_81

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_81

    goto/16 :goto_163

    .line 488
    :cond_81
    packed-switch v1, :pswitch_data_172

    .line 579
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .end local v5    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 575
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_8a
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatTurkeyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 576
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 572
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_90
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatBrazilNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 573
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 539
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_96
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatNewZealandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 540
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 536
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_9c
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatAustraliaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 537
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 533
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_a2
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatPolandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 534
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 530
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_a8
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatPortugalNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 531
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 527
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_ae
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatVietnamNubmer(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 528
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 542
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_b4
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatThailandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 543
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 545
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_ba
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatIndonesiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 546
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 548
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_c0
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatMalaysiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 549
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 551
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_c6
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatSpainNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 552
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 560
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_cc
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatIndiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 561
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 554
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_d2
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatRussianNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 555
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 557
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_d8
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatGermanyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 558
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 563
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_de
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatItalyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 564
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 566
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_e4
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatFranceNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 567
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 569
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_ea
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatEnglandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 570
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 524
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_f0
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatTaiwanNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 525
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_162

    .line 497
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_f6
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatMacauNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 498
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_162

    .line 494
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_fb
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 495
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_162

    .line 490
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_100
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->formatChinaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 491
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_162

    .line 512
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_105
    const/4 v8, 0x0

    .line 513
    .local v8, "ssb2":Landroid/text/SpannableStringBuilder;
    if-ltz v7, :cond_126

    .line 514
    new-instance v9, Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v8, v9

    .line 515
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 516
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v6, v4, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_162

    .line 518
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_126
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 519
    .end local v8    # "ssb2":Landroid/text/SpannableStringBuilder;
    .local v4, "ssb2":Landroid/text/SpannableStringBuilder;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 520
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 522
    move-object v4, v5

    goto :goto_162

    .line 500
    .end local v4    # "ssb2":Landroid/text/SpannableStringBuilder;
    :pswitch_134
    const/4 v8, 0x0

    .line 501
    .local v8, "ssb":Landroid/text/SpannableStringBuilder;
    if-ltz v7, :cond_155

    .line 502
    new-instance v9, Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v8, v9

    .line 503
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 504
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v6, v4, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .end local v5    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    goto :goto_162

    .line 506
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_155
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 507
    .end local v8    # "ssb":Landroid/text/SpannableStringBuilder;
    .local v4, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 508
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 510
    move-object v4, v5

    .line 581
    .end local v5    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    :goto_162
    return-object v4

    .line 485
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_163
    :goto_163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 460
    .end local v1    # "formatType":I
    .end local v2    # "match":[I
    .end local v3    # "startIndex":I
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "blankPosition":I
    :cond_168
    :goto_168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberFormatUtil;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_134
        :pswitch_105
        :pswitch_100
        :pswitch_fb
        :pswitch_f6
        :pswitch_f0
        :pswitch_ea
        :pswitch_e4
        :pswitch_de
        :pswitch_d8
        :pswitch_d2
        :pswitch_cc
        :pswitch_c6
        :pswitch_c0
        :pswitch_fb
        :pswitch_ba
        :pswitch_b4
        :pswitch_ae
        :pswitch_a8
        :pswitch_a2
        :pswitch_9c
        :pswitch_96
        :pswitch_90
        :pswitch_8a
    .end packed-switch
.end method

.method private static removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, "p":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 736
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_18

    goto :goto_1b

    .line 739
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 737
    :cond_1b
    :goto_1b
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 742
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeAllDashAndFormatBlank(Ljava/lang/StringBuilder;I)I
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "startIndex"    # I

    .line 752
    const/4 v0, 0x0

    .line 753
    .local v0, "p":I
    const/4 v1, -0x1

    .line 754
    .local v1, "index":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 755
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_19

    goto :goto_1c

    .line 758
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 756
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 761
    :cond_20
    if-lez p1, :cond_28

    .line 763
    move v1, p1

    .line 764
    const-string v2, " "

    invoke-virtual {p0, v1, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_28
    return v1
.end method

.method private static removeTrailingDashes(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 777
    .local v0, "len":I
    :goto_4
    if-lez v0, :cond_18

    .line 778
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_18

    .line 779
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 780
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 785
    :cond_18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

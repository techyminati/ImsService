.class public Landroid/telephony/MtkRadioAccessFamily;
.super Ljava/lang/Object;
.source "MtkRadioAccessFamily.java"


# static fields
.field private static final CDMA:I = 0x48

.field private static final EVDO:I = 0x2830

.field private static final GSM:I = 0x8003

.field private static final HS:I = 0x4380

.field private static final LTE:I = 0x41000

.field private static final NR:I = 0x80000

.field public static final RAF_1xRTT:I = 0x40

.field public static final RAF_EDGE:I = 0x2

.field public static final RAF_EHRPD:I = 0x2000

.field public static final RAF_EVDO_0:I = 0x10

.field public static final RAF_EVDO_A:I = 0x20

.field public static final RAF_EVDO_B:I = 0x800

.field public static final RAF_GPRS:I = 0x1

.field public static final RAF_GSM:I = 0x8000

.field public static final RAF_HSDPA:I = 0x80

.field public static final RAF_HSPA:I = 0x200

.field public static final RAF_HSPAP:I = 0x4000

.field public static final RAF_HSUPA:I = 0x100

.field public static final RAF_IS95A:I = 0x8

.field public static final RAF_IS95B:I = 0x8

.field public static final RAF_LTE:I = 0x1000

.field public static final RAF_LTE_CA:I = 0x40000

.field public static final RAF_NR:I = 0x80000

.field public static final RAF_TD_SCDMA:I = 0x10000

.field public static final RAF_UMTS:I = 0x4

.field public static final RAF_UNKNOWN:I = 0x0

.field private static final WCDMA:I = 0x4384


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAdjustedRaf(I)I
    .registers 3
    .param p0, "raf"    # I

    .line 182
    const v0, 0x8003

    and-int v1, p0, v0

    if-lez v1, :cond_9

    or-int/2addr v0, p0

    goto :goto_a

    :cond_9
    move v0, p0

    :goto_a
    move p0, v0

    .line 183
    and-int/lit16 v0, p0, 0x4384

    if-lez v0, :cond_12

    or-int/lit16 v0, p0, 0x4384

    goto :goto_13

    :cond_12
    move v0, p0

    :goto_13
    move p0, v0

    .line 184
    and-int/lit8 v0, p0, 0x48

    if-lez v0, :cond_1b

    or-int/lit8 v0, p0, 0x48

    goto :goto_1c

    :cond_1b
    move v0, p0

    :goto_1c
    move p0, v0

    .line 185
    and-int/lit16 v0, p0, 0x2830

    if-lez v0, :cond_24

    or-int/lit16 v0, p0, 0x2830

    goto :goto_25

    :cond_24
    move v0, p0

    :goto_25
    move p0, v0

    .line 186
    const v0, 0x41000

    and-int v1, p0, v0

    if-lez v1, :cond_2f

    or-int/2addr v0, p0

    goto :goto_30

    :cond_2f
    move v0, p0

    :goto_30
    move p0, v0

    .line 187
    const/high16 v0, 0x80000

    and-int v1, p0, v0

    if-lez v1, :cond_39

    or-int/2addr v0, p0

    goto :goto_3a

    :cond_39
    move v0, p0

    :goto_3a
    move p0, v0

    .line 189
    return p0
.end method

.method public static getNetworkTypeFromRaf(I)I
    .registers 2
    .param p0, "raf"    # I

    .line 193
    invoke-static {p0}, Landroid/telephony/MtkRadioAccessFamily;->getAdjustedRaf(I)I

    move-result p0

    .line 195
    sparse-switch p0, :sswitch_data_72

    .line 271
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    return v0

    .line 261
    :sswitch_a
    const/16 v0, 0x21

    return v0

    .line 259
    :sswitch_d
    const/16 v0, 0x20

    return v0

    .line 255
    :sswitch_10
    const/16 v0, 0x1e

    return v0

    .line 257
    :sswitch_13
    const/16 v0, 0x1f

    return v0

    .line 253
    :sswitch_16
    const/16 v0, 0x1d

    return v0

    .line 249
    :sswitch_19
    const/16 v0, 0x1b

    return v0

    .line 247
    :sswitch_1c
    const/16 v0, 0x1a

    return v0

    .line 251
    :sswitch_1f
    const/16 v0, 0x1c

    return v0

    .line 245
    :sswitch_22
    const/16 v0, 0x19

    return v0

    .line 243
    :sswitch_25
    const/16 v0, 0x18

    return v0

    .line 241
    :sswitch_28
    const/16 v0, 0x17

    return v0

    .line 239
    :sswitch_2b
    const/16 v0, 0x16

    return v0

    .line 235
    :sswitch_2e
    const/16 v0, 0x14

    return v0

    .line 229
    :sswitch_31
    const/16 v0, 0x11

    return v0

    .line 233
    :sswitch_34
    const/16 v0, 0x13

    return v0

    .line 225
    :sswitch_37
    const/16 v0, 0xf

    return v0

    .line 209
    :sswitch_3a
    const/16 v0, 0xa

    return v0

    .line 207
    :sswitch_3d
    const/16 v0, 0x9

    return v0

    .line 269
    :sswitch_40
    const/16 v0, 0x69

    return v0

    .line 263
    :sswitch_43
    const/16 v0, 0x65

    return v0

    .line 213
    :sswitch_46
    const/16 v0, 0xc

    return v0

    .line 205
    :sswitch_49
    const/16 v0, 0x8

    return v0

    .line 211
    :sswitch_4c
    const/16 v0, 0xb

    return v0

    .line 237
    :sswitch_4f
    const/16 v0, 0x15

    return v0

    .line 231
    :sswitch_52
    const/16 v0, 0x12

    return v0

    .line 227
    :sswitch_55
    const/16 v0, 0x10

    return v0

    .line 223
    :sswitch_58
    const/16 v0, 0xe

    return v0

    .line 221
    :sswitch_5b
    const/16 v0, 0xd

    return v0

    .line 219
    :sswitch_5e
    const/4 v0, 0x7

    return v0

    .line 197
    :sswitch_60
    const/4 v0, 0x0

    return v0

    .line 267
    :sswitch_62
    const/16 v0, 0x68

    return v0

    .line 265
    :sswitch_65
    const/16 v0, 0x67

    return v0

    .line 199
    :sswitch_68
    const/4 v0, 0x1

    return v0

    .line 201
    :sswitch_6a
    const/4 v0, 0x2

    return v0

    .line 203
    :sswitch_6c
    const/4 v0, 0x4

    return v0

    .line 217
    :sswitch_6e
    const/4 v0, 0x6

    return v0

    .line 215
    :sswitch_70
    const/4 v0, 0x5

    return v0

    :sswitch_data_72
    .sparse-switch
        0x48 -> :sswitch_70
        0x2830 -> :sswitch_6e
        0x2878 -> :sswitch_6c
        0x4384 -> :sswitch_6a
        0x8003 -> :sswitch_68
        0x804b -> :sswitch_65
        0xa87b -> :sswitch_62
        0xc387 -> :sswitch_60
        0xebff -> :sswitch_5e
        0x10000 -> :sswitch_5b
        0x14384 -> :sswitch_58
        0x18003 -> :sswitch_55
        0x1c387 -> :sswitch_52
        0x1ebff -> :sswitch_4f
        0x41000 -> :sswitch_4c
        0x43878 -> :sswitch_49
        0x45384 -> :sswitch_46
        0x49003 -> :sswitch_43
        0x4b87b -> :sswitch_40
        0x4d387 -> :sswitch_3d
        0x4fbff -> :sswitch_3a
        0x51000 -> :sswitch_37
        0x55384 -> :sswitch_34
        0x59003 -> :sswitch_31
        0x5d387 -> :sswitch_2e
        0x5fbff -> :sswitch_2b
        0x80000 -> :sswitch_28
        0xc1000 -> :sswitch_25
        0xc3878 -> :sswitch_22
        0xc5384 -> :sswitch_1f
        0xcd387 -> :sswitch_1c
        0xcfbff -> :sswitch_19
        0xd1000 -> :sswitch_16
        0xd5384 -> :sswitch_13
        0xd9003 -> :sswitch_10
        0xdd387 -> :sswitch_d
        0xdfbff -> :sswitch_a
    .end sparse-switch
.end method

.method public static getRafFromNetworkType(I)I
    .registers 3
    .param p0, "type"    # I

    .line 93
    const v0, 0x41000

    const v1, 0xc387

    sparse-switch p0, :sswitch_data_96

    .line 173
    const/4 v0, 0x0

    return v0

    .line 171
    :sswitch_b
    const v0, 0x4b87b

    return v0

    .line 169
    :sswitch_f
    const v0, 0xa87b

    return v0

    .line 167
    :sswitch_13
    const v0, 0x804b

    return v0

    .line 165
    :sswitch_17
    return v0

    .line 163
    :sswitch_18
    const v0, 0x49003

    return v0

    .line 161
    :sswitch_1c
    const v0, 0xdfbff

    return v0

    .line 159
    :sswitch_20
    const v0, 0xdd387

    return v0

    .line 157
    :sswitch_24
    const v0, 0xd5384

    return v0

    .line 155
    :sswitch_28
    const v0, 0xd9003

    return v0

    .line 153
    :sswitch_2c
    const v0, 0xd1000

    return v0

    .line 151
    :sswitch_30
    const v0, 0xc5384

    return v0

    .line 149
    :sswitch_34
    const v0, 0xcfbff

    return v0

    .line 147
    :sswitch_38
    const v0, 0xcd387

    return v0

    .line 145
    :sswitch_3c
    const v0, 0xc3878

    return v0

    .line 143
    :sswitch_40
    const v0, 0xc1000

    return v0

    .line 141
    :sswitch_44
    const/high16 v0, 0x80000

    return v0

    .line 139
    :sswitch_47
    const v0, 0x5fbff

    return v0

    .line 137
    :sswitch_4b
    const v0, 0x1ebff

    return v0

    .line 135
    :sswitch_4f
    const v0, 0x5d387

    return v0

    .line 133
    :sswitch_53
    const v0, 0x55384

    return v0

    .line 131
    :sswitch_57
    const v0, 0x1c387

    return v0

    .line 129
    :sswitch_5b
    const v0, 0x59003

    return v0

    .line 127
    :sswitch_5f
    const v0, 0x18003

    return v0

    .line 125
    :sswitch_63
    const v0, 0x51000

    return v0

    .line 123
    :sswitch_67
    const v0, 0x14384

    return v0

    .line 121
    :sswitch_6b
    const/high16 v0, 0x10000

    return v0

    .line 113
    :sswitch_6e
    const v0, 0x45384

    return v0

    .line 111
    :sswitch_72
    return v0

    .line 109
    :sswitch_73
    const v0, 0x4fbff

    return v0

    .line 107
    :sswitch_77
    const v0, 0x4d387

    return v0

    .line 105
    :sswitch_7b
    const v0, 0x43878

    return v0

    .line 119
    :sswitch_7f
    const v0, 0xebff

    return v0

    .line 117
    :sswitch_83
    const/16 v0, 0x2830

    return v0

    .line 115
    :sswitch_86
    const/16 v0, 0x48

    return v0

    .line 103
    :sswitch_89
    const/16 v0, 0x2878

    return v0

    .line 101
    :sswitch_8c
    return v1

    .line 99
    :sswitch_8d
    const/16 v0, 0x4384

    return v0

    .line 97
    :sswitch_90
    const v0, 0x8003

    return v0

    .line 95
    :sswitch_94
    return v1

    nop

    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_94
        0x1 -> :sswitch_90
        0x2 -> :sswitch_8d
        0x3 -> :sswitch_8c
        0x4 -> :sswitch_89
        0x5 -> :sswitch_86
        0x6 -> :sswitch_83
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_7b
        0x9 -> :sswitch_77
        0xa -> :sswitch_73
        0xb -> :sswitch_72
        0xc -> :sswitch_6e
        0xd -> :sswitch_6b
        0xe -> :sswitch_67
        0xf -> :sswitch_63
        0x10 -> :sswitch_5f
        0x11 -> :sswitch_5b
        0x12 -> :sswitch_57
        0x13 -> :sswitch_53
        0x14 -> :sswitch_4f
        0x15 -> :sswitch_4b
        0x16 -> :sswitch_47
        0x17 -> :sswitch_44
        0x18 -> :sswitch_40
        0x19 -> :sswitch_3c
        0x1a -> :sswitch_38
        0x1b -> :sswitch_34
        0x1c -> :sswitch_30
        0x1d -> :sswitch_2c
        0x1e -> :sswitch_28
        0x1f -> :sswitch_24
        0x20 -> :sswitch_20
        0x21 -> :sswitch_1c
        0x65 -> :sswitch_18
        0x66 -> :sswitch_17
        0x67 -> :sswitch_13
        0x68 -> :sswitch_f
        0x69 -> :sswitch_b
    .end sparse-switch
.end method

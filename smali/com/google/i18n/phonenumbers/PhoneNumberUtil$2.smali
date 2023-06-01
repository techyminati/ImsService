.class synthetic Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

.field static final synthetic $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

.field static final synthetic $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 2133
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->values()[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    const/4 v3, 0x4

    :try_start_2f
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v4

    :goto_3b
    :try_start_3b
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v4

    :goto_48
    :try_start_48
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v4

    :goto_55
    :try_start_55
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v4

    :goto_62
    :try_start_62
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v4

    :goto_70
    :try_start_70
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v5

    const/16 v6, 0x9

    aput v6, v4, v5
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v4

    :goto_7e
    :try_start_7e
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v5

    const/16 v6, 0xa

    aput v6, v4, v5
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v4

    :goto_8c
    :try_start_8c
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v5

    const/16 v6, 0xb

    aput v6, v4, v5
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception v4

    .line 1841
    :goto_9a
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->values()[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    :try_start_a3
    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ab} :catch_ac

    goto :goto_ad

    :catch_ac
    move-exception v4

    :goto_ad
    :try_start_ad
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b7} :catch_b8

    goto :goto_b9

    :catch_b8
    move-exception v4

    :goto_b9
    :try_start_b9
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c3} :catch_c4

    goto :goto_c5

    :catch_c4
    move-exception v4

    :goto_c5
    :try_start_c5
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_d0

    goto :goto_d1

    :catch_d0
    move-exception v4

    .line 1582
    :goto_d1
    invoke-static {}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->values()[Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    :try_start_da
    sget-object v5, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e2} :catch_e3

    goto :goto_e4

    :catch_e3
    move-exception v1

    :goto_e4
    :try_start_e4
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    sget-object v4, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_ee} :catch_ef

    goto :goto_f0

    :catch_ef
    move-exception v0

    :goto_f0
    :try_start_f0
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fa} :catch_fb

    goto :goto_fc

    :catch_fb
    move-exception v0

    :goto_fc
    :try_start_fc
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_106
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_106} :catch_107

    goto :goto_108

    :catch_107
    move-exception v0

    :goto_108
    return-void
.end method

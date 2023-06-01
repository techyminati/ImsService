.class public Lcom/google/i18n/phonenumbers/ShortNumberInfo;
.super Ljava/lang/Object;
.source "ShortNumberInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/i18n/phonenumbers/ShortNumberInfo;

.field private static final REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const-class v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    .line 46
    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    .line 47
    invoke-static {}, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;->create()Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;-><init>(Lcom/google/i18n/phonenumbers/internal/MatcherApi;)V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    .line 54
    const-string v1, "BR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v1, "CL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "NI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method constructor <init>(Lcom/google/i18n/phonenumbers/internal/MatcherApi;)V
    .registers 3
    .param p1, "matcherApi"    # Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    .line 86
    nop

    .line 87
    invoke-static {}, Lcom/google/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 88
    return-void
.end method

.method public static getInstance()Lcom/google/i18n/phonenumbers/ShortNumberInfo;
    .registers 1

    .line 69
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    return-object v0
.end method

.method private static getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 4
    .param p0, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 541
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    new-array v1, v1, [C

    .line 542
    .local v1, "zeros":[C
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 543
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .end local v1    # "zeros":[C
    :cond_1e
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRegionCodeForShortNumberFromRegionList(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 322
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 323
    return-object v1

    .line 324
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 325
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 327
    :cond_17
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 329
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 330
    .local v4, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v4, :cond_3c

    .line 331
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 333
    return-object v3

    .line 335
    .end local v3    # "regionCode":Ljava/lang/String;
    .end local v4    # "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_3c
    goto :goto_1f

    .line 336
    :cond_3d
    return-object v1
.end method

.method private getRegionCodesForCountryCode(I)Ljava/util/List;
    .registers 5
    .param p1, "countryCallingCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 97
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_16

    .line 98
    :cond_15
    move-object v1, v0

    .line 97
    :goto_16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "allowPrefixMatch"    # Z

    .line 437
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 438
    .local v0, "possibleNumber":Ljava/lang/CharSequence;
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 442
    return v2

    .line 444
    :cond_12
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 445
    .local v1, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_3b

    .line 449
    :cond_1f
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "normalizedNumber":Ljava/lang/String;
    if-eqz p3, :cond_2f

    sget-object v4, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    .line 451
    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 452
    .local v2, "allowPrefixMatchForRegion":Z
    :goto_30
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getEmergency()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-interface {v4, v3, v5, v2}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v4

    return v4

    .line 446
    .end local v2    # "allowPrefixMatchForRegion":Z
    .end local v3    # "normalizedNumber":Ljava/lang/String;
    :cond_3b
    :goto_3b
    return v2
.end method

.method private matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 553
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    .line 554
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 555
    return v1

    .line 557
    :cond_1a
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v0

    return v0
.end method

.method private regionDialingFromMatchesNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 5
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;

    .line 416
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getExampleShortNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 355
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 356
    .local v0, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const-string v1, ""

    if-nez v0, :cond_9

    .line 357
    return-object v1

    .line 359
    :cond_9
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 360
    .local v2, "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 361
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 363
    :cond_18
    return-object v1
.end method

.method getExampleShortNumberForCost(Ljava/lang/String;Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;)Ljava/lang/String;
    .registers 8
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "cost"    # Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 376
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 377
    .local v0, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const-string v1, ""

    if-nez v0, :cond_9

    .line 378
    return-object v1

    .line 380
    :cond_9
    const/4 v2, 0x0

    .line 381
    .local v2, "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    sget-object v3, Lcom/google/i18n/phonenumbers/ShortNumberInfo$1;->$SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost:[I

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_34

    :pswitch_15
    goto :goto_25

    .line 383
    :pswitch_16
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 384
    goto :goto_25

    .line 386
    :pswitch_1b
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 387
    goto :goto_25

    .line 389
    :pswitch_20
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 390
    nop

    .line 395
    :goto_25
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 396
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 398
    :cond_32
    return-object v1

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_20
        :pswitch_15
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method public getExpectedCost(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 11
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 286
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 287
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 288
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1

    .line 290
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 291
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v1

    return-object v1

    .line 293
    :cond_24
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 294
    .local v1, "cost":Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 295
    .local v3, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v4

    .line 296
    .local v4, "costForRegion":Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    sget-object v5, Lcom/google/i18n/phonenumbers/ShortNumberInfo$1;->$SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost:[I

    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_6e

    .line 311
    sget-object v5, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognised cost for region: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_6c

    .line 309
    :pswitch_5e
    goto :goto_6c

    .line 303
    :pswitch_5f
    sget-object v5, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    if-eq v1, v5, :cond_6c

    .line 304
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_6c

    .line 300
    :pswitch_66
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 301
    goto :goto_6c

    .line 298
    :pswitch_69
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 313
    .end local v3    # "regionCode":Ljava/lang/String;
    .end local v4    # "costForRegion":Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    :cond_6c
    :goto_6c
    goto :goto_2a

    .line 314
    :cond_6d
    return-object v1

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_69
        :pswitch_66
        :pswitch_5f
        :pswitch_5e
    .end packed-switch
.end method

.method public getExpectedCostForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 7
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 228
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v0

    .line 231
    :cond_9
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 233
    .local v0, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_12

    .line 234
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1

    .line 237
    :cond_12
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "shortNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 243
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 248
    :cond_2f
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 249
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 251
    :cond_3c
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 252
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 254
    :cond_49
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 255
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 257
    :cond_56
    invoke-virtual {p0, v1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 259
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 261
    :cond_5f
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2
.end method

.method getSupportedRegions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    invoke-static {}, Lcom/google/i18n/phonenumbers/MetadataManager;->getSupportedShortNumberRegions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isCarrierSpecific(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 7
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 468
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 469
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "regionCode":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 472
    .local v3, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v3, :cond_22

    .line 474
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    .line 473
    invoke-direct {p0, v2, v4}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    .line 472
    :goto_23
    return v4
.end method

.method public isCarrierSpecificForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 492
    return v1

    .line 494
    :cond_8
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "nationalNumber":Ljava/lang/String;
    nop

    .line 496
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 497
    .local v2, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_1f

    .line 499
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 498
    invoke-direct {p0, v0, v3}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 497
    :goto_20
    return v1
.end method

.method public isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "regionCode"    # Ljava/lang/String;

    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPossibleShortNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 9
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 142
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 144
    .local v1, "shortNumberLength":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    .local v3, "region":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 146
    .local v4, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v4, :cond_27

    .line 147
    goto :goto_14

    .line 149
    :cond_27
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 150
    const/4 v2, 0x1

    return v2

    .line 152
    .end local v3    # "region":Ljava/lang/String;
    .end local v4    # "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_3b
    goto :goto_14

    .line 153
    :cond_3c
    const/4 v2, 0x0

    return v2
.end method

.method public isPossibleShortNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 121
    return v1

    .line 123
    :cond_8
    nop

    .line 124
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 125
    .local v0, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_10

    .line 126
    return v1

    .line 128
    :cond_10
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 129
    .local v1, "numberLength":I
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public isSmsServiceForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 516
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 517
    return v1

    .line 519
    :cond_8
    nop

    .line 520
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 521
    .local v0, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_1f

    .line 522
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSmsServices()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 522
    invoke-direct {p0, v2, v3}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 521
    :goto_20
    return v1
.end method

.method public isValidShortNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 6
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 193
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "regionCode":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    if-eqz v1, :cond_16

    .line 198
    return v3

    .line 200
    :cond_16
    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->isValidShortNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isValidShortNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 8
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 167
    return v1

    .line 169
    :cond_8
    nop

    .line 170
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 171
    .local v0, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_10

    .line 172
    return v1

    .line 174
    :cond_10
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "shortNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 176
    .local v3, "generalDesc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, v2, v3}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 177
    return v1

    .line 179
    :cond_1f
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 180
    .local v1, "shortNumberDesc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, v2, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    return v4
.end method

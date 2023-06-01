.class public Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DIGIT_PLACEHOLDER:Ljava/lang/String; = "\u2008"

.field private static final ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMPTY_METADATA:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private static final MIN_LEADING_DIGITS_LENGTH:I = 0x3

.field private static final NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_BEFORE_NATIONAL_NUMBER:C = ' '


# instance fields
.field private ableToFormat:Z

.field private accruedInput:Ljava/lang/StringBuilder;

.field private accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

.field private currentFormattingPattern:Ljava/lang/String;

.field private currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private currentOutput:Ljava/lang/String;

.field private defaultCountry:Ljava/lang/String;

.field private defaultMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private extractedNationalPrefix:Ljava/lang/String;

.field private formattingTemplate:Ljava/lang/StringBuilder;

.field private inputHasFormatting:Z

.field private isCompleteNumber:Z

.field private isExpectingCountryCallingCode:Z

.field private lastMatchPosition:I

.field private nationalNumber:Ljava/lang/StringBuilder;

.field private originalPosition:I

.field private final phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private positionToRemember:I

.field private possibleFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

.field private regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

.field private shouldAddSpaceAfterNationalPrefix:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 64
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    .line 65
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 74
    nop

    .line 75
    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 79
    const-string v0, "[- ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 89
    const-string v0, "\u2008"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    .line 45
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 56
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 57
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 58
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 90
    iput v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 93
    iput v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 96
    iput v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    .line 101
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 104
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/RegexCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

    .line 118
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 120
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->defaultMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 121
    return-void
.end method

.method private ableToExtractLongerNdd()Z
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 401
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 406
    .local v0, "indexOfPreviousNdd":I
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 408
    .end local v0    # "indexOfPreviousNdd":I
    :cond_1d
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "nationalNumber"    # Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 474
    .local v0, "prefixBeforeNationalNumberLength":I
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    if-eqz v1, :cond_32

    if-lez v0, :cond_32

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_32

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 483
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private attemptToChooseFormattingPattern()Ljava/lang/String;
    .registers 3

    .line 494
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2f

    .line 496
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->getAvailableFormats(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 500
    return-object v0

    .line 502
    :cond_1d
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_28
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2e
    return-object v1

    .line 504
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :cond_2f
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;
    .registers 3

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 384
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 385
    iput v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 386
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 387
    const-string v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 388
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attemptToExtractCountryCallingCode()Z
    .registers 7

    .line 601
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 602
    return v1

    .line 604
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .local v0, "numberWithoutCountryCallingCode":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v2

    .line 606
    .local v2, "countryCode":I
    if-nez v2, :cond_1a

    .line 607
    return v1

    .line 609
    :cond_1a
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 610
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "newRegionCode":Ljava/lang/String;
    const-string v3, "001"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 613
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_49

    .line 614
    :cond_3b
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 615
    invoke-direct {p0, v1}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 617
    :cond_49
    :goto_49
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "countryCodeString":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    const-string v4, ""

    iput-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 622
    const/4 v4, 0x1

    return v4
.end method

.method private attemptToExtractIdd()Z
    .registers 8

    .line 573
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\+|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 575
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 576
    .local v0, "internationalPrefix":Ljava/util/regex/Pattern;
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 577
    .local v1, "iddMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_63

    .line 578
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 579
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 580
    .local v4, "startOfCountryCallingCode":I
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 581
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 583
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 583
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_62

    .line 586
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    :cond_62
    return v2

    .line 590
    .end local v4    # "startOfCountryCallingCode":I
    :cond_63
    return v3
.end method

.method private createFormattingTemplate(Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z
    .registers 6
    .param p1, "format"    # Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 222
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "numberPattern":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 224
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "tempTemplate":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1f

    .line 226
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const/4 v2, 0x1

    return v2

    .line 229
    :cond_1f
    return v2
.end method

.method private getAvailableFormats(Ljava/lang/String;)V
    .registers 8
    .param p1, "leadingDigits"    # Ljava/lang/String;

    .line 167
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 169
    .local v0, "isInternationalNumber":Z
    :goto_f
    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v1

    if-lez v1, :cond_20

    .line 170
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v1

    goto :goto_26

    .line 171
    :cond_20
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v1

    :goto_26
    nop

    .line 172
    .local v1, "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 175
    .local v3, "format":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_56

    .line 177
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-static {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 178
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v4

    if-nez v4, :cond_56

    .line 179
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v4

    if-nez v4, :cond_56

    .line 184
    goto :goto_2b

    .line 185
    :cond_56
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_73

    iget-boolean v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    if-nez v4, :cond_73

    .line 188
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 189
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v4

    if-nez v4, :cond_73

    .line 192
    goto :goto_2b

    .line 194
    :cond_73
    sget-object v4, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 195
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v3    # "format":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_88
    goto :goto_2b

    .line 198
    :cond_89
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "numberPattern"    # Ljava/lang/String;
    .param p2, "numberFormat"    # Ljava/lang/String;

    .line 237
    const-string v0, "999999999999999"

    .line 238
    .local v0, "longestPhoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 239
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 240
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "aPhoneNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_22

    .line 244
    const-string v3, ""

    return-object v3

    .line 247
    :cond_22
    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "template":Ljava/lang/String;
    const-string v4, "9"

    const-string v5, "\u2008"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    return-object v3
.end method

.method private getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 6
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "countryCallingCode":I
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "mainCountry":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 129
    .local v2, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_15

    .line 130
    return-object v2

    .line 134
    :cond_15
    sget-object v3, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v3
.end method

.method private inputAccruedNationalNumber()Ljava/lang/String;
    .registers 5

    .line 513
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 514
    .local v0, "lengthOfNationalNumber":I
    if-lez v0, :cond_2a

    .line 515
    const-string v1, ""

    .line 516
    .local v1, "tempNationalNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_1a

    .line 517
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v1

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 519
    .end local v2    # "i":I
    :cond_1a
    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v2, :cond_23

    invoke-direct {p0, v1}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    :cond_23
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_29
    return-object v2

    .line 521
    .end local v1    # "tempNationalNumber":Ljava/lang/String;
    :cond_2a
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private inputDigitHelper(C)Ljava/lang/String;
    .registers 8
    .param p1, "nextChar"    # C

    .line 650
    sget-object v0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 651
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    iget v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_31

    .line 652
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "tempTemplate":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v3, v5, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    iput v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 655
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    add-int/2addr v4, v2

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 657
    .end local v1    # "tempTemplate":Ljava/lang/String;
    :cond_31
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_3b

    .line 660
    iput-boolean v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 662
    :cond_3b
    const-string v1, ""

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 663
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;
    .registers 6
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .line 306
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    if-eqz p2, :cond_f

    .line 308
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 312
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isDigitOrLeadingPlusSign(C)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    .line 313
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 314
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    goto :goto_20

    .line 316
    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->normalizeAndAccrueDigitsAndPlusSign(CZ)C

    move-result p1

    .line 318
    :goto_20
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v0, :cond_59

    .line 322
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    if-eqz v0, :cond_2f

    .line 323
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    :cond_2f
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 325
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 326
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_40
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ableToExtractLongerNdd()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 332
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :cond_52
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 340
    :cond_59
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_e2

    goto :goto_7e

    .line 346
    :pswitch_63
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 347
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    goto :goto_7e

    .line 349
    :cond_6c
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 350
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :pswitch_77
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 354
    :goto_7e
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    if-eqz v0, :cond_a2

    .line 355
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 356
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 358
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 360
    :cond_a2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_dd

    .line 361
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "tempNationalNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b9

    .line 366
    return-object v1

    .line 368
    :cond_b9
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 370
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 372
    :cond_cd
    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v2, :cond_d6

    .line 373
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_dc

    .line 374
    :cond_d6
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    :goto_dc
    return-object v2

    .line 376
    .end local v0    # "tempNationalNumber":Ljava/lang/String;
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_dd
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_63
    .end packed-switch
.end method

.method private isDigitOrLeadingPlusSign(C)Z
    .registers 5
    .param p1, "nextChar"    # C

    .line 412
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v1, :cond_20

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 414
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    const/4 v1, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    nop

    .line 412
    :goto_23
    return v1
.end method

.method private isNanpaNumberWithNationalPrefix()Z
    .registers 6

    .line 534
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_28

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x31

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-eq v0, v4, :cond_28

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_28

    move v1, v2

    goto :goto_29

    :cond_28
    nop

    .line 534
    :goto_29
    return v1
.end method

.method private maybeCreateNewTemplate()Z
    .registers 7

    .line 141
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 142
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 144
    .local v1, "numberFormat":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "pattern":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 146
    return v2

    .line 148
    :cond_20
    invoke-direct {p0, v1}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->createFormattingTemplate(Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 149
    iput-object v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 150
    sget-object v4, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 152
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 152
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 155
    iput v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 156
    const/4 v2, 0x1

    return v2

    .line 158
    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 160
    .end local v1    # "numberFormat":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "pattern":Ljava/lang/String;
    goto :goto_6

    .line 161
    :cond_40
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 162
    return v2
.end method

.method private narrowDownPossibleFormats(Ljava/lang/String;)V
    .registers 9
    .param p1, "leadingDigits"    # Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 203
    .local v0, "indexOfLeadingDigitsPattern":I
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 206
    .local v2, "format":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    if-nez v3, :cond_1f

    .line 208
    goto :goto_c

    .line 210
    :cond_1f
    nop

    .line 211
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 212
    .local v3, "lastLeadingDigitsPattern":I
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

    .line 213
    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-virtual {v4, v5}, Lcom/google/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 214
    .local v4, "leadingDigitsPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 215
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-nez v6, :cond_41

    .line 216
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 218
    .end local v2    # "format":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "lastLeadingDigitsPattern":I
    .end local v4    # "leadingDigitsPattern":Ljava/util/regex/Pattern;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :cond_41
    goto :goto_c

    .line 219
    :cond_42
    return-void
.end method

.method private normalizeAndAccrueDigitsAndPlusSign(CZ)C
    .registers 6
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .line 632
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_b

    .line 633
    move v0, p1

    .line 634
    .local v0, "normalizedChar":C
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 636
    .end local v0    # "normalizedChar":C
    :cond_b
    const/16 v0, 0xa

    .line 637
    .local v0, "radix":I
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    .line 638
    .local v1, "normalizedChar":C
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 639
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 641
    .end local v1    # "normalizedChar":C
    .local v0, "normalizedChar":C
    :goto_20
    if-eqz p2, :cond_2a

    .line 642
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 644
    :cond_2a
    return v0
.end method

.method private removeNationalPrefixFromNationalNumber()Ljava/lang/String;
    .registers 7

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "startOfNationalNumber":I
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isNanpaNumberWithNationalPrefix()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    .line 542
    const/4 v0, 0x1

    .line 543
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v4, 0x31

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    goto :goto_50

    .line 545
    :cond_19
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 546
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 547
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 548
    .local v1, "nationalPrefixForParsing":Ljava/util/regex/Pattern;
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 551
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    if-lez v5, :cond_50

    .line 555
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 556
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 557
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .end local v1    # "nationalPrefixForParsing":Ljava/util/regex/Pattern;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "nationalPrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 562
    return-object v1
.end method


# virtual methods
.method attemptToFormatAccruedDigits()Ljava/lang/String;
    .registers 8

    .line 422
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 423
    .local v1, "numberFormat":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 424
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 425
    sget-object v3, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 427
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 426
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 427
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 428
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "formattedNumber":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "fullOutput":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 437
    .local v5, "formattedNumberDigitsOnly":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 440
    return-object v4

    .line 443
    .end local v1    # "numberFormat":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "formattedNumber":Ljava/lang/String;
    .end local v4    # "fullOutput":Ljava/lang/String;
    .end local v5    # "formattedNumberDigitsOnly":Ljava/lang/String;
    :cond_51
    goto :goto_6

    .line 444
    :cond_52
    const-string v0, ""

    return-object v0
.end method

.method public clear()V
    .registers 4

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 259
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 260
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 261
    iput v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 262
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 267
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 268
    iput v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 269
    iput v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 270
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 271
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 272
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 273
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 274
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->defaultMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 275
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 277
    :cond_4a
    return-void
.end method

.method getExtractedNationalPrefix()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRememberedPosition()I
    .registers 5

    .line 452
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v0, :cond_7

    .line 453
    iget v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    return v0

    .line 455
    :cond_7
    const/4 v0, 0x0

    .line 456
    .local v0, "accruedInputIndex":I
    const/4 v1, 0x0

    .line 457
    .local v1, "currentOutputIndex":I
    :goto_9
    iget v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    if-ge v0, v2, :cond_28

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 458
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 459
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_25

    .line 460
    add-int/lit8 v0, v0, 0x1

    .line 462
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 464
    :cond_28
    return v1
.end method

.method public inputDigit(C)Ljava/lang/String;
    .registers 3
    .param p1, "nextChar"    # C

    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 290
    return-object v0
.end method

.method public inputDigitAndRememberPosition(C)Ljava/lang/String;
    .registers 3
    .param p1, "nextChar"    # C

    .line 300
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 301
    return-object v0
.end method

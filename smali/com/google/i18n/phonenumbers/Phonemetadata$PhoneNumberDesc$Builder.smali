.class public final Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
.super Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
.source "Phonemetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 205
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 1

    .line 207
    return-object p0
.end method

.method public mergeFrom(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    .registers 4
    .param p1, "other"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 211
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 212
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->setNationalNumberPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 214
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 215
    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLength(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->addPossibleLength(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 217
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1f
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyCount()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 218
    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnly(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->addPossibleLengthLocalOnly(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 220
    .end local v0    # "i":I
    :cond_2f
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 221
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->setExampleNumber(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 223
    :cond_3c
    return-object p0
.end method

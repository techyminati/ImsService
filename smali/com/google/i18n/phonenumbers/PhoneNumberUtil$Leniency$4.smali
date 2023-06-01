.class final enum Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;
.super Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 560
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/google/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method verify(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;)Z
    .registers 7
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/CharSequence;
    .param p3, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p4, "matcher"    # Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;

    .line 567
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "candidateString":Ljava/lang/String;
    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 569
    invoke-static {p1, v0, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->containsOnlyValidXChars(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 570
    invoke-static {p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->containsMoreThanOneSlashInNationalNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 571
    invoke-static {p1, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_27

    .line 574
    :cond_1d
    new-instance v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$4$1;

    invoke-direct {v1, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$4$1;-><init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;)V

    invoke-virtual {p4, p1, p2, p3, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->checkNumberGroupingIsValid(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z

    move-result v1

    return v1

    .line 572
    :cond_27
    :goto_27
    const/4 v1, 0x0

    return v1
.end method

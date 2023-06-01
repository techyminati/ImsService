.class final enum Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;
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

    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/google/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method verify(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;)Z
    .registers 6
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/CharSequence;
    .param p3, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p4, "matcher"    # Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;

    .line 504
    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 505
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->containsOnlyValidXChars(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_16

    .line 508
    :cond_11
    invoke-static {p1, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    return v0

    .line 506
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

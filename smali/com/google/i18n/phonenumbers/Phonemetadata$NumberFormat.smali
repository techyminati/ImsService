.class public Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private domesticCarrierCodeFormattingRule_:Ljava/lang/String;

.field private format_:Ljava/lang/String;

.field private hasDomesticCarrierCodeFormattingRule:Z

.field private hasFormat:Z

.field private hasNationalPrefixFormattingRule:Z

.field private hasNationalPrefixOptionalWhenFormatting:Z

.field private hasPattern:Z

.field private leadingDigitsPattern_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nationalPrefixFormattingRule_:Ljava/lang/String;

.field private nationalPrefixOptionalWhenFormatting_:Z

.field private pattern_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    .line 119
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    .line 148
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static newBuilder()Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .registers 1

    .line 75
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addLeadingDigitsPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 110
    if-eqz p1, :cond_8

    .line 113
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-object p0

    .line 111
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public clearNationalPrefixFormattingRule()Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 2

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public getDomesticCarrierCodeFormattingRule()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    return-object v0
.end method

.method public getLeadingDigitsPattern(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 107
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixFormattingRule()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixOptionalWhenFormatting()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDomesticCarrierCodeFormattingRule()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    return v0
.end method

.method public hasFormat()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    return v0
.end method

.method public hasNationalPrefixFormattingRule()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    return v0
.end method

.method public hasNationalPrefixOptionalWhenFormatting()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    return v0
.end method

.method public hasPattern()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    return v0
.end method

.method public leadingDigitPatterns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    return-object v0
.end method

.method public leadingDigitsPatternSize()I
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 181
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 182
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 183
    .local v0, "leadingDigitsPatternSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_21

    .line 184
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 186
    .end local v1    # "i":I
    :cond_21
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 187
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 189
    :cond_2e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 190
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 192
    :cond_3b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixOptionalWhenFormatting(Z)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 193
    return-void
.end method

.method public setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    .line 155
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    .line 96
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 124
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setNationalPrefixOptionalWhenFormatting(Z)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    .line 142
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    .line 143
    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    .line 85
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v0

    .line 163
    .local v0, "leadingDigitsPatternSize":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_22

    .line 165
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 168
    .end local v1    # "i":I
    :cond_22
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 169
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    if-eqz v1, :cond_30

    .line 170
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 172
    :cond_30
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 173
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    if-eqz v1, :cond_3e

    .line 174
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 176
    :cond_3e
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 177
    return-void
.end method

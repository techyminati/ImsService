.class public Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
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
    name = "PhoneMetadataCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private metadata_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    .line 1122
    return-void
.end method

.method public static newBuilder()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;
    .registers 1

    .line 1135
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addMetadata(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .registers 3
    .param p1, "value"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1147
    if-eqz p1, :cond_8

    .line 1150
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    return-object p0

    .line 1148
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public clear()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .registers 2

    .line 1172
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1173
    return-object p0
.end method

.method public getMetadataCount()I
    .registers 2

    .line 1144
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMetadataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1163
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 1164
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 1165
    new-instance v2, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    .line 1166
    .local v2, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->readExternal(Ljava/io/ObjectInput;)V

    .line 1167
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    .end local v2    # "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1169
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1155
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataCount()I

    move-result v0

    .line 1156
    .local v0, "size":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_18

    .line 1158
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1157
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1160
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

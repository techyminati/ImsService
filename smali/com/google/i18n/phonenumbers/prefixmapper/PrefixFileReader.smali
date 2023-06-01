.class public Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;
.super Ljava/lang/Object;
.source "PrefixFileReader.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private availablePhonePrefixMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;",
            ">;"
        }
    .end annotation
.end field

.field private mappingFileProvider:Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;

.field private final phonePrefixDataDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "phonePrefixDataDirectory"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->loadMappingFileProvider()V

    .line 49
    return-void
.end method

.method private static close(Ljava/io/InputStream;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;

    .line 94
    if-eqz p0, :cond_12

    .line 96
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 99
    goto :goto_12

    .line 97
    :catch_6
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :cond_12
    :goto_12
    return-void
.end method

.method private getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    .registers 7
    .param p1, "prefixMapKey"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;->getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 69
    const/4 v1, 0x0

    return-object v1

    .line 71
    :cond_e
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 72
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->loadPhonePrefixMapFromFile(Ljava/lang/String;)V

    .line 74
    :cond_19
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    return-object v1
.end method

.method private loadMappingFileProvider()V
    .registers 7

    .line 52
    const-class v0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 54
    .local v0, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 56
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_1a
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 57
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_2b
    .catchall {:try_start_1a .. :try_end_25} :catchall_29

    .line 61
    :goto_25
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 62
    goto :goto_38

    .line 61
    :catchall_29
    move-exception v2

    goto :goto_39

    .line 58
    :catch_2b
    move-exception v2

    .line 59
    .local v2, "e":Ljava/io/IOException;
    :try_start_2c
    sget-object v3, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_29

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_25

    .line 63
    :goto_38
    return-void

    .line 61
    :goto_39
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 62
    throw v2
.end method

.method private loadPhonePrefixMapFromFile(Ljava/lang/String;)V
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;

    .line 78
    const-class v0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 80
    .local v0, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 82
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_18
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 83
    new-instance v2, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;-><init>()V

    .line 84
    .local v2, "map":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->readExternal(Ljava/io/ObjectInput;)V

    .line 85
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2b} :catch_2f
    .catchall {:try_start_18 .. :try_end_2b} :catchall_2d

    .line 89
    nop

    .end local v2    # "map":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    goto :goto_3c

    :catchall_2d
    move-exception v2

    goto :goto_41

    .line 86
    :catch_2f
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    :try_start_30
    sget-object v3, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_2d

    .line 89
    .end local v2    # "e":Ljava/io/IOException;
    nop

    :goto_3c
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :goto_41
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 90
    throw v2
.end method

.method private mayFallBackToEnglish(Ljava/lang/String;)Z
    .registers 3
    .param p1, "lang"    # Ljava/lang/String;

    .line 143
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "ja"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "ko"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method


# virtual methods
.method public getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 121
    .local v0, "countryCallingCode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 122
    move v1, v0

    goto :goto_14

    :cond_9
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    const-wide/32 v3, 0x989680

    div-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v1, v1, 0x3e8

    .line 123
    .local v1, "phonePrefix":I
    :goto_14
    nop

    .line 124
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    move-result-object v2

    .line 125
    .local v2, "phonePrefixDescriptions":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    if-eqz v2, :cond_20

    .line 126
    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 128
    .local v3, "description":Ljava/lang/String;
    :goto_21
    const-string v4, ""

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3e

    :cond_2b
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mayFallBackToEnglish(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 129
    const-string v5, "en"

    invoke-direct {p0, v1, v5, v4, v4}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    move-result-object v5

    .line 130
    .local v5, "defaultMap":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    if-nez v5, :cond_3a

    .line 131
    return-object v4

    .line 133
    :cond_3a
    invoke-virtual {v5, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .end local v5    # "defaultMap":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :cond_3e
    if-eqz v3, :cond_41

    move-object v4, v3

    :cond_41
    return-object v4
.end method

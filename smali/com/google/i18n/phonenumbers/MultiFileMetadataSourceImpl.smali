.class final Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;
.super Ljava/lang/Object;
.source "MultiFileMetadataSourceImpl.java"

# interfaces
.implements Lcom/google/i18n/phonenumbers/MetadataSource;


# instance fields
.field private final geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

.field private final nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneNumberMetadataFilePrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/MetadataLoader;)V
    .registers 3
    .param p1, "metadataLoader"    # Lcom/google/i18n/phonenumbers/MetadataLoader;

    .line 59
    const-string v0, "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;-><init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)V

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)V
    .registers 4
    .param p1, "phoneNumberMetadataFilePrefix"    # Ljava/lang/String;
    .param p2, "metadataLoader"    # Lcom/google/i18n/phonenumbers/MetadataLoader;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    .line 55
    return-void
.end method

.method private isNonGeographical(I)Z
    .registers 7
    .param p1, "countryCallingCode"    # I

    .line 82
    invoke-static {}, Lcom/google/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 83
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_24

    .line 84
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "001"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v2, v3

    goto :goto_25

    :cond_24
    nop

    .line 83
    :goto_25
    return v2
.end method


# virtual methods
.method public getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 6
    .param p1, "countryCallingCode"    # I

    .line 70
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->isNonGeographical(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    invoke-static {v0, v1, v2, v3}, Lcom/google/i18n/phonenumbers/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 5
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    invoke-static {p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

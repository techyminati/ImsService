.class public Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;
.super Lcom/android/internal/telephony/dataconnection/ApnConfigTypeRepository;
.source "MtkApnConfigTypeRepository.java"


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "carrierConfig"    # Landroid/os/PersistableBundle;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnConfigTypeRepository;-><init>(Landroid/os/PersistableBundle;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected setup(Landroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "carrierConfig"    # Landroid/os/PersistableBundle;

    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnConfigTypeRepository;->setup(Landroid/os/PersistableBundle;)V

    .line 57
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;->mConfigTypeMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;->mConfigTypeMap:Ljava/util/Map;

    new-instance v3, Lcom/android/internal/telephony/dataconnection/ApnConfigType;

    const/4 v4, -0x1

    invoke-direct {v3, v1, v4}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;-><init>(II)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "persist.vendor.mims_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    move v0, v1

    .line 63
    .local v0, "isMuitlpleImsSupport":Z
    if-eqz v0, :cond_40

    .line 64
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;->mConfigTypeMap:Ljava/util/Map;

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;->mConfigTypeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lcom/android/internal/telephony/dataconnection/ApnConfigType;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;-><init>(II)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_40
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;->mConfigTypeMap:Ljava/util/Map;

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lcom/android/internal/telephony/dataconnection/ApnConfigType;

    const/4 v6, 0x3

    invoke-direct {v5, v2, v6}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;-><init>(II)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;->mConfigTypeMap:Ljava/util/Map;

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lcom/android/internal/telephony/dataconnection/ApnConfigType;

    invoke-direct {v5, v2, v6}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;-><init>(II)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;->mConfigTypeMap:Ljava/util/Map;

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lcom/android/internal/telephony/dataconnection/ApnConfigType;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;-><init>(II)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

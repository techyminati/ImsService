.class public Lcom/mediatek/internal/telephony/NrMap;
.super Ljava/lang/Object;
.source "NrMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/NrMap$MtkHandler;,
        Lcom/mediatek/internal/telephony/NrMap$CitySQL;,
        Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;,
        Lcom/mediatek/internal/telephony/NrMap$Record;
    }
.end annotation


# static fields
.field protected static final EVENT_REQUEST_LISTENER_UPDATE:I = 0x2

.field protected static final EVENT_REQUEST_LOCATION_UPDATE:I = 0x1

.field protected static final EVENT_RESPONSE_SET_NR:I = 0x65

.field protected static final EVENT_SERVICE_STATE_CHANGE:I = 0xc9

.field private static final LOCATION_PERMISSION_NAME:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static NR_AT:Ljava/lang/String; = null

.field private static final NR_CITY_FILE:Ljava/lang/String; = "system_ext/etc/nr-city.xml"

.field private static final NR_CITY_SQL_NAME:Ljava/lang/String; = "mtk_nr_city_sql.db"

.field private static NR_SET_AVAILABLE:Ljava/lang/String;

.field private static NR_SET_UNAVAILABLE:Ljava/lang/String;

.field private static NR_SET_UNKNOWN:Ljava/lang/String;

.field private static loader:Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;

.field private static lock:Ljava/lang/Object;

.field private static mLock:Ljava/lang/Object;

.field private static records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/NrMap$Record;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final NR_MAP_SP_KEY:Ljava/lang/String;

.field private final NR_MAP_SW_KEY:Ljava/lang/String;

.field private camp_SA:Z

.field private city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;

.field private city_sql_data:Landroid/database/sqlite/SQLiteDatabase;

.field private current_city:Ljava/lang/String;

.field private interval_location_update:I

.field private is_nr_city:Ljava/lang/String;

.field private listening:Z

.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mGnssProxyPackageName:Ljava/lang/String;

.field private mId:I

.field private mLastPermission:Z

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private mSS:Landroid/telephony/ServiceState;

.field private manually_config:I

.field private manually_set:Z

.field private min_distance_location_update:I

.field private min_time_location_update:I

.field private mtkHandler:Landroid/os/Handler;

.field private mtkHandlerThread:Landroid/os/HandlerThread;

.field private signal_update:Z

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    const-string v0, "AT+EGMC=1,\"5g_available\","

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_AT:Ljava/lang/String;

    .line 105
    const-string v0, "0"

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNAVAILABLE:Ljava/lang/String;

    .line 106
    const-string v0, "1"

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_AVAILABLE:Ljava/lang/String;

    .line 107
    const-string v0, "2"

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNKNOWN:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->loader:Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->records:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/NrMap;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 12
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "NrMap"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->started:Z

    .line 123
    const v1, 0x1b7740

    iput v1, p0, Lcom/mediatek/internal/telephony/NrMap;->interval_location_update:I

    .line 124
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    .line 125
    iput v0, p0, Lcom/mediatek/internal/telephony/NrMap;->min_time_location_update:I

    .line 126
    iput v0, p0, Lcom/mediatek/internal/telephony/NrMap;->min_distance_location_update:I

    .line 132
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->is_nr_city:Ljava/lang/String;

    .line 133
    const-string v2, "n/a"

    iput-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->current_city:Ljava/lang/String;

    .line 135
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mSS:Landroid/telephony/ServiceState;

    .line 136
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->camp_SA:Z

    .line 138
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_set:Z

    .line 139
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_config:I

    .line 141
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->signal_update:Z

    .line 143
    iput v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mId:I

    .line 149
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLastPermission:Z

    .line 580
    new-instance v3, Lcom/mediatek/internal/telephony/NrMap$1;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/NrMap$1;-><init>(Lcom/mediatek/internal/telephony/NrMap;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationListener:Landroid/location/LocationListener;

    .line 349
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 350
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mId:I

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/NrMap;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nr_map_sp_key-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/NrMap;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SP_KEY:Ljava/lang/String;

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nr_map_sw_key-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/NrMap;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SW_KEY:Ljava/lang/String;

    .line 354
    iput-object p2, p0, Lcom/mediatek/internal/telephony/NrMap;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 356
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "MtkNrMapThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandlerThread:Landroid/os/HandlerThread;

    .line 357
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 358
    new-instance v5, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;-><init>(Lcom/mediatek/internal/telephony/NrMap;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    .line 359
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 360
    .local v5, "context":Landroid/content/Context;
    const-string v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    iput-object v6, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationManager:Landroid/location/LocationManager;

    .line 361
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/internal/telephony/NrMap;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 362
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/NrMap;->loadProxyNameFromCarrierConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/internal/telephony/NrMap;->mGnssProxyPackageName:Ljava/lang/String;

    .line 363
    iget-object v6, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGnssProxyPackageName from carrierConfig: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/NrMap;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->enableAggressiveUpdate(Z)V

    .line 366
    new-instance v6, Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    invoke-direct {v6, p0, v5}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;-><init>(Lcom/mediatek/internal/telephony/NrMap;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mediatek/internal/telephony/NrMap;->city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    .line 367
    sget-object v6, Lcom/mediatek/internal/telephony/NrMap;->loader:Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;

    if-nez v6, :cond_e9

    .line 368
    new-instance v6, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;

    invoke-direct {v6, p0, v2}, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;-><init>(Lcom/mediatek/internal/telephony/NrMap;Lcom/mediatek/internal/telephony/NrMap$1;)V

    sput-object v6, Lcom/mediatek/internal/telephony/NrMap;->loader:Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;

    .line 369
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 371
    :cond_e9
    sget-object v1, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNKNOWN:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    const/16 v6, 0xc9

    invoke-virtual {p1, v1, v6, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 374
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 375
    const-string v1, "0"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "set":Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->checkLocationProxyAppPermission()Z

    move-result v1

    .line 377
    .local v1, "permission":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NrMap set="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " permission="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_135

    if-eqz v1, :cond_135

    .line 379
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    .line 380
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->startSingleLocationUpdate()V

    .line 382
    :cond_135
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->records:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/NrMap;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->checkLocationProxyAppPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/NrMap;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/internal/telephony/NrMap;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SW_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SP_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/NrMap;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/NrMap;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->startSingleLocationUpdate()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/NrMap;)Landroid/telephony/ServiceState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mSS:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mediatek/internal/telephony/NrMap;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 91
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap;->mSS:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/NrMap;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->camp_SA:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/internal/telephony/NrMap;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/NrMap;->camp_SA:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mediatek/internal/telephony/NrMap;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget v0, p0, Lcom/mediatek/internal/telephony/NrMap;->interval_location_update:I

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/internal/telephony/NrMap;DD)Landroid/location/Address;
    .registers 6
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/NrMap;->getAddByLocation(DD)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap;->current_city:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .registers 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNKNOWN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/internal/telephony/NrMap;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_set:Z

    return v0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .registers 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_AVAILABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .registers 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNAVAILABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/internal/telephony/NrMap;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->signal_update:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/mediatek/internal/telephony/NrMap;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/NrMap;->signal_update:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/internal/telephony/NrMap;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->startPassiveLocationListener()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .registers 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/NrMap;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->city_sql_data:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/internal/telephony/NrMap;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap;->city_sql_data:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .registers 1

    .line 91
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/NrMap;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->started:Z

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationListener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method private checkLocationProxyAppPermission()Z
    .registers 5

    .line 752
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 753
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->hasLocationPermission(Ljava/lang/String;)Z

    move-result v0

    .line 754
    .local v0, "proxyAppLocationGranted":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxyApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " proxyAppLocationGranted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLastPermission:Z

    .line 757
    return v0

    .line 759
    .end local v0    # "proxyAppLocationGranted":Z
    :cond_31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLastPermission:Z

    .line 760
    return v0
.end method

.method private getAddByLocation(DD)Landroid/location/Address;
    .registers 12
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, "lstAddress":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_1
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 549
    .local v1, "geocoder":Landroid/location/Geocoder;
    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    move-object v0, v2

    .line 552
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    goto :goto_2e

    .line 550
    :catch_17
    move-exception v1

    .line 551
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geocoder.getFromLocation throw exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2e
    if-eqz v0, :cond_3f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_3f

    .line 559
    :cond_37
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    .line 562
    .local v1, "address":Landroid/location/Address;
    return-object v1

    .line 555
    .end local v1    # "address":Landroid/location/Address;
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getGeoLocationFromLatLong: get empty address"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDoubleFromProperty(Ljava/lang/String;)D
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 539
    :try_start_0
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    .line 540
    :catch_9
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private hasLocationPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 747
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packagename"    # Ljava/lang/String;

    .line 739
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_6} :catch_8

    .line 740
    const/4 v0, 0x1

    return v0

    .line 741
    :catch_8
    move-exception v1

    .line 742
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private loadProxyNameFromCarrierConfig(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p1, "sContext"    # Landroid/content/Context;

    .line 765
    nop

    .line 766
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 767
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const-string v1, ""

    if-nez v0, :cond_e

    .line 768
    return-object v1

    .line 771
    :cond_e
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 772
    .local v2, "ddSubId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 773
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    .line 774
    .local v3, "configs":Landroid/os/PersistableBundle;
    :goto_1e
    if-nez v3, :cond_2b

    .line 775
    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SIM not ready, use default carrier config."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 779
    :cond_2b
    const-string v4, "gps.nfw_proxy_apps"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 780
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gps.nfw_proxy_apps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    if-eqz v4, :cond_59

    .line 782
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "strings":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    return-object v5

    .line 786
    .end local v1    # "strings":[Ljava/lang/String;
    :cond_59
    return-object v1
.end method

.method private nrSetToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "setting"    # Ljava/lang/String;

    .line 385
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "NR_SET_UNAVAILABLE"

    return-object v0

    .line 386
    :cond_b
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "NR_SET_AVAILABLE"

    return-object v0

    .line 387
    :cond_16
    const-string v0, "NR_SET_UNKNOWN"

    return-object v0
.end method

.method private setNrCity(Ljava/lang/String;)V
    .registers 7
    .param p1, "setting"    # Ljava/lang/String;

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "isNrCity":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_4
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->is_nr_city:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 394
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_55

    .line 395
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 397
    .local v2, "result":Landroid/os/Message;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 398
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify MD about NR city "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mediatek/internal/telephony/NrMap;->NR_AT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "at":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 402
    .end local v1    # "at":Ljava/lang/String;
    :cond_4b
    sget-object v3, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 403
    :try_start_4e
    iput-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->is_nr_city:Ljava/lang/String;

    .line 404
    monitor-exit v3

    .line 405
    return-void

    .line 404
    :catchall_52
    move-exception v1

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_52

    throw v1

    .line 394
    .end local v2    # "result":Landroid/os/Message;
    :catchall_55
    move-exception v2

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v2
.end method

.method private startPassiveLocationListener()V
    .registers 9

    .line 573
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    const-string v1, "startPassiveLocationListener"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationManager:Landroid/location/LocationManager;

    iget v0, p0, Lcom/mediatek/internal/telephony/NrMap;->min_time_location_update:I

    int-to-long v4, v0

    iget v0, p0, Lcom/mediatek/internal/telephony/NrMap;->min_distance_location_update:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationListener:Landroid/location/LocationListener;

    const-string v3, "passive"

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 578
    return-void
.end method

.method private startSingleLocationUpdate()V
    .registers 5

    .line 566
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    const-string v1, "startSingleLocationUpdate"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->signal_update:Z

    .line 568
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->mLocationListener:Landroid/location/LocationListener;

    const-string v2, "network"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 570
    return-void
.end method


# virtual methods
.method public enableAggressiveUpdate(Z)V
    .registers 8
    .param p1, "sw"    # Z

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "start":Z
    const/4 v1, 0x0

    .line 437
    .local v1, "interval":I
    sget-object v2, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 438
    :try_start_5
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/NrMap;->started:Z

    move v0, v3

    .line 439
    iget v3, p0, Lcom/mediatek/internal/telephony/NrMap;->interval_location_update:I

    move v1, v3

    .line 440
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_51

    .line 441
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "swtichNrMap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " listening="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-eqz p1, :cond_43

    .line 443
    if-nez v0, :cond_50

    .line 444
    sget-object v2, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    const/4 v3, 0x1

    :try_start_32
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/NrMap;->started:Z

    .line 446
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    .line 447
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    .line 448
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v1

    .line 447
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_50

    .line 446
    :catchall_40
    move-exception v3

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v3

    .line 452
    :cond_43
    if-eqz v0, :cond_50

    .line 453
    sget-object v2, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 454
    const/4 v3, 0x0

    :try_start_49
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/NrMap;->started:Z

    .line 455
    monitor-exit v2

    goto :goto_50

    :catchall_4d
    move-exception v3

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    throw v3

    .line 458
    :cond_50
    :goto_50
    return-void

    .line 440
    :catchall_51
    move-exception v3

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v3
.end method

.method public getNrMapStatus()Ljava/lang/String;
    .registers 6

    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "isNrCity":Ljava/lang/String;
    const/4 v1, 0x0

    .line 709
    .local v1, "currentCity":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 710
    :try_start_5
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->is_nr_city:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 711
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->current_city:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 712
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_5c

    .line 713
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_set:Z

    if-eqz v2, :cond_2b

    .line 714
    iget v2, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_config:I

    packed-switch v2, :pswitch_data_60

    .line 722
    const-string v2, "Unknown manually setting"

    return-object v2

    .line 720
    :pswitch_22
    const-string v2, "Manually_UNKNOWN"

    return-object v2

    .line 718
    :pswitch_25
    const-string v2, "Manually_AVAILABLE"

    return-object v2

    .line 716
    :pswitch_28
    const-string v2, "Manually_UNAVAILABLE"

    return-object v2

    .line 724
    :cond_2b
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mLastPermission:Z

    if-nez v2, :cond_32

    .line 725
    const-string v2, "NEED PERMISSION"

    return-object v2

    .line 727
    :cond_32
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    if-eqz v2, :cond_59

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NR MAP is ON, city="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->nrSetToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 728
    return-object v2

    .line 731
    :cond_59
    const-string v2, "NR MAP is OFF"

    return-object v2

    .line 712
    :catchall_5c
    move-exception v3

    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v3

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method public isNrMapEnabled()Z
    .registers 2

    .line 703
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    return v0
.end method

.method public manuallySetNrMap(I)V
    .registers 5
    .param p1, "i"    # I

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_set:Z

    .line 679
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manuallySetNrMap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iput p1, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_config:I

    .line 681
    packed-switch p1, :pswitch_data_48

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_set:Z

    .line 694
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/NrMap;->manually_config:I

    .line 695
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    if-eqz v0, :cond_47

    .line 696
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/NrMap;->startSingleLocationUpdate()V

    goto :goto_47

    .line 689
    :pswitch_36
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNKNOWN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V

    .line 690
    goto :goto_47

    .line 686
    :pswitch_3c
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_AVAILABLE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V

    .line 687
    goto :goto_47

    .line 683
    :pswitch_42
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNAVAILABLE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V

    .line 700
    :cond_47
    :goto_47
    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3c
        :pswitch_36
    .end packed-switch
.end method

.method public setAggressiveUpdateInterval(I)V
    .registers 5
    .param p1, "interval"    # I

    .line 461
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAggressiveUpdateInterval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v0, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_19
    iput p1, p0, Lcom/mediatek/internal/telephony/NrMap;->interval_location_update:I

    .line 464
    monitor-exit v0

    .line 465
    return-void

    .line 464
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public swtichNrMap(Z)V
    .registers 8
    .param p1, "sw"    # Z

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "listen":Z
    sget-object v1, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_4
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    move v0, v2

    .line 411
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_8c

    .line 412
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swtichNrMap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " listening="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_5b

    .line 414
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SP_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 415
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SW_KEY:Ljava/lang/String;

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    if-nez v0, :cond_8b

    .line 417
    sget-object v2, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    const/4 v3, 0x1

    :try_start_4b
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    .line 419
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_58

    .line 420
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8b

    .line 419
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1

    .line 423
    :cond_5b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SP_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 424
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SW_KEY:Ljava/lang/String;

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 425
    if-eqz v0, :cond_8b

    .line 426
    sget-object v3, Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 427
    :try_start_7b
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/NrMap;->listening:Z

    .line 428
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_88

    .line 429
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8b

    .line 428
    :catchall_88
    move-exception v1

    :try_start_89
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v1

    .line 432
    :cond_8b
    :goto_8b
    return-void

    .line 411
    :catchall_8c
    move-exception v2

    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v2
.end method

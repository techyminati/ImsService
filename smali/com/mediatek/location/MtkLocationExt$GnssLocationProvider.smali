.class public Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;
.super Ljava/lang/Object;
.source "MtkLocationExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/MtkLocationExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssLocationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$GpsTimeSyncObserver;,
        Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_GPS_TIME_SYNC_CHANGED:I = 0x4

.field private static final EVENT_SEND_BLUESKY_BROADCAST:I = 0x5


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGpsHandler:Landroid/os/Handler;

.field private mGpsTimeSyncObserver:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$GpsTimeSyncObserver;

.field private mGpsTimerThread:Ljava/lang/Thread;

.field private mGpsToastHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mIsGpsTimeSyncRunning:Z

.field private mLastLocation:Landroid/location/Location;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPassiveLocationListener:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mIsGpsTimeSyncRunning:Z

    .line 219
    new-instance v0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$2;

    invoke-direct {v0, p0}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$2;-><init>(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)V

    iput-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mPassiveLocationListener:Landroid/location/LocationListener;

    .line 294
    new-instance v0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$4;

    invoke-direct {v0, p0}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$4;-><init>(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)V

    iput-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsToastHandler:Landroid/os/Handler;

    .line 301
    new-instance v0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$5;

    invoke-direct {v0, p0}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$5;-><init>(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)V

    iput-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mLocationListener:Landroid/location/LocationListener;

    .line 98
    const-string v0, "MtkLocationExt"

    const-string v1, "MtkLocationExt GnssLocationProvider()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-direct {p0}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->registerIntentReceiver()V

    .line 104
    const-string v1, "add GPS time sync handler and looper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$MyHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$MyHandler;-><init>(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsHandler:Landroid/os/Handler;

    .line 107
    nop

    .line 108
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 109
    new-instance v0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$GpsTimeSyncObserver;

    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$GpsTimeSyncObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsTimeSyncObserver:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$GpsTimeSyncObserver;

    .line 111
    invoke-virtual {v0, p1}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$GpsTimeSyncObserver;->observe(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 85
    invoke-direct {p0}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->getGpsTimeSyncState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->setGpsTimeSyncFlag(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 85
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 85
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;ZJ)V
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->doSystemTimeSyncByGps(ZJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 85
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Landroid/location/LocationListener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 85
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 85
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mIsGpsTimeSyncRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 85
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsTimerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method private doSystemTimeSyncByGps(ZJ)V
    .registers 11
    .param p1, "hasLatLong"    # Z
    .param p2, "timestamp"    # J

    .line 244
    if-eqz p1, :cond_3d

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ########## Auto-sync time with GPS: timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ########## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkLocationExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 250
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 251
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 252
    .local v1, "when":J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_36

    .line 253
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 255
    :cond_36
    iget-object v3, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mPassiveLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 257
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "when":J
    :cond_3d
    return-void
.end method

.method private getGpsTimeSyncState()Z
    .registers 4

    .line 165
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_d} :catch_11

    if-lez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 166
    :catch_11
    move-exception v1

    .line 167
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v0
.end method

.method private registerIntentReceiver()V
    .registers 8

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$1;

    invoke-direct {v2, p0}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$1;-><init>(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method private setGpsTimeSyncFlag(Z)V
    .registers 10
    .param p1, "flag"    # Z

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGpsTimeSyncFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkLocationExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz p1, :cond_25

    .line 211
    iget-object v2, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mPassiveLocationListener:Landroid/location/LocationListener;

    const-string v3, "passive"

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_2c

    .line 215
    :cond_25
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mPassiveLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 217
    :goto_2c
    return-void
.end method


# virtual methods
.method public onGpsTimeChanged(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 195
    if-eqz p1, :cond_12

    .line 196
    const v0, 0x2bf20

    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mContext:Landroid/content/Context;

    const v2, 0x80500ce

    .line 197
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->startUsingGpsWithTimeout(ILjava/lang/String;)V

    goto :goto_19

    .line 199
    :cond_12
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsTimerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_19

    .line 200
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 203
    :cond_19
    :goto_19
    invoke-direct {p0, p1}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->setGpsTimeSyncFlag(Z)V

    .line 204
    return-void
.end method

.method public startUsingGpsWithTimeout(ILjava/lang/String;)V
    .registers 11
    .param p1, "milliseconds"    # I
    .param p2, "timeoutMsg"    # Ljava/lang/String;

    .line 262
    iget-boolean v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mIsGpsTimeSyncRunning:Z

    const-string v1, "MtkLocationExt"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 263
    const-string v0, "WARNING: Gps Time Sync is already run"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 266
    :cond_d
    iput-boolean v2, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mIsGpsTimeSyncRunning:Z

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start using GPS for GPS time sync timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timeoutMsg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mLocationListener:Landroid/location/LocationListener;

    const-string v3, "gps"

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 273
    new-instance v0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;-><init>(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsTimerThread:Ljava/lang/Thread;

    .line 291
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 292
    return-void
.end method

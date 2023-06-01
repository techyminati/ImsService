.class Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$GpsTimeSyncObserver;
.super Landroid/database/ContentObserver;
.source "MtkLocationExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsTimeSyncObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMsg:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I

    .line 177
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 178
    iput-object p1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$GpsTimeSyncObserver;->mHandler:Landroid/os/Handler;

    .line 179
    iput p2, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$GpsTimeSyncObserver;->mMsg:I

    .line 180
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 185
    const-string v1, "auto_time_gps"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 184
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    return-void
.end method

.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 190
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$GpsTimeSyncObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$GpsTimeSyncObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 191
    return-void
.end method

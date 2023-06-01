.class Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$2;
.super Ljava/lang/Object;
.source "MtkLocationExt.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 219
    iput-object p1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$2;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .line 222
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 223
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_20

    .line 224
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 225
    .local v0, "hasLatLong":Z
    :goto_21
    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$2;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    # invokes: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->doSystemTimeSyncByGps(ZJ)V
    invoke-static {v1, v0, v2, v3}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$400(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;ZJ)V

    .line 227
    .end local v0    # "hasLatLong":Z
    :cond_2a
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 231
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 235
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 239
    return-void
.end method

.class Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$5;
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

    .line 301
    iput-object p1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$5;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .line 304
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$5;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    # getter for: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsTimerThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$900(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 305
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 309
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 313
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 318
    return-void
.end method

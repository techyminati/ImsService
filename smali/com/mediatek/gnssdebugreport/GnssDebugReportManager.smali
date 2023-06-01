.class public Lcom/mediatek/gnssdebugreport/GnssDebugReportManager;
.super Ljava/lang/Object;
.source "GnssDebugReportManager.java"


# static fields
.field private static final SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.gnssdebugreport.GnssDebugReportService"

.field private static final SERVICE_PKG:Ljava/lang/String; = "com.mediatek.gnssdebugreport"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .line 12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "com.mediatek.gnssdebugreport"

    const-string v2, "com.mediatek.gnssdebugreport.GnssDebugReportService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public static unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .line 19
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 20
    return-void
.end method

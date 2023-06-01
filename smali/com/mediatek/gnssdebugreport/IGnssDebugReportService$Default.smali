.class public Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Default;
.super Ljava/lang/Object;
.source "IGnssDebugReportService.java"

# interfaces
.implements Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public startDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public stopDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

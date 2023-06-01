.class public Lcom/mediatek/advcam/IAdvCamService$Default;
.super Ljava/lang/Object;
.source "IAdvCamService.java"

# interfaces
.implements Lcom/mediatek/advcam/IAdvCamService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/advcam/IAdvCamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public setConfigureParam(ILandroid/hardware/camera2/CaptureRequest;)I
    .registers 4
    .param p1, "openId"    # I
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

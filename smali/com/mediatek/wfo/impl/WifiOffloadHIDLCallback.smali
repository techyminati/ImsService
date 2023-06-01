.class public Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;
.super Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;
.source "WifiOffloadHIDLCallback.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WifiOffloadHIDLCallback"


# instance fields
.field private mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 3
    .param p1, "wifiOffloadService"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 47
    invoke-direct {p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 48
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 49
    return-void
.end method


# virtual methods
.method public onDisconnectCauseNotify(III)V
    .registers 6
    .param p1, "simIdx"    # I
    .param p2, "lastErr"    # I
    .param p3, "lastSubErr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    if-eqz v0, :cond_8

    .line 94
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->onDisconnectCauseNotify(III)V

    goto :goto_f

    .line 96
    :cond_8
    const-string v0, "WifiOffloadHIDLCallback"

    const-string v1, "mWifiOffloadService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_f
    return-void
.end method

.method public onHandover(III)V
    .registers 6
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    if-eqz v0, :cond_8

    .line 140
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->onHandover(III)V

    goto :goto_f

    .line 142
    :cond_8
    const-string v0, "WifiOffloadHIDLCallback"

    const-string v1, "mWifiOffloadService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_f
    return-void
.end method

.method public onMalReset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    if-eqz v0, :cond_8

    .line 103
    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->onMalReset()V

    goto :goto_f

    .line 105
    :cond_8
    const-string v0, "WifiOffloadHIDLCallback"

    const-string v1, "mWifiOffloadService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_f
    return-void
.end method

.method public onPdnRanTypeChanged(III)V
    .registers 6
    .param p1, "simIdx"    # I
    .param p2, "interfaceId"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    if-eqz v0, :cond_8

    .line 113
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->onPdnRanTypeChanged(III)V

    goto :goto_f

    .line 115
    :cond_8
    const-string v0, "WifiOffloadHIDLCallback"

    const-string v1, "mWifiOffloadService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_f
    return-void
.end method

.method public onPdnStateChanged(IZ)V
    .registers 5
    .param p1, "simIdx"    # I
    .param p2, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    if-eqz v0, :cond_8

    .line 122
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->onPdnStateChanged(IZ)V

    goto :goto_f

    .line 124
    :cond_8
    const-string v0, "WifiOffloadHIDLCallback"

    const-string v1, "mWifiOffloadService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_f
    return-void
.end method

.method public onRequestImsSwitch(IZ)V
    .registers 5
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    if-eqz v0, :cond_8

    .line 75
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->onRequestImsSwitch(IZ)V

    goto :goto_f

    .line 77
    :cond_8
    const-string v0, "WifiOffloadHIDLCallback"

    const-string v1, "mWifiOffloadService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_f
    return-void
.end method

.method public onRequestLocationInfo(I)V
    .registers 4
    .param p1, "simIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    if-eqz v0, :cond_8

    .line 55
    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->onRequestLocationInfo(I)V

    goto :goto_f

    .line 57
    :cond_8
    const-string v0, "WifiOffloadHIDLCallback"

    const-string v1, "mWifiOffloadService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_f
    return-void
.end method

.method public onRequestSetWifiDisabled(I)V
    .registers 4
    .param p1, "pdnCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    if-eqz v0, :cond_8

    .line 84
    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->onRequestSetWifiDisabled(I)V

    goto :goto_f

    .line 86
    :cond_8
    const-string v0, "WifiOffloadHIDLCallback"

    const-string v1, "mWifiOffloadService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_f
    return-void
.end method

.method public onRoveOut(IZI)V
    .registers 6
    .param p1, "simIdx"    # I
    .param p2, "roveOut"    # Z
    .param p3, "rssi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    if-eqz v0, :cond_8

    .line 131
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->onRoveOut(IZI)V

    goto :goto_f

    .line 133
    :cond_8
    const-string v0, "WifiOffloadHIDLCallback"

    const-string v1, "mWifiOffloadService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_f
    return-void
.end method

.method public onRssiMonitorRequest(IILjava/util/ArrayList;)V
    .registers 7
    .param p1, "simId"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    .local p3, "rssiThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;->mWifiOffloadService:Lcom/mediatek/wfo/impl/WifiOffloadService;

    if-eqz v0, :cond_17

    .line 65
    nop

    .line 66
    invoke-virtual {p3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback$$ExternalSyntheticLambda0;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 65
    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->onRssiMonitorRequest(II[I)V

    goto :goto_1e

    .line 68
    :cond_17
    const-string v0, "WifiOffloadHIDLCallback"

    const-string v1, "mWifiOffloadService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_1e
    return-void
.end method

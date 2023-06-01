.class Lcom/mediatek/advcam/IAdvCamService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAdvCamService.java"

# interfaces
.implements Lcom/mediatek/advcam/IAdvCamService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/advcam/IAdvCamService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/advcam/IAdvCamService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/mediatek/advcam/IAdvCamService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 98
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/mediatek/advcam/IAdvCamService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 105
    const-string v0, "com.mediatek.advcam.IAdvCamService"

    return-object v0
.end method

.method public setConfigureParam(ILandroid/hardware/camera2/CaptureRequest;)I
    .registers 8
    .param p1, "openId"    # I
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 119
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.advcam.IAdvCamService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1b

    .line 125
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {p2, v0, v3}, Landroid/hardware/camera2/CaptureRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 129
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    :goto_1e
    iget-object v4, p0, Lcom/mediatek/advcam/IAdvCamService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 132
    .local v2, "_status":Z
    if-nez v2, :cond_3b

    .line 133
    invoke-static {}, Lcom/mediatek/advcam/IAdvCamService$Stub;->getDefaultImpl()Lcom/mediatek/advcam/IAdvCamService;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 134
    invoke-static {}, Lcom/mediatek/advcam/IAdvCamService$Stub;->getDefaultImpl()Lcom/mediatek/advcam/IAdvCamService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/advcam/IAdvCamService;->setConfigureParam(ILandroid/hardware/camera2/CaptureRequest;)I

    move-result v3
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_4b

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    return v3

    .line 137
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4b

    move v2, v3

    .line 141
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    nop

    .line 144
    return v2

    .line 141
    .end local v2    # "_result":I
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw v2
.end method

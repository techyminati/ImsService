.class Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDebugReportCallback.java"

# interfaces
.implements Lcom/mediatek/gnssdebugreport/IDebugReportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/gnssdebugreport/IDebugReportCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 84
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 91
    const-string v0, "com.mediatek.gnssdebugreport.IDebugReportCallback"

    return-object v0
.end method

.method public onDebugReportAvailable(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "debugReport"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 98
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gnssdebugreport.IDebugReportCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 104
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_1b
    iget-object v4, p0, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 107
    .local v2, "_status":Z
    if-nez v2, :cond_37

    .line 108
    invoke-static {}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->getDefaultImpl()Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 109
    invoke-static {}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->getDefaultImpl()Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback;->onDebugReportAvailable(Landroid/os/Bundle;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 110
    return-void

    .line 113
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 116
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    nop

    .line 119
    return-void

    .line 116
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    throw v2
.end method

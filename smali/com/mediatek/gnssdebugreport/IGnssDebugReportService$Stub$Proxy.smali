.class Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGnssDebugReportService.java"

# interfaces
.implements Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 119
    return-void
.end method


# virtual methods
.method public addListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gnssdebugreport.IGnssDebugReportService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 181
    iget-object v2, p0, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 182
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 183
    invoke-static {}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->getDefaultImpl()Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 184
    invoke-static {}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->getDefaultImpl()Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;->addListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    return-void

    .line 188
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 191
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    nop

    .line 194
    return-void

    .line 191
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 126
    const-string v0, "com.mediatek.gnssdebugreport.IGnssDebugReportService"

    return-object v0
.end method

.method public removeListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gnssdebugreport.IGnssDebugReportService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 201
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 202
    iget-object v2, p0, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 203
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 204
    invoke-static {}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->getDefaultImpl()Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 205
    invoke-static {}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->getDefaultImpl()Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;->removeListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 206
    return-void

    .line 209
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 212
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    nop

    .line 215
    return-void

    .line 212
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw v2
.end method

.method public startDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z
    .registers 8
    .param p1, "callback"    # Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gnssdebugreport.IGnssDebugReportService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 136
    iget-object v2, p0, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 137
    .local v2, "_status":Z
    if-nez v2, :cond_37

    .line 138
    invoke-static {}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->getDefaultImpl()Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    move-result-object v5

    if-eqz v5, :cond_37

    .line 139
    invoke-static {}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->getDefaultImpl()Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;->startDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z

    move-result v3
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_4a

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    return v3

    .line 142
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_4a

    if-eqz v5, :cond_41

    move v3, v4

    :cond_41
    move v2, v3

    .line 146
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    nop

    .line 149
    return v2

    .line 146
    .end local v2    # "_result":Z
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    throw v2
.end method

.method public stopDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z
    .registers 7
    .param p1, "callback"    # Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 154
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gnssdebugreport.IGnssDebugReportService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 159
    iget-object v2, p0, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 160
    .local v2, "_status":Z
    if-nez v2, :cond_37

    .line 161
    invoke-static {}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->getDefaultImpl()Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 162
    invoke-static {}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->getDefaultImpl()Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;->stopDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z

    move-result v3
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_4a

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    return v3

    .line 165
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_4a

    if-eqz v3, :cond_41

    const/4 v4, 0x1

    :cond_41
    move v2, v4

    .line 169
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    nop

    .line 172
    return v2

    .line 169
    .end local v2    # "_result":Z
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    throw v2
.end method

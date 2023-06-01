.class Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDataShapingManager.java"

# interfaces
.implements Lcom/mediatek/datashaping/IDataShapingManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/datashaping/IDataShapingManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/datashaping/IDataShapingManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 129
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public disableDataShaping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 161
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 163
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.datashaping.IDataShapingManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 165
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    .line 166
    invoke-static {}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->getDefaultImpl()Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 167
    invoke-static {}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->getDefaultImpl()Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/datashaping/IDataShapingManager;->disableDataShaping()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    return-void

    .line 171
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 174
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    nop

    .line 177
    return-void

    .line 174
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw v2
.end method

.method public enableDataShaping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 141
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 143
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.datashaping.IDataShapingManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 145
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    .line 146
    invoke-static {}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->getDefaultImpl()Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 147
    invoke-static {}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->getDefaultImpl()Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/datashaping/IDataShapingManager;->enableDataShaping()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    return-void

    .line 151
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 154
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    nop

    .line 157
    return-void

    .line 154
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 136
    const-string v0, "com.mediatek.datashaping.IDataShapingManager"

    return-object v0
.end method

.method public isDataShapingWhitelistApp(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 229
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.datashaping.IDataShapingManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 232
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 233
    invoke-static {}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->getDefaultImpl()Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 234
    invoke-static {}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->getDefaultImpl()Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/datashaping/IDataShapingManager;->isDataShapingWhitelistApp(Ljava/lang/String;)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_42

    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    return v3

    .line 237
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_42

    if-eqz v3, :cond_39

    const/4 v4, 0x1

    :cond_39
    move v2, v4

    .line 241
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    nop

    .line 244
    return v2

    .line 241
    .end local v2    # "_result":Z
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    throw v2
.end method

.method public openLteDataUpLinkGate(Z)Z
    .registers 8
    .param p1, "isForce"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.datashaping.IDataShapingManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 185
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v4, p0, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 187
    .local v4, "_status":Z
    if-nez v4, :cond_35

    .line 188
    invoke-static {}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->getDefaultImpl()Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v5

    if-eqz v5, :cond_35

    .line 189
    invoke-static {}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->getDefaultImpl()Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/datashaping/IDataShapingManager;->openLteDataUpLinkGate(Z)Z

    move-result v2
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_48

    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    return v2

    .line 192
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_48

    if-eqz v5, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    .line 196
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    nop

    .line 199
    return v2

    .line 196
    .end local v2    # "_result":Z
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    throw v2
.end method

.method public setDeviceIdleMode(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 205
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.datashaping.IDataShapingManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 208
    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v3, p0, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 210
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 211
    invoke-static {}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->getDefaultImpl()Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 212
    invoke-static {}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->getDefaultImpl()Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/datashaping/IDataShapingManager;->setDeviceIdleMode(Z)V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_3e

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    return-void

    .line 216
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3e

    .line 219
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    nop

    .line 222
    return-void

    .line 219
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    throw v2
.end method

.class Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarrierExpressService.java"

# interfaces
.implements Lcom/mediatek/common/carrierexpress/ICarrierExpressService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/common/carrierexpress/ICarrierExpressService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 136
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getActiveOpPack()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 148
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 151
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 153
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 154
    invoke-static {}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getDefaultImpl()Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 155
    invoke-static {}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getDefaultImpl()Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService;->getActiveOpPack()Ljava/lang/String;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    return-object v3

    .line 158
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move-object v2, v3

    .line 162
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    nop

    .line 165
    return-object v2

    .line 162
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw v2
.end method

.method public getAllOpPackList()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 221
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 222
    invoke-static {}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getDefaultImpl()Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 223
    invoke-static {}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getDefaultImpl()Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService;->getAllOpPackList()Ljava/util/Map;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_44

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    return-object v3

    .line 226
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 228
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_44

    move-object v2, v4

    .line 231
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    nop

    .line 234
    return-object v2

    .line 231
    .end local v2    # "_result":Ljava/util/Map;
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 143
    const-string v0, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    return-object v0
.end method

.method public getOpPackFromSimInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "mcc_mnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 173
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 176
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 177
    invoke-static {}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getDefaultImpl()Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 178
    invoke-static {}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getDefaultImpl()Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService;->getOpPackFromSimInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    return-object v3

    .line 181
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move-object v2, v3

    .line 185
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    nop

    .line 188
    return-object v2

    .line 185
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    throw v2
.end method

.method public getOperatorSubIdList(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "opPack"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 245
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 246
    invoke-static {}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getDefaultImpl()Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 247
    invoke-static {}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getDefaultImpl()Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService;->getOperatorSubIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_47

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    return-object v3

    .line 250
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 252
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_47

    move-object v2, v4

    .line 255
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    nop

    .line 258
    return-object v2

    .line 255
    .end local v2    # "_result":Ljava/util/List;
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    throw v2
.end method

.method public setOpPackActive(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "opPack"    # Ljava/lang/String;
    .param p2, "opSubId"    # Ljava/lang/String;
    .param p3, "mainSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 193
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v2, p0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 200
    .local v2, "_status":Z
    if-nez v2, :cond_34

    .line 201
    invoke-static {}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getDefaultImpl()Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 202
    invoke-static {}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getDefaultImpl()Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService;->setOpPackActive(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    return-void

    .line 206
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 209
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    nop

    .line 212
    return-void

    .line 209
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    throw v2
.end method

.class Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISearchEngineManagerService.java"

# interfaces
.implements Lcom/mediatek/search/ISearchEngineManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/search/ISearchEngineManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/search/ISearchEngineManagerService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 163
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAvailables()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/common/search/SearchEngine;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 180
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 181
    invoke-static {}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefaultImpl()Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 182
    invoke-static {}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefaultImpl()Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/search/ISearchEngineManagerService;->getAvailables()Ljava/util/List;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3e

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    return-object v3

    .line 185
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 186
    sget-object v3, Lcom/mediatek/common/search/SearchEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_3e

    move-object v2, v3

    .line 189
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    nop

    .line 192
    return-object v2

    .line 189
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    throw v2
.end method

.method public getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "favicon"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 224
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 231
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 232
    invoke-static {}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefaultImpl()Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 233
    invoke-static {}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefaultImpl()Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/search/ISearchEngineManagerService;->getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_4d

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    return-object v3

    .line 236
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_44

    .line 238
    sget-object v3, Lcom/mediatek/common/search/SearchEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/search/SearchEngine;
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_4d

    .local v3, "_result":Lcom/mediatek/common/search/SearchEngine;
    goto :goto_45

    .line 241
    .end local v3    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :cond_44
    const/4 v3, 0x0

    .line 245
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :goto_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    nop

    .line 248
    return-object v3

    .line 245
    .end local v3    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw v2
.end method

.method public getDefault()Lcom/mediatek/common/search/SearchEngine;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 202
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 203
    invoke-static {}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefaultImpl()Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 204
    invoke-static {}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefaultImpl()Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/search/ISearchEngineManagerService;->getDefault()Lcom/mediatek/common/search/SearchEngine;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_47

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    return-object v3

    .line 207
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3e

    .line 209
    sget-object v3, Lcom/mediatek/common/search/SearchEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/search/SearchEngine;
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_47

    .local v3, "_result":Lcom/mediatek/common/search/SearchEngine;
    goto :goto_3f

    .line 212
    .end local v3    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :cond_3e
    const/4 v3, 0x0

    .line 216
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :goto_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 218
    nop

    .line 219
    return-object v3

    .line 216
    .end local v3    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 218
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 170
    const-string v0, "com.mediatek.search.ISearchEngineManagerService"

    return-object v0
.end method

.method public getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .registers 8
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 260
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 261
    invoke-static {}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefaultImpl()Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 262
    invoke-static {}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefaultImpl()Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/search/ISearchEngineManagerService;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_4d

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    return-object v3

    .line 265
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_44

    .line 267
    sget-object v3, Lcom/mediatek/common/search/SearchEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/search/SearchEngine;
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_4d

    .local v3, "_result":Lcom/mediatek/common/search/SearchEngine;
    goto :goto_45

    .line 270
    .end local v3    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :cond_44
    const/4 v3, 0x0

    .line 274
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :goto_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 276
    nop

    .line 277
    return-object v3

    .line 274
    .end local v3    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 276
    throw v2
.end method

.method public setDefault(Lcom/mediatek/common/search/SearchEngine;)Z
    .registers 8
    .param p1, "engine"    # Lcom/mediatek/common/search/SearchEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 282
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 285
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 286
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 287
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    invoke-virtual {p1, v0, v3}, Lcom/mediatek/common/search/SearchEngine;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 291
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    :goto_1b
    iget-object v4, p0, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 294
    .local v4, "_status":Z
    if-nez v4, :cond_39

    .line 295
    invoke-static {}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefaultImpl()Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 296
    invoke-static {}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefaultImpl()Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/search/ISearchEngineManagerService;->setDefault(Lcom/mediatek/common/search/SearchEngine;)Z

    move-result v2
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    return v2

    .line 299
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz v5, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    .line 303
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 305
    nop

    .line 306
    return v2

    .line 303
    .end local v2    # "_result":Z
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 305
    throw v2
.end method

.class Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDuraSpeedService.java"

# interfaces
.implements Lcom/mediatek/duraspeed/manager/IDuraSpeedService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/duraspeed/manager/IDuraSpeedService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 103
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 110
    const-string v0, "com.mediatek.duraspeed.manager.IDuraSpeedService"

    return-object v0
.end method

.method public getPlatformWhitelist()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 115
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 118
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.duraspeed.manager.IDuraSpeedService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 120
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 121
    invoke-static {}, Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub;->getDefaultImpl()Lcom/mediatek/duraspeed/manager/IDuraSpeedService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 122
    invoke-static {}, Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub;->getDefaultImpl()Lcom/mediatek/duraspeed/manager/IDuraSpeedService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/duraspeed/manager/IDuraSpeedService;->getPlatformWhitelist()Ljava/util/List;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    return-object v3

    .line 125
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move-object v2, v3

    .line 129
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    nop

    .line 132
    return-object v2

    .line 129
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    throw v2
.end method

.method public getRestrictList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.duraspeed.manager.IDuraSpeedService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 163
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 164
    invoke-static {}, Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub;->getDefaultImpl()Lcom/mediatek/duraspeed/manager/IDuraSpeedService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 165
    invoke-static {}, Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub;->getDefaultImpl()Lcom/mediatek/duraspeed/manager/IDuraSpeedService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/duraspeed/manager/IDuraSpeedService;->getRestrictList()Ljava/util/List;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    return-object v3

    .line 168
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move-object v2, v3

    .line 172
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    nop

    .line 175
    return-object v2

    .line 172
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw v2
.end method

.method public setAppWhitelist(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    .local p1, "appWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 139
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.duraspeed.manager.IDuraSpeedService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 141
    iget-object v2, p0, Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 142
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    .line 143
    invoke-static {}, Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub;->getDefaultImpl()Lcom/mediatek/duraspeed/manager/IDuraSpeedService;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 144
    invoke-static {}, Lcom/mediatek/duraspeed/manager/IDuraSpeedService$Stub;->getDefaultImpl()Lcom/mediatek/duraspeed/manager/IDuraSpeedService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/duraspeed/manager/IDuraSpeedService;->setAppWhitelist(Ljava/util/List;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    return-void

    .line 148
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 151
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    nop

    .line 154
    return-void

    .line 151
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw v2
.end method

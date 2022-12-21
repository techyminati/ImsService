.class Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOmadmManager.java"

# interfaces
.implements Lcom/mediatek/common/omadm/IOmadmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/omadm/IOmadmManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/common/omadm/IOmadmManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 88
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 95
    const-string v0, "com.mediatek.common.omadm.IOmadmManager"

    return-object v0
.end method

.method public inputStream(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.omadm.IOmadmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 106
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 107
    invoke-static {}, Lcom/mediatek/common/omadm/IOmadmManager$Stub;->getDefaultImpl()Lcom/mediatek/common/omadm/IOmadmManager;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 108
    invoke-static {}, Lcom/mediatek/common/omadm/IOmadmManager$Stub;->getDefaultImpl()Lcom/mediatek/common/omadm/IOmadmManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/omadm/IOmadmManager;->inputStream(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_4a

    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    return-object v3

    .line 111
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_41

    .line 113
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_4a

    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_42

    .line 116
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_41
    const/4 v3, 0x0

    .line 120
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :goto_42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    nop

    .line 123
    return-object v3

    .line 120
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    throw v2
.end method
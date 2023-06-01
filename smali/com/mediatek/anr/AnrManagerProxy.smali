.class Lcom/mediatek/anr/AnrManagerProxy;
.super Ljava/lang/Object;
.source "AnrManagerProxy.java"

# interfaces
.implements Lcom/mediatek/anr/IAnrManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mediatek/anr/AnrManagerProxy;->mRemote:Landroid/os/IBinder;

    .line 49
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/mediatek/anr/AnrManagerProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public informMessageDump(Ljava/lang/String;I)V
    .registers 8
    .param p1, "msgInfo"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 57
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IAnrManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v1, p0, Lcom/mediatek/anr/AnrManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 62
    return-void
.end method

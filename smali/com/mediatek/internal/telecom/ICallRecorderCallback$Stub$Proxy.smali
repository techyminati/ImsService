.class Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICallRecorderCallback.java"

# interfaces
.implements Lcom/mediatek/internal/telecom/ICallRecorderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/internal/telecom/ICallRecorderCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 95
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 102
    const-string v0, "com.mediatek.internal.telecom.ICallRecorderCallback"

    return-object v0
.end method

.method public onRecordEvent(ILjava/lang/String;)V
    .registers 8
    .param p1, "eventId"    # I
    .param p2, "eventContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 127
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.internal.telecom.ICallRecorderCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 131
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    .line 132
    invoke-static {}, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub;->getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderCallback;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 133
    invoke-static {}, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub;->getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telecom/ICallRecorderCallback;->onRecordEvent(ILjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    return-void

    .line 139
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    nop

    .line 141
    return-void

    .line 139
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    throw v1
.end method

.method public onRecordStateChanged(I)V
    .registers 6
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.internal.telecom.ICallRecorderCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v1, p0, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 111
    .local v1, "_status":Z
    if-nez v1, :cond_27

    .line 112
    invoke-static {}, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub;->getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderCallback;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 113
    invoke-static {}, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub;->getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telecom/ICallRecorderCallback;->onRecordStateChanged(I)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_2c

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    return-void

    .line 119
    .end local v1    # "_status":Z
    :cond_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    nop

    .line 121
    return-void

    .line 119
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    throw v1
.end method

.class Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICallRecorderService.java"

# interfaces
.implements Lcom/mediatek/internal/telecom/ICallRecorderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/internal/telecom/ICallRecorderService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 104
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 111
    const-string v0, "com.mediatek.internal.telecom.ICallRecorderService"

    return-object v0
.end method

.method public setCallback(Lcom/mediatek/internal/telecom/ICallRecorderCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/mediatek/internal/telecom/ICallRecorderCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 155
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.internal.telecom.ICallRecorderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/mediatek/internal/telecom/ICallRecorderCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 157
    iget-object v2, p0, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 158
    .local v1, "_status":Z
    if-nez v1, :cond_30

    .line 159
    invoke-static {}, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;->getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderService;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 160
    invoke-static {}, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;->getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telecom/ICallRecorderService;->setCallback(Lcom/mediatek/internal/telecom/ICallRecorderCallback;)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_35

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    return-void

    .line 166
    .end local v1    # "_status":Z
    :cond_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    nop

    .line 168
    return-void

    .line 166
    :catchall_35
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw v1
.end method

.method public startVoiceRecord(Ljava/lang/String;)V
    .registers 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 119
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.internal.telecom.ICallRecorderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 122
    .local v1, "_status":Z
    if-nez v1, :cond_27

    .line 123
    invoke-static {}, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;->getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderService;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 124
    invoke-static {}, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;->getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telecom/ICallRecorderService;->startVoiceRecord(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_2c

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    return-void

    .line 130
    .end local v1    # "_status":Z
    :cond_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    nop

    .line 132
    return-void

    .line 130
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    throw v1
.end method

.method public stopVoiceRecord()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 138
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.internal.telecom.ICallRecorderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 140
    .local v1, "_status":Z
    if-nez v1, :cond_25

    .line 141
    invoke-static {}, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;->getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderService;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 142
    invoke-static {}, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;->getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderService;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/internal/telecom/ICallRecorderService;->stopVoiceRecord()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    return-void

    .line 148
    .end local v1    # "_status":Z
    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    throw v1
.end method

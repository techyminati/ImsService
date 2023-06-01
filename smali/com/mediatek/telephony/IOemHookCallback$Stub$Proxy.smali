.class Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOemHookCallback.java"

# interfaces
.implements Lcom/mediatek/telephony/IOemHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/IOemHookCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/telephony/IOemHookCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 110
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 117
    const-string v0, "com.mediatek.telephony.IOemHookCallback"

    return-object v0
.end method

.method public onAtCmdResp(IJLjava/lang/String;)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.telephony.IOemHookCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 128
    .local v1, "_status":Z
    if-nez v1, :cond_2d

    .line 129
    invoke-static {}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->getDefaultImpl()Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 130
    invoke-static {}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->getDefaultImpl()Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/telephony/IOemHookCallback;->onAtCmdResp(IJLjava/lang/String;)V
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_32

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    return-void

    .line 136
    .end local v1    # "_status":Z
    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    nop

    .line 138
    return-void

    .line 136
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    throw v1
.end method

.method public onAtUrcInd(ILjava/lang/String;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "atCmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.telephony.IOemHookCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 147
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    .line 148
    invoke-static {}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->getDefaultImpl()Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 149
    invoke-static {}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->getDefaultImpl()Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/telephony/IOemHookCallback;->onAtUrcInd(ILjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    return-void

    .line 155
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    nop

    .line 157
    return-void

    .line 155
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw v1
.end method

.method public onError(Ljava/lang/String;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.telephony.IOemHookCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 165
    .local v1, "_status":Z
    if-nez v1, :cond_28

    .line 166
    invoke-static {}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->getDefaultImpl()Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 167
    invoke-static {}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->getDefaultImpl()Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/telephony/IOemHookCallback;->onError(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    return-void

    .line 173
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw v1
.end method

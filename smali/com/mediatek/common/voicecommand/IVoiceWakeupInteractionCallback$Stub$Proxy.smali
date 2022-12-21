.class Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceWakeupInteractionCallback.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 82
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 89
    const-string v0, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionCallback"

    return-object v0
.end method

.method public onVoiceWakeupDetected(I)V
    .registers 7
    .param p1, "commandId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 97
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 99
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v2, p0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 102
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    .line 103
    invoke-static {}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub;->getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 104
    invoke-static {}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub;->getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;->onVoiceWakeupDetected(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    return-void

    .line 108
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 111
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 113
    nop

    .line 114
    return-void

    .line 111
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 113
    throw v2
.end method
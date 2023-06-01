.class Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceCommandListener.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 96
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandListener"

    return-object v0
.end method

.method public onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .registers 9
    .param p1, "mainAction"    # I
    .param p2, "subAction"    # I
    .param p3, "extraData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.voicecommand.IVoiceCommandListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1e

    .line 107
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 111
    :cond_1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :goto_21
    iget-object v4, p0, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 114
    .local v2, "_status":Z
    if-nez v2, :cond_3d

    .line 115
    invoke-static {}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;->getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 116
    invoke-static {}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;->getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;->onVoiceCommandNotified(IILandroid/os/Bundle;)V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_48

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    return-void

    .line 120
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_48

    .line 123
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    nop

    .line 126
    return-void

    .line 123
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    throw v2
.end method

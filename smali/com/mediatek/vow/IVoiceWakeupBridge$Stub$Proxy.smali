.class Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceWakeupBridge.java"

# interfaces
.implements Lcom/mediatek/vow/IVoiceWakeupBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/vow/IVoiceWakeupBridge;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 130
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 137
    const-string v0, "com.mediatek.vow.IVoiceWakeupBridge"

    return-object v0
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 10
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.vow.IVoiceWakeupBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1b

    .line 148
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {p2, v0, v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 152
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    :goto_1e
    if-eqz p3, :cond_25

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 155
    if-eqz p4, :cond_32

    .line 156
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {p4, v0, v3}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    .line 160
    :cond_32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    :goto_35
    iget-object v4, p0, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 163
    .local v2, "_status":Z
    if-nez v2, :cond_52

    .line 164
    invoke-static {}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->getDefaultImpl()Lcom/mediatek/vow/IVoiceWakeupBridge;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 165
    invoke-static {}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->getDefaultImpl()Lcom/mediatek/vow/IVoiceWakeupBridge;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/vow/IVoiceWakeupBridge;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v3
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_62

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    return v3

    .line 168
    :cond_52
    :try_start_52
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_62

    move v2, v3

    .line 172
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    nop

    .line 175
    return v2

    .line 172
    .end local v2    # "_result":I
    :catchall_62
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw v2
.end method

.method public stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 8
    .param p1, "keyphraseId"    # I
    .param p2, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.vow.IVoiceWakeupBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    if-eqz p2, :cond_17

    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 186
    iget-object v2, p0, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 187
    .local v2, "_status":Z
    if-nez v2, :cond_3a

    .line 188
    invoke-static {}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->getDefaultImpl()Lcom/mediatek/vow/IVoiceWakeupBridge;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 189
    invoke-static {}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->getDefaultImpl()Lcom/mediatek/vow/IVoiceWakeupBridge;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/vow/IVoiceWakeupBridge;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v3
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_4a

    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    return v3

    .line 192
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4a

    move v2, v3

    .line 196
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    nop

    .line 199
    return v2

    .line 196
    .end local v2    # "_result":I
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    throw v2
.end method

.method public unloadKeyphraseModel(I)I
    .registers 7
    .param p1, "keyphaseId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.vow.IVoiceWakeupBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v2, p0, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 210
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 211
    invoke-static {}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->getDefaultImpl()Lcom/mediatek/vow/IVoiceWakeupBridge;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 212
    invoke-static {}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->getDefaultImpl()Lcom/mediatek/vow/IVoiceWakeupBridge;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/vow/IVoiceWakeupBridge;->unloadKeyphraseModel(I)I

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    return v3

    .line 215
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move v2, v3

    .line 219
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    nop

    .line 222
    return v2

    .line 219
    .end local v2    # "_result":I
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    throw v2
.end method

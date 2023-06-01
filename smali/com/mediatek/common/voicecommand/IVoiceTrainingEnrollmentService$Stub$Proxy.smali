.class Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceTrainingEnrollmentService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 105
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public enrollSoundModel(IILjava/lang/String;I)Z
    .registers 11
    .param p1, "traningMode"    # I
    .param p2, "commandId"    # I
    .param p3, "patternPath"    # Ljava/lang/String;
    .param p4, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 123
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v2, p0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 129
    .local v2, "_status":Z
    if-nez v2, :cond_38

    .line 130
    invoke-static {}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    move-result-object v5

    if-eqz v5, :cond_38

    .line 131
    invoke-static {}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;->enrollSoundModel(IILjava/lang/String;I)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_4b

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    return v3

    .line 134
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_4b

    if-eqz v5, :cond_42

    move v3, v4

    :cond_42
    move v2, v3

    .line 138
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    nop

    .line 141
    return v2

    .line 138
    .end local v2    # "_result":Z
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 112
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    return-object v0
.end method

.method public unEnrollSoundModel()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 149
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 152
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 154
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 155
    invoke-static {}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 156
    invoke-static {}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;->unEnrollSoundModel()Z

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3f

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    return v3

    .line 159
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3f

    if-eqz v3, :cond_36

    const/4 v4, 0x1

    :cond_36
    move v2, v4

    .line 163
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    nop

    .line 166
    return v2

    .line 163
    .end local v2    # "_result":Z
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    throw v2
.end method

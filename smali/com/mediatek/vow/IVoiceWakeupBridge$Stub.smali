.class public abstract Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;
.super Landroid/os/Binder;
.source "IVoiceWakeupBridge.java"

# interfaces
.implements Lcom/mediatek/vow/IVoiceWakeupBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vow/IVoiceWakeupBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_startRecognition:I = 0x1

.field static final TRANSACTION_stopRecognition:I = 0x2

.field static final TRANSACTION_unloadKeyphraseModel:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.mediatek.vow.IVoiceWakeupBridge"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/vow/IVoiceWakeupBridge;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    const-string v0, "com.mediatek.vow.IVoiceWakeupBridge"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/vow/IVoiceWakeupBridge;

    if-eqz v1, :cond_14

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/mediatek/vow/IVoiceWakeupBridge;

    return-object v1

    .line 51
    :cond_14
    new-instance v1, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/vow/IVoiceWakeupBridge;
    .registers 1

    .line 243
    sget-object v0, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/vow/IVoiceWakeupBridge;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/vow/IVoiceWakeupBridge;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/vow/IVoiceWakeupBridge;

    .line 233
    sget-object v0, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/vow/IVoiceWakeupBridge;

    if-nez v0, :cond_c

    .line 236
    if-eqz p0, :cond_a

    .line 237
    sput-object p0, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/vow/IVoiceWakeupBridge;

    .line 238
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 234
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const-string v0, "com.mediatek.vow.IVoiceWakeupBridge"

    .line 60
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_78

    .line 68
    packed-switch p1, :pswitch_data_7e

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 110
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->unloadKeyphraseModel(I)I

    move-result v3

    .line 114
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return v1

    .line 98
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v3

    .line 103
    .local v3, "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v4

    .line 104
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v1

    .line 72
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v4    # "_result":I
    :pswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_54

    .line 77
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .local v3, "_arg1":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    goto :goto_55

    .line 80
    .end local v3    # "_arg1":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :cond_54
    const/4 v3, 0x0

    .line 83
    .restart local v3    # "_arg1":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :goto_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v4

    .line 85
    .local v4, "_arg2":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6c

    .line 86
    sget-object v5, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .local v5, "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    goto :goto_6d

    .line 89
    .end local v5    # "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :cond_6c
    const/4 v5, 0x0

    .line 91
    .restart local v5    # "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :goto_6d
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v6

    .line 92
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v1

    :pswitch_data_78
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_24
        :pswitch_12
    .end packed-switch
.end method

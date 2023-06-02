.class public abstract Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub;
.super Landroid/os/Binder;
.source "IVoiceWakeupInteractionCallback.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onVoiceWakeupDetected:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const-string v0, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;

    if-eqz v1, :cond_1

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;

    return-object v1

    .line 42
    :cond_1
    new-instance v1, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;
    .locals 1

    .line 132
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;

    .line 122
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;

    if-nez v0, :cond_1

    .line 125
    if-eqz p0, :cond_0

    .line 126
    sput-object p0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;

    .line 127
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const-string v0, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionCallback"

    .line 51
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 59
    packed-switch p1, :pswitch_data_1

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 55
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return v1

    .line 63
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub;->onVoiceWakeupDetected(I)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

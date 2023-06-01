.class public abstract Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;
.super Landroid/os/Binder;
.source "IVoiceCommandListener.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onVoiceCommandNotified:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_4
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    if-eqz v1, :cond_14

    .line 38
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    return-object v1

    .line 40
    :cond_14
    new-instance v1, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    .registers 1

    .line 144
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 134
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    if-nez v0, :cond_c

    .line 137
    if-eqz p0, :cond_a

    .line 138
    sput-object p0, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 139
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandListener"

    .line 49
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_34

    .line 57
    packed-switch p1, :pswitch_data_3a

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 53
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v1

    .line 61
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 68
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .local v4, "_arg2":Landroid/os/Bundle;
    goto :goto_2d

    .line 71
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :cond_2c
    const/4 v4, 0x0

    .line 73
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    :goto_2d
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;->onVoiceCommandNotified(IILandroid/os/Bundle;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v1

    :pswitch_data_34
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

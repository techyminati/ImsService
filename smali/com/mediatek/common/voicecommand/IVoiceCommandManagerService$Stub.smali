.class public abstract Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;
.super Landroid/os/Binder;
.source "IVoiceCommandManagerService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_sendCommand:I = 0x3

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .registers 1

    .line 233
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 223
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v0, :cond_c

    .line 226
    if-eqz p0, :cond_a

    .line 227
    sput-object p0, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 228
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 224
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
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

    .line 57
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandManagerService"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_70

    .line 66
    packed-switch p1, :pswitch_data_76

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 62
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 94
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 102
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30

    .line 103
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg3":Landroid/os/Bundle;
    goto :goto_31

    .line 106
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :cond_30
    const/4 v5, 0x0

    .line 108
    .restart local v5    # "_arg3":Landroid/os/Bundle;
    :goto_31
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v6

    .line 109
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return v1

    .line 82
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":I
    :pswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    move-result-object v3

    .line 87
    .local v3, "_arg1":Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v4

    .line 88
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v1

    .line 70
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    .end local v4    # "_result":I
    :pswitch_56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    move-result-object v3

    .line 75
    .restart local v3    # "_arg1":Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v4

    .line 76
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v1

    :pswitch_data_70
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_56
        :pswitch_3c
        :pswitch_12
    .end packed-switch
.end method

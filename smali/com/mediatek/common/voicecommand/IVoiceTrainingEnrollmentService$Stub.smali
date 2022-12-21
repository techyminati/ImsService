.class public abstract Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;
.super Landroid/os/Binder;
.source "IVoiceTrainingEnrollmentService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_enrollSoundModel:I = 0x1

.field static final TRANSACTION_unEnrollSoundModel:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
    .registers 1

    .line 186
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    .line 176
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    if-nez v0, :cond_c

    .line 179
    if-eqz p0, :cond_a

    .line 180
    sput-object p0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    .line 181
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
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

    .line 58
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    .line 59
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_3e

    .line 67
    packed-switch p1, :pswitch_data_44

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 63
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v1

    .line 87
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->unEnrollSoundModel()Z

    move-result v2

    .line 89
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return v1

    .line 71
    .end local v2    # "_result":Z
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 80
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->enrollSoundModel(IILjava/lang/String;I)Z

    move-result v6

    .line 81
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v1

    :pswitch_data_3e
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_20
        :pswitch_12
    .end packed-switch
.end method
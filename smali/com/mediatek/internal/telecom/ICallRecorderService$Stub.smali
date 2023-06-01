.class public abstract Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;
.super Landroid/os/Binder;
.source "ICallRecorderService.java"

# interfaces
.implements Lcom/mediatek/internal/telecom/ICallRecorderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telecom/ICallRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_setCallback:I = 0x3

.field static final TRANSACTION_startVoiceRecord:I = 0x1

.field static final TRANSACTION_stopVoiceRecord:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.mediatek.internal.telecom.ICallRecorderService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telecom/ICallRecorderService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    const-string v0, "com.mediatek.internal.telecom.ICallRecorderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/internal/telecom/ICallRecorderService;

    if-eqz v1, :cond_14

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telecom/ICallRecorderService;

    return-object v1

    .line 51
    :cond_14
    new-instance v1, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderService;
    .registers 1

    .line 188
    sget-object v0, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telecom/ICallRecorderService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telecom/ICallRecorderService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/internal/telecom/ICallRecorderService;

    .line 178
    sget-object v0, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telecom/ICallRecorderService;

    if-nez v0, :cond_c

    .line 181
    if-eqz p0, :cond_a

    .line 182
    sput-object p0, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telecom/ICallRecorderService;

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 179
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
    .registers 8
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
    const-string v0, "com.mediatek.internal.telecom.ICallRecorderService"

    .line 60
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_34

    .line 68
    packed-switch p1, :pswitch_data_3a

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 86
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telecom/ICallRecorderCallback;

    move-result-object v2

    .line 89
    .local v2, "_arg0":Lcom/mediatek/internal/telecom/ICallRecorderCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;->setCallback(Lcom/mediatek/internal/telecom/ICallRecorderCallback;)V

    .line 90
    return v1

    .line 80
    .end local v2    # "_arg0":Lcom/mediatek/internal/telecom/ICallRecorderCallback;
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;->stopVoiceRecord()V

    .line 82
    return v1

    .line 72
    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telecom/ICallRecorderService$Stub;->startVoiceRecord(Ljava/lang/String;)V

    .line 76
    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_21
        :pswitch_12
    .end packed-switch
.end method

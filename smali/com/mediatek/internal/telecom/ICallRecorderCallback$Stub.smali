.class public abstract Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub;
.super Landroid/os/Binder;
.source "ICallRecorderCallback.java"

# interfaces
.implements Lcom/mediatek/internal/telecom/ICallRecorderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telecom/ICallRecorderCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onRecordEvent:I = 0x2

.field static final TRANSACTION_onRecordStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.mediatek.internal.telecom.ICallRecorderCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telecom/ICallRecorderCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "com.mediatek.internal.telecom.ICallRecorderCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/internal/telecom/ICallRecorderCallback;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telecom/ICallRecorderCallback;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telecom/ICallRecorderCallback;
    .registers 1

    .line 160
    sget-object v0, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telecom/ICallRecorderCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telecom/ICallRecorderCallback;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/internal/telecom/ICallRecorderCallback;

    .line 150
    sget-object v0, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telecom/ICallRecorderCallback;

    if-nez v0, :cond_c

    .line 153
    if-eqz p0, :cond_a

    .line 154
    sput-object p0, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telecom/ICallRecorderCallback;

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const-string v0, "com.mediatek.internal.telecom.ICallRecorderCallback"

    .line 55
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_2c

    .line 63
    packed-switch p1, :pswitch_data_32

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 59
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v1

    .line 75
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub;->onRecordEvent(ILjava/lang/String;)V

    .line 81
    return v1

    .line 67
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telecom/ICallRecorderCallback$Stub;->onRecordStateChanged(I)V

    .line 71
    return v1

    :pswitch_data_2c
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_21
        :pswitch_12
    .end packed-switch
.end method

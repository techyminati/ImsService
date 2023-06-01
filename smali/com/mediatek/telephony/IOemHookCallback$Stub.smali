.class public abstract Lcom/mediatek/telephony/IOemHookCallback$Stub;
.super Landroid/os/Binder;
.source "IOemHookCallback.java"

# interfaces
.implements Lcom/mediatek/telephony/IOemHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/IOemHookCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAtCmdResp:I = 0x1

.field static final TRANSACTION_onAtUrcInd:I = 0x2

.field static final TRANSACTION_onError:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.mediatek.telephony.IOemHookCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/telephony/IOemHookCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "com.mediatek.telephony.IOemHookCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/telephony/IOemHookCallback;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/mediatek/telephony/IOemHookCallback;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/telephony/IOemHookCallback;
    .registers 1

    .line 195
    sget-object v0, Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/telephony/IOemHookCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/telephony/IOemHookCallback;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/telephony/IOemHookCallback;

    .line 185
    sget-object v0, Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/telephony/IOemHookCallback;

    if-nez v0, :cond_c

    .line 188
    if-eqz p0, :cond_a

    .line 189
    sput-object p0, Lcom/mediatek/telephony/IOemHookCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/telephony/IOemHookCallback;

    .line 190
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 186
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
    .registers 11
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
    const-string v0, "com.mediatek.telephony.IOemHookCallback"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_40

    .line 66
    packed-switch p1, :pswitch_data_46

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 62
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 92
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->onError(Ljava/lang/String;)V

    .line 96
    return v1

    .line 82
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->onAtUrcInd(ILjava/lang/String;)V

    .line 88
    return v1

    .line 70
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 76
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->onAtCmdResp(IJLjava/lang/String;)V

    .line 78
    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_1d
        :pswitch_12
    .end packed-switch
.end method

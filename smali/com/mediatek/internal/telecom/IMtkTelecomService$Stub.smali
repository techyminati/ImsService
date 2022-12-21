.class public abstract Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub;
.super Landroid/os/Binder;
.source "IMtkTelecomService.java"

# interfaces
.implements Lcom/mediatek/internal/telecom/IMtkTelecomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telecom/IMtkTelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAllPhoneAccountHandlesIncludingVirtual:I = 0x4

.field static final TRANSACTION_getAllPhoneAccountsIncludingVirtual:I = 0x3

.field static final TRANSACTION_isInCall:I = 0x5

.field static final TRANSACTION_isInVideoCall:I = 0x1

.field static final TRANSACTION_isInVolteCall:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.mediatek.internal.telecom.IMtkTelecomService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telecom/IMtkTelecomService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "com.mediatek.internal.telecom.IMtkTelecomService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/internal/telecom/IMtkTelecomService;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telecom/IMtkTelecomService;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telecom/IMtkTelecomService;
    .registers 1

    .line 276
    sget-object v0, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telecom/IMtkTelecomService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telecom/IMtkTelecomService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/internal/telecom/IMtkTelecomService;

    .line 266
    sget-object v0, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telecom/IMtkTelecomService;

    if-nez v0, :cond_c

    .line 269
    if-eqz p0, :cond_a

    .line 270
    sput-object p0, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telecom/IMtkTelecomService;

    .line 271
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
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

    .line 64
    const-string v0, "com.mediatek.internal.telecom.IMtkTelecomService"

    .line 65
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_64

    .line 73
    packed-switch p1, :pswitch_data_6a

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 69
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return v1

    .line 113
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub;->isInCall(Ljava/lang/String;)Z

    move-result v3

    .line 117
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return v1

    .line 105
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub;->getAllPhoneAccountHandlesIncludingVirtual()Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 109
    return v1

    .line 97
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :pswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub;->getAllPhoneAccountsIncludingVirtual()Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 101
    return v1

    .line 87
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    :pswitch_40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub;->isInVolteCall(Ljava/lang/String;)Z

    move-result v3

    .line 91
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v1

    .line 77
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub;->isInVideoCall(Ljava/lang/String;)Z

    move-result v3

    .line 81
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v1

    :pswitch_data_64
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_52
        :pswitch_40
        :pswitch_32
        :pswitch_24
        :pswitch_12
    .end packed-switch
.end method
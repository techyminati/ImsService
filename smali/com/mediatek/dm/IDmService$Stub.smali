.class public abstract Lcom/mediatek/dm/IDmService$Stub;
.super Landroid/os/Binder;
.source "IDmService.java"

# interfaces
.implements Lcom/mediatek/dm/IDmService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dm/IDmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dm/IDmService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getDmSupported:I = 0x1

.field static final TRANSACTION_getImcProvision:I = 0x2

.field static final TRANSACTION_setImcProvision:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.mediatek.dm.IDmService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/dm/IDmService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/dm/IDmService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "com.mediatek.dm.IDmService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/dm/IDmService;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/mediatek/dm/IDmService;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lcom/mediatek/dm/IDmService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/dm/IDmService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/dm/IDmService;
    .registers 1

    .line 222
    sget-object v0, Lcom/mediatek/dm/IDmService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/dm/IDmService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/dm/IDmService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/dm/IDmService;

    .line 212
    sget-object v0, Lcom/mediatek/dm/IDmService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/dm/IDmService;

    if-nez v0, :cond_c

    .line 215
    if-eqz p0, :cond_a

    .line 216
    sput-object p0, Lcom/mediatek/dm/IDmService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/dm/IDmService;

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
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

    .line 63
    const-string v0, "com.mediatek.dm.IDmService"

    .line 64
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_50

    .line 72
    packed-switch p1, :pswitch_data_56

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 68
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v1

    .line 96
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 102
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 103
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/dm/IDmService$Stub;->setImcProvision(III)Z

    move-result v5

    .line 104
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v1

    .line 84
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/dm/IDmService$Stub;->getImcProvision(II)Z

    move-result v4

    .line 90
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return v1

    .line 76
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_42
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/mediatek/dm/IDmService$Stub;->getDmSupported()I

    move-result v2

    .line 78
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return v1

    :pswitch_data_50
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_42
        :pswitch_2c
        :pswitch_12
    .end packed-switch
.end method

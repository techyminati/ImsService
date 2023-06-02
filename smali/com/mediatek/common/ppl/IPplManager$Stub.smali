.class public abstract Lcom/mediatek/common/ppl/IPplManager$Stub;
.super Landroid/os/Binder;
.source "IPplManager.java"

# interfaces
.implements Lcom/mediatek/common/ppl/IPplManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/ppl/IPplManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/ppl/IPplManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_lock:I = 0x3

.field static final TRANSACTION_needLock:I = 0x2

.field static final TRANSACTION_resetPassword:I = 0x1

.field static final TRANSACTION_unlock:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.mediatek.common.ppl.IPplManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/ppl/IPplManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/ppl/IPplManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "com.mediatek.common.ppl.IPplManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/ppl/IPplManager;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/ppl/IPplManager;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Lcom/mediatek/common/ppl/IPplManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/ppl/IPplManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/ppl/IPplManager;
    .locals 1

    .line 265
    sget-object v0, Lcom/mediatek/common/ppl/IPplManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/ppl/IPplManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/ppl/IPplManager;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/common/ppl/IPplManager;

    .line 255
    sget-object v0, Lcom/mediatek/common/ppl/IPplManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/ppl/IPplManager;

    if-nez v0, :cond_1

    .line 258
    if-eqz p0, :cond_0

    .line 259
    sput-object p0, Lcom/mediatek/common/ppl/IPplManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/ppl/IPplManager;

    .line 260
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 73
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string v0, "com.mediatek.common.ppl.IPplManager"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 86
    packed-switch p1, :pswitch_data_1

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 82
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v1

    .line 112
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/ppl/IPplManager$Stub;->unlock(Ljava/lang/String;)Z

    move-result v3

    .line 116
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v1

    .line 105
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/common/ppl/IPplManager$Stub;->lock()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    return v1

    .line 97
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/mediatek/common/ppl/IPplManager$Stub;->needLock()I

    move-result v2

    .line 99
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return v1

    .line 90
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/common/ppl/IPplManager$Stub;->resetPassword()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

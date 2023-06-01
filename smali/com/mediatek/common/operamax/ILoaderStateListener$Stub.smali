.class public abstract Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;
.super Landroid/os/Binder;
.source "ILoaderStateListener.java"

# interfaces
.implements Lcom/mediatek/common/operamax/ILoaderStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/operamax/ILoaderStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onSavingState:I = 0x2

.field static final TRANSACTION_onTunnelState:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.mediatek.common.operamax.ILoaderStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderStateListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "com.mediatek.common.operamax.ILoaderStateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/operamax/ILoaderStateListener;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/operamax/ILoaderStateListener;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderStateListener;
    .registers 1

    .line 182
    sget-object v0, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/operamax/ILoaderStateListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/operamax/ILoaderStateListener;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/common/operamax/ILoaderStateListener;

    .line 172
    sget-object v0, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/operamax/ILoaderStateListener;

    if-nez v0, :cond_c

    .line 175
    if-eqz p0, :cond_a

    .line 176
    sput-object p0, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/operamax/ILoaderStateListener;

    .line 177
    const/4 v0, 0x1

    return v0

    .line 179
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
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

    .line 65
    const-string v0, "com.mediatek.common.operamax.ILoaderStateListener"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_28

    .line 74
    packed-switch p1, :pswitch_data_2e

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 70
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 86
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->onSavingState(I)V

    .line 90
    return v1

    .line 78
    .end local v2    # "_arg0":I
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->onTunnelState(I)V

    .line 82
    return v1

    :pswitch_data_28
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_12
    .end packed-switch
.end method

.class public abstract Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub;
.super Landroid/os/Binder;
.source "IMtkTelephonyRegistryEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyRegistryEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_4
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyRegistryEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;

    if-eqz v1, :cond_14

    .line 34
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;

    return-object v1

    .line 36
    :cond_14
    new-instance v1, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;
    .registers 1

    .line 92
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;

    .line 82
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;

    if-nez v0, :cond_c

    .line 85
    if-eqz p0, :cond_a

    .line 86
    sput-object p0, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;

    .line 87
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyRegistryEx"

    .line 45
    .local v0, "descriptor":Ljava/lang/String;
    packed-switch p1, :pswitch_data_10

    .line 53
    goto :goto_b

    .line 49
    :pswitch_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x1

    return v1

    .line 57
    :goto_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_data_10
    .packed-switch 0x5f4e5446
        :pswitch_6
    .end packed-switch
.end method

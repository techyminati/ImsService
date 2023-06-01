.class public abstract Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;
.super Landroid/os/Binder;
.source "IAcsEventCallback.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onConfigChanged:I = 0x1

.field static final TRANSACTION_onConfigErrorReceived:I = 0x3

.field static final TRANSACTION_onConnectionChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.mediatek.ims.rcsua.service.IAcsEventCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.IAcsEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .locals 1

    .line 188
    sget-object v0, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 178
    sget-object v0, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    if-nez v0, :cond_1

    .line 181
    if-eqz p0, :cond_0

    .line 182
    sput-object p0, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
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

    .line 53
    const-string v0, "com.mediatek.ims.rcsua.service.IAcsEventCallback"

    .line 54
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 62
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 58
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v1

    .line 84
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->onConfigErrorReceived(ILjava/lang/String;)V

    .line 90
    return v1

    .line 76
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 79
    .local v2, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->onConnectionChanged(Z)V

    .line 80
    return v1

    .line 66
    .end local v2    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 70
    .restart local v2    # "_arg0":Z
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 71
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->onConfigChanged(ZI)V

    .line 72
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

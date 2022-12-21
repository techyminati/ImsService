.class public abstract Lcom/mediatek/ims/internal/IVoDataService$Stub;
.super Landroid/os/Binder;
.source "IVoDataService.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IVoDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IVoDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getEnabled:I = 0x2

.field static final TRANSACTION_getImsPdnStatus:I = 0x4

.field static final TRANSACTION_setEnabled:I = 0x1

.field static final TRANSACTION_setImsPdnStatus:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.mediatek.ims.internal.IVoDataService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IVoDataService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IVoDataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IVoDataService;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IVoDataService;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IVoDataService;
    .registers 1

    .line 280
    sget-object v0, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IVoDataService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IVoDataService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IVoDataService;

    .line 270
    sget-object v0, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IVoDataService;

    if-nez v0, :cond_c

    .line 273
    if-eqz p0, :cond_a

    .line 274
    sput-object p0, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IVoDataService;

    .line 275
    const/4 v0, 0x1

    return v0

    .line 277
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
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

    .line 77
    const-string v0, "com.mediatek.ims.internal.IVoDataService"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_60

    .line 86
    packed-switch p1, :pswitch_data_66

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 82
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v1

    .line 122
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->getImsPdnStatus(I)I

    move-result v3

    .line 126
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return v1

    .line 111
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 116
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->setImsPdnStatus(II)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v1

    .line 101
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->getEnabled(I)Z

    move-result v3

    .line 105
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return v1

    .line 90
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_57

    move v3, v1

    goto :goto_58

    :cond_57
    const/4 v3, 0x0

    .line 95
    .local v3, "_arg1":Z
    :goto_58
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->setEnabled(IZ)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_48
        :pswitch_36
        :pswitch_24
        :pswitch_12
    .end packed-switch
.end method
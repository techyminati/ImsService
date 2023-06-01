.class public abstract Lcom/mediatek/datashaping/IDataShapingManager$Stub;
.super Landroid/os/Binder;
.source "IDataShapingManager.java"

# interfaces
.implements Lcom/mediatek/datashaping/IDataShapingManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/datashaping/IDataShapingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_disableDataShaping:I = 0x2

.field static final TRANSACTION_enableDataShaping:I = 0x1

.field static final TRANSACTION_isDataShapingWhitelistApp:I = 0x5

.field static final TRANSACTION_openLteDataUpLinkGate:I = 0x3

.field static final TRANSACTION_setDeviceIdleMode:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.mediatek.datashaping.IDataShapingManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/datashaping/IDataShapingManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "com.mediatek.datashaping.IDataShapingManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/datashaping/IDataShapingManager;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/mediatek/datashaping/IDataShapingManager;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/datashaping/IDataShapingManager;
    .registers 1

    .line 267
    sget-object v0, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/datashaping/IDataShapingManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/datashaping/IDataShapingManager;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/datashaping/IDataShapingManager;

    .line 257
    sget-object v0, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/datashaping/IDataShapingManager;

    if-nez v0, :cond_c

    .line 260
    if-eqz p0, :cond_a

    .line 261
    sput-object p0, Lcom/mediatek/datashaping/IDataShapingManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/datashaping/IDataShapingManager;

    .line 262
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 258
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

    .line 63
    const-string v0, "com.mediatek.datashaping.IDataShapingManager"

    .line 64
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_60

    .line 72
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_66

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 68
    :pswitch_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v1

    .line 109
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->isDataShapingWhitelistApp(Ljava/lang/String;)Z

    move-result v3

    .line 113
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return v1

    .line 100
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    move v2, v1

    .line 103
    .local v2, "_arg0":Z
    :cond_2f
    invoke-virtual {p0, v2}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->setDeviceIdleMode(Z)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    return v1

    .line 90
    .end local v2    # "_arg0":Z
    :pswitch_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_40

    move v2, v1

    .line 93
    .restart local v2    # "_arg0":Z
    :cond_40
    invoke-virtual {p0, v2}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->openLteDataUpLinkGate(Z)Z

    move-result v3

    .line 94
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v1

    .line 83
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->disableDataShaping()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v1

    .line 76
    :pswitch_55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;->enableDataShaping()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x5f4e5446
        :pswitch_f
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4b
        :pswitch_36
        :pswitch_25
        :pswitch_13
    .end packed-switch
.end method

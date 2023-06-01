.class public abstract Lcom/mediatek/common/omadm/IOmadmManager$Stub;
.super Landroid/os/Binder;
.source "IOmadmManager.java"

# interfaces
.implements Lcom/mediatek/common/omadm/IOmadmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/omadm/IOmadmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_inputStream:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.mediatek.common.omadm.IOmadmManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/omadm/IOmadmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/omadm/IOmadmManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_4
    const-string v0, "com.mediatek.common.omadm.IOmadmManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/omadm/IOmadmManager;

    if-eqz v1, :cond_14

    .line 39
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/omadm/IOmadmManager;

    return-object v1

    .line 41
    :cond_14
    new-instance v1, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/omadm/IOmadmManager;
    .registers 1

    .line 142
    sget-object v0, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/omadm/IOmadmManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/omadm/IOmadmManager;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/common/omadm/IOmadmManager;

    .line 132
    sget-object v0, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/omadm/IOmadmManager;

    if-nez v0, :cond_c

    .line 135
    if-eqz p0, :cond_a

    .line 136
    sput-object p0, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/omadm/IOmadmManager;

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const-string v0, "com.mediatek.common.omadm.IOmadmManager"

    .line 50
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_2e

    .line 58
    packed-switch p1, :pswitch_data_34

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 54
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v1

    .line 62
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/omadm/IOmadmManager$Stub;->inputStream(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 66
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v3, :cond_29

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v3, p3, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    .line 72
    :cond_29
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    :goto_2d
    return v1

    :pswitch_data_2e
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

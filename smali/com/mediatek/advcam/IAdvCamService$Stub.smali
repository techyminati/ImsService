.class public abstract Lcom/mediatek/advcam/IAdvCamService$Stub;
.super Landroid/os/Binder;
.source "IAdvCamService.java"

# interfaces
.implements Lcom/mediatek/advcam/IAdvCamService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/advcam/IAdvCamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/advcam/IAdvCamService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_setConfigureParam:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "com.mediatek.advcam.IAdvCamService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/advcam/IAdvCamService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/advcam/IAdvCamService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "com.mediatek.advcam.IAdvCamService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/advcam/IAdvCamService;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/mediatek/advcam/IAdvCamService;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Lcom/mediatek/advcam/IAdvCamService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/advcam/IAdvCamService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/advcam/IAdvCamService;
    .registers 1

    .line 163
    sget-object v0, Lcom/mediatek/advcam/IAdvCamService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/advcam/IAdvCamService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/advcam/IAdvCamService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/advcam/IAdvCamService;

    .line 153
    sget-object v0, Lcom/mediatek/advcam/IAdvCamService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/advcam/IAdvCamService;

    if-nez v0, :cond_c

    .line 156
    if-eqz p0, :cond_a

    .line 157
    sput-object p0, Lcom/mediatek/advcam/IAdvCamService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/advcam/IAdvCamService;

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
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

    .line 58
    const-string v0, "com.mediatek.advcam.IAdvCamService"

    .line 59
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_34

    .line 67
    packed-switch p1, :pswitch_data_3a

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 63
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v1

    .line 71
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    .line 76
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    .local v3, "_arg1":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_29

    .line 79
    .end local v3    # "_arg1":Landroid/hardware/camera2/CaptureRequest;
    :cond_28
    const/4 v3, 0x0

    .line 81
    .restart local v3    # "_arg1":Landroid/hardware/camera2/CaptureRequest;
    :goto_29
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/advcam/IAdvCamService$Stub;->setConfigureParam(ILandroid/hardware/camera2/CaptureRequest;)I

    move-result v4

    .line 82
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v1

    :pswitch_data_34
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

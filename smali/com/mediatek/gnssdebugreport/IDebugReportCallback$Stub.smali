.class public abstract Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;
.super Landroid/os/Binder;
.source "IDebugReportCallback.java"

# interfaces
.implements Lcom/mediatek/gnssdebugreport/IDebugReportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDebugReportAvailable:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.mediatek.gnssdebugreport.IDebugReportCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_4
    const-string v0, "com.mediatek.gnssdebugreport.IDebugReportCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    if-eqz v1, :cond_14

    .line 37
    move-object v1, v0

    check-cast v1, Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    return-object v1

    .line 39
    :cond_14
    new-instance v1, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .registers 1

    .line 137
    sget-object v0, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    .line 127
    sget-object v0, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    if-nez v0, :cond_c

    .line 130
    if-eqz p0, :cond_a

    .line 131
    sput-object p0, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    .line 132
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 43
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

    .line 47
    const-string v0, "com.mediatek.gnssdebugreport.IDebugReportCallback"

    .line 48
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_2c

    .line 56
    packed-switch p1, :pswitch_data_32

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 52
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v1

    .line 60
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    .line 63
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_25

    .line 66
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_24
    const/4 v2, 0x0

    .line 68
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    :goto_25
    invoke-virtual {p0, v2}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->onDebugReportAvailable(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v1

    :pswitch_data_2c
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

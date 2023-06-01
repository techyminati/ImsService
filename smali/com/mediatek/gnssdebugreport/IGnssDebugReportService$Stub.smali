.class public abstract Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;
.super Landroid/os/Binder;
.source "IGnssDebugReportService.java"

# interfaces
.implements Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addListener:I = 0x3

.field static final TRANSACTION_removeListener:I = 0x4

.field static final TRANSACTION_startDebug:I = 0x1

.field static final TRANSACTION_stopDebug:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "com.mediatek.gnssdebugreport.IGnssDebugReportService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "com.mediatek.gnssdebugreport.IGnssDebugReportService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;
    .registers 1

    .line 236
    sget-object v0, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    .line 226
    sget-object v0, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    if-nez v0, :cond_c

    .line 229
    if-eqz p0, :cond_a

    .line 230
    sput-object p0, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;

    .line 231
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 227
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

    .line 58
    const-string v0, "com.mediatek.gnssdebugreport.IGnssDebugReportService"

    .line 59
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_62

    .line 67
    packed-switch p1, :pswitch_data_68

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 63
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v1

    .line 100
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    move-result-object v2

    .line 103
    .local v2, "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->removeListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    return v1

    .line 91
    .end local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    move-result-object v2

    .line 94
    .restart local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->addListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v1

    .line 81
    .end local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    :pswitch_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    move-result-object v2

    .line 84
    .restart local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->stopDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z

    move-result v3

    .line 85
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return v1

    .line 71
    .end local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    .end local v3    # "_result":Z
    :pswitch_4c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gnssdebugreport/IDebugReportCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gnssdebugreport/IDebugReportCallback;

    move-result-object v2

    .line 74
    .restart local v2    # "_arg0":Lcom/mediatek/gnssdebugreport/IDebugReportCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;->startDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z

    move-result v3

    .line 75
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return v1

    :pswitch_data_62
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_36
        :pswitch_24
        :pswitch_12
    .end packed-switch
.end method

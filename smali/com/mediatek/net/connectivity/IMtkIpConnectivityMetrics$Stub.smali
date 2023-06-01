.class public abstract Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;
.super Landroid/os/Binder;
.source "IMtkIpConnectivityMetrics.java"

# interfaces
.implements Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_registerMtkNetdEventCallback:I = 0x1

.field static final TRANSACTION_registerMtkSocketEventCallback:I = 0x3

.field static final TRANSACTION_setSpeedDownload:I = 0x6

.field static final TRANSACTION_startMonitorProcessWithUid:I = 0x8

.field static final TRANSACTION_startMonitorProcessWithUidArray:I = 0x7

.field static final TRANSACTION_stopMonitorProcessWithUid:I = 0xa

.field static final TRANSACTION_stopMonitorProcessWithUidArray:I = 0x9

.field static final TRANSACTION_unregisterMtkNetdEventCallback:I = 0x2

.field static final TRANSACTION_unregisterMtkSocketEventCallback:I = 0x4

.field static final TRANSACTION_updateCtaAppStatus:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "com.mediatek.net.connectivity.IMtkIpConnectivityMetrics"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "com.mediatek.net.connectivity.IMtkIpConnectivityMetrics"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics;
    .registers 1

    .line 464
    sget-object v0, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics;

    .line 454
    sget-object v0, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics;

    if-nez v0, :cond_c

    .line 457
    if-eqz p0, :cond_a

    .line 458
    sput-object p0, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics;

    .line 459
    const/4 v0, 0x1

    return v0

    .line 461
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 455
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
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

    .line 88
    const-string v0, "com.mediatek.net.connectivity.IMtkIpConnectivityMetrics"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_b8

    .line 97
    packed-switch p1, :pswitch_data_be

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 184
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;->stopMonitorProcessWithUid(I)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    return v1

    .line 175
    .end local v2    # "_arg0":I
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 178
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;->stopMonitorProcessWithUidArray([I)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    return v1

    .line 166
    .end local v2    # "_arg0":[I
    :pswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;->startMonitorProcessWithUid(I)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    return v1

    .line 157
    .end local v2    # "_arg0":I
    :pswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 160
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;->startMonitorProcessWithUidArray([I)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    return v1

    .line 148
    .end local v2    # "_arg0":[I
    :pswitch_4a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;->setSpeedDownload(I)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    return v1

    .line 137
    .end local v2    # "_arg0":I
    :pswitch_58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_67

    move v3, v1

    goto :goto_68

    :cond_67
    const/4 v3, 0x0

    .line 142
    .local v3, "_arg1":Z
    :goto_68
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;->updateCtaAppStatus(IZ)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    return v1

    .line 129
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_6f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;->unregisterMtkSocketEventCallback()Z

    move-result v2

    .line 131
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return v1

    .line 119
    .end local v2    # "_result":Z
    :pswitch_7d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetdEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdEventCallback;

    move-result-object v2

    .line 122
    .local v2, "_arg0":Landroid/net/INetdEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;->registerMtkSocketEventCallback(Landroid/net/INetdEventCallback;)Z

    move-result v3

    .line 123
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return v1

    .line 111
    .end local v2    # "_arg0":Landroid/net/INetdEventCallback;
    .end local v3    # "_result":Z
    :pswitch_93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;->unregisterMtkNetdEventCallback()Z

    move-result v2

    .line 113
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return v1

    .line 101
    .end local v2    # "_result":Z
    :pswitch_a1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetdEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdEventCallback;

    move-result-object v2

    .line 104
    .local v2, "_arg0":Landroid/net/INetdEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/net/connectivity/IMtkIpConnectivityMetrics$Stub;->registerMtkNetdEventCallback(Landroid/net/INetdEventCallback;)Z

    move-result v3

    .line 105
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return v1

    nop

    :pswitch_data_b8
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_93
        :pswitch_7d
        :pswitch_6f
        :pswitch_58
        :pswitch_4a
        :pswitch_3c
        :pswitch_2e
        :pswitch_20
        :pswitch_12
    .end packed-switch
.end method

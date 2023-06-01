.class public abstract Lcom/mediatek/internal/telephony/IMtkSub$Stub;
.super Landroid/os/Binder;
.source "IMtkSub.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkSub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getSubIdUsingPhoneId:I = 0x3

.field static final TRANSACTION_getSubInfo:I = 0x1

.field static final TRANSACTION_getSubInfoForIccId:I = 0x2

.field static final TRANSACTION_setDefaultDataSubIdWithoutCapabilitySwitch:I = 0x5

.field static final TRANSACTION_setDefaultFallbackSubId:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "com.mediatek.internal.telephony.IMtkSub"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    const-string v0, "com.mediatek.internal.telephony.IMtkSub"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/internal/telephony/IMtkSub;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/IMtkSub;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSub;
    .registers 1

    .line 339
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSub;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telephony/IMtkSub;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/internal/telephony/IMtkSub;

    .line 329
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSub;

    if-nez v0, :cond_c

    .line 332
    if-eqz p0, :cond_a

    .line 333
    sput-object p0, Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSub;

    .line 334
    const/4 v0, 0x1

    return v0

    .line 336
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 330
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const-string v0, "com.mediatek.internal.telephony.IMtkSub"

    .line 77
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_8c

    .line 85
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_92

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 81
    :pswitch_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 150
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    return v1

    .line 139
    .end local v2    # "_arg0":I
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->setDefaultFallbackSubId(II)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v1

    .line 129
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 133
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return v1

    .line 109
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v6

    .line 117
    .local v6, "_result":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v6, :cond_64

    .line 119
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v6, p3, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_67

    .line 123
    :cond_64
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :goto_67
    return v1

    .line 89
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    :pswitch_68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 95
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 96
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v6

    .line 97
    .restart local v6    # "_result":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v6, :cond_87

    .line 99
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v6, p3, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8a

    .line 103
    :cond_87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    :goto_8a
    return v1

    nop

    :pswitch_data_8c
    .packed-switch 0x5f4e5446
        :pswitch_f
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_68
        :pswitch_45
        :pswitch_33
        :pswitch_21
        :pswitch_13
    .end packed-switch
.end method

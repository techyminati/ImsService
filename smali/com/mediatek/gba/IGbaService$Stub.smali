.class public abstract Lcom/mediatek/gba/IGbaService$Stub;
.super Landroid/os/Binder;
.source "IGbaService.java"

# interfaces
.implements Lcom/mediatek/gba/IGbaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gba/IGbaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gba/IGbaService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getCachedKey:I = 0x7

.field static final TRANSACTION_getGbaSupported:I = 0x1

.field static final TRANSACTION_getGbaSupportedForSubscriber:I = 0x2

.field static final TRANSACTION_isGbaKeyExpired:I = 0x3

.field static final TRANSACTION_isGbaKeyExpiredForSubscriber:I = 0x4

.field static final TRANSACTION_runGbaAuthentication:I = 0x5

.field static final TRANSACTION_runGbaAuthenticationForSubscriber:I = 0x6

.field static final TRANSACTION_updateCachedKey:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "com.mediatek.gba.IGbaService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/gba/IGbaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/gba/IGbaService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    const-string v0, "com.mediatek.gba.IGbaService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/gba/IGbaService;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Lcom/mediatek/gba/IGbaService;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Lcom/mediatek/gba/IGbaService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/gba/IGbaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/gba/IGbaService;
    .registers 1

    .line 477
    sget-object v0, Lcom/mediatek/gba/IGbaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gba/IGbaService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/gba/IGbaService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/gba/IGbaService;

    .line 467
    sget-object v0, Lcom/mediatek/gba/IGbaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gba/IGbaService;

    if-nez v0, :cond_c

    .line 470
    if-eqz p0, :cond_a

    .line 471
    sput-object p0, Lcom/mediatek/gba/IGbaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gba/IGbaService;

    .line 472
    const/4 v0, 0x1

    return v0

    .line 474
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 468
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const-string v0, "com.mediatek.gba.IGbaService"

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_100

    .line 88
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_106

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 84
    :pswitch_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 198
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 204
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 206
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    .line 207
    sget-object v5, Lcom/mediatek/gba/NafSessionKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/gba/NafSessionKey;

    .local v5, "_arg3":Lcom/mediatek/gba/NafSessionKey;
    goto :goto_32

    .line 210
    .end local v5    # "_arg3":Lcom/mediatek/gba/NafSessionKey;
    :cond_31
    const/4 v5, 0x0

    .line 212
    .restart local v5    # "_arg3":Lcom/mediatek/gba/NafSessionKey;
    :goto_32
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/gba/IGbaService$Stub;->updateCachedKey(Ljava/lang/String;[BILcom/mediatek/gba/NafSessionKey;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    return v1

    .line 178
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lcom/mediatek/gba/NafSessionKey;
    :pswitch_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 184
    .local v4, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 185
    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/gba/IGbaService$Stub;->getCachedKey(Ljava/lang/String;[BI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v6

    .line 186
    .local v6, "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v6, :cond_58

    .line 188
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {v6, p3, v1}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5b

    .line 192
    :cond_58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    :goto_5b
    return v1

    .line 156
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :pswitch_5c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 162
    .restart local v4    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6f

    move v5, v1

    goto :goto_70

    :cond_6f
    move v5, v2

    .line 164
    .local v5, "_arg2":Z
    :goto_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 165
    .local v6, "_arg3":I
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/mediatek/gba/IGbaService$Stub;->runGbaAuthenticationForSubscriber(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v7

    .line 166
    .local v7, "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v7, :cond_84

    .line 168
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {v7, p3, v1}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_87

    .line 172
    :cond_84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    :goto_87
    return v1

    .line 136
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":I
    .end local v7    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :pswitch_88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 142
    .restart local v4    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9b

    move v5, v1

    goto :goto_9c

    :cond_9b
    move v5, v2

    .line 143
    .restart local v5    # "_arg2":Z
    :goto_9c
    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/gba/IGbaService$Stub;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v6

    .line 144
    .local v6, "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v6, :cond_ac

    .line 146
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {v6, p3, v1}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_af

    .line 150
    :cond_ac
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    :goto_af
    return v1

    .line 122
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":Z
    .end local v6    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :pswitch_b0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 128
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 129
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/gba/IGbaService$Stub;->isGbaKeyExpiredForSubscriber(Ljava/lang/String;[BI)Z

    move-result v5

    .line 130
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return v1

    .line 110
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_ca
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 115
    .restart local v3    # "_arg1":[B
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gba/IGbaService$Stub;->isGbaKeyExpired(Ljava/lang/String;[B)Z

    move-result v4

    .line 116
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v1

    .line 100
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :pswitch_e0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/gba/IGbaService$Stub;->getGbaSupportedForSubscriber(I)I

    move-result v3

    .line 104
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v1

    .line 92
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_f2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/gba/IGbaService$Stub;->getGbaSupported()I

    move-result v2

    .line 94
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v1

    :pswitch_data_100
    .packed-switch 0x5f4e5446
        :pswitch_f
    .end packed-switch

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_e0
        :pswitch_ca
        :pswitch_b0
        :pswitch_88
        :pswitch_5c
        :pswitch_39
        :pswitch_13
    .end packed-switch
.end method

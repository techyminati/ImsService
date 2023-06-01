.class public abstract Lcom/mediatek/gwsd/IGwsdService$Stub;
.super Landroid/os/Binder;
.source "IGwsdService.java"

# interfaces
.implements Lcom/mediatek/gwsd/IGwsdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gwsd/IGwsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addListener:I = 0x1

.field static final TRANSACTION_isDataAvailableForGwsdDualSim:I = 0x9

.field static final TRANSACTION_removeListener:I = 0x2

.field static final TRANSACTION_setAutoRejectModeEnabled:I = 0x4

.field static final TRANSACTION_setCallValidTimer:I = 0x6

.field static final TRANSACTION_setGwsdDualSimEnabled:I = 0x8

.field static final TRANSACTION_setIgnoreSameNumberInterval:I = 0x7

.field static final TRANSACTION_setUserModeEnabled:I = 0x3

.field static final TRANSACTION_syncGwsdInfo:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 96
    const-string v0, "com.mediatek.gwsd.IGwsdService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/gwsd/IGwsdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 104
    if-nez p0, :cond_4

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_4
    const-string v0, "com.mediatek.gwsd.IGwsdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 108
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/gwsd/IGwsdService;

    if-eqz v1, :cond_14

    .line 109
    move-object v1, v0

    check-cast v1, Lcom/mediatek/gwsd/IGwsdService;

    return-object v1

    .line 111
    :cond_14
    new-instance v1, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/gwsd/IGwsdService;
    .registers 1

    .line 517
    sget-object v0, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/gwsd/IGwsdService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/gwsd/IGwsdService;

    .line 507
    sget-object v0, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdService;

    if-nez v0, :cond_c

    .line 510
    if-eqz p0, :cond_a

    .line 511
    sput-object p0, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdService;

    .line 512
    const/4 v0, 0x1

    return v0

    .line 514
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 508
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 115
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const-string v0, "com.mediatek.gwsd.IGwsdService"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_ca

    .line 128
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_d0

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 124
    :pswitch_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v1

    .line 218
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    move v2, v1

    .line 221
    .local v2, "_arg0":Z
    :cond_1d
    invoke-virtual {p0, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->isDataAvailableForGwsdDualSim(Z)Z

    move-result v3

    .line 222
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    return v1

    .line 209
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    move v2, v1

    .line 212
    .restart local v2    # "_arg0":Z
    :cond_32
    invoke-virtual {p0, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setGwsdDualSimEnabled(Z)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    return v1

    .line 198
    .end local v2    # "_arg0":Z
    :pswitch_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setIgnoreSameNumberInterval(II)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    return v1

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 192
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setCallValidTimer(II)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    return v1

    .line 174
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6c

    move v4, v1

    goto :goto_6d

    :cond_6c
    move v4, v2

    .line 180
    .local v4, "_arg1":Z
    :goto_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_74

    move v2, v1

    .line 181
    .local v2, "_arg2":Z
    :cond_74
    invoke-virtual {p0, v3, v4, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->syncGwsdInfo(IZZ)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    return v1

    .line 163
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    :pswitch_7b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_89

    move v2, v1

    .line 168
    .local v2, "_arg1":Z
    :cond_89
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setAutoRejectModeEnabled(IZ)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    return v1

    .line 152
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg0":I
    :pswitch_90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9e

    move v2, v1

    .line 157
    .restart local v2    # "_arg1":Z
    :cond_9e
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setUserModeEnabled(IZ)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    return v1

    .line 143
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg0":I
    :pswitch_a5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->removeListener(I)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    return v1

    .line 132
    .end local v2    # "_arg0":I
    :pswitch_b3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    .line 137
    .local v3, "_arg1":Lcom/mediatek/gwsd/IGwsdListener;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdService$Stub;->addListener(ILcom/mediatek/gwsd/IGwsdListener;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    return v1

    nop

    :pswitch_data_ca
    .packed-switch 0x5f4e5446
        :pswitch_f
    .end packed-switch

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_a5
        :pswitch_90
        :pswitch_7b
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
        :pswitch_28
        :pswitch_13
    .end packed-switch
.end method

.class public abstract Lcom/mediatek/gwsd/IGwsdListener$Stub;
.super Landroid/os/Binder;
.source "IGwsdListener.java"

# interfaces
.implements Lcom/mediatek/gwsd/IGwsdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gwsd/IGwsdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAddListenered:I = 0x1

.field static final TRANSACTION_onAutoRejectModeChanged:I = 0x3

.field static final TRANSACTION_onCallValidTimerChanged:I = 0x6

.field static final TRANSACTION_onIgnoreSameNumberIntervalChanged:I = 0x7

.field static final TRANSACTION_onSyncGwsdInfoFinished:I = 0x4

.field static final TRANSACTION_onSystemStateChanged:I = 0x5

.field static final TRANSACTION_onUserSelectionModeChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "com.mediatek.gwsd.IGwsdListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_4
    const-string v0, "com.mediatek.gwsd.IGwsdListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/gwsd/IGwsdListener;

    if-eqz v1, :cond_14

    .line 91
    move-object v1, v0

    check-cast v1, Lcom/mediatek/gwsd/IGwsdListener;

    return-object v1

    .line 93
    :cond_14
    new-instance v1, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;
    .registers 1

    .line 420
    sget-object v0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/gwsd/IGwsdListener;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/gwsd/IGwsdListener;

    .line 410
    sget-object v0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdListener;

    if-nez v0, :cond_c

    .line 413
    if-eqz p0, :cond_a

    .line 414
    sput-object p0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdListener;

    .line 415
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 411
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 97
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

    .line 101
    const-string v0, "com.mediatek.gwsd.IGwsdListener"

    .line 102
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_8c

    .line 110
    packed-switch p1, :pswitch_data_92

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 106
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v1

    .line 178
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->onIgnoreSameNumberIntervalChanged(ILjava/lang/String;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v1

    .line 167
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->onCallValidTimerChanged(ILjava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    return v1

    .line 158
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->onSystemStateChanged(I)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    return v1

    .line 147
    .end local v2    # "_arg0":I
    :pswitch_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->onSyncGwsdInfoFinished(ILjava/lang/String;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    return v1

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->onAutoRejectModeChanged(ILjava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    return v1

    .line 125
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->onUserSelectionModeChanged(ILjava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    return v1

    .line 114
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_7a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->onAddListenered(ILjava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    return v1

    :pswitch_data_8c
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_68
        :pswitch_56
        :pswitch_44
        :pswitch_36
        :pswitch_24
        :pswitch_12
    .end packed-switch
.end method

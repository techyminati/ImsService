.class public abstract Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;
.super Landroid/os/Binder;
.source "IMtkImsUtListener.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsUtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsUtListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_utConfigurationCallForwardInTimeSlotQueried:I = 0x1

.field static final TRANSACTION_utConfigurationCallForwardQueried:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.mediatek.ims.internal.IMtkImsUtListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUtListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IMtkImsUtListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsUtListener;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsUtListener;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsUtListener;
    .registers 1

    .line 184
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsUtListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsUtListener;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsUtListener;

    .line 174
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsUtListener;

    if-nez v0, :cond_c

    .line 177
    if-eqz p0, :cond_a

    .line 178
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsUtListener;

    .line 179
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 175
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
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

    .line 56
    const-string v0, "com.mediatek.ims.internal.IMtkImsUtListener"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_4e

    .line 65
    packed-switch p1, :pswitch_data_54

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 61
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v1

    .line 82
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v2

    .line 86
    .local v2, "_arg0":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .local v3, "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 89
    .local v4, "_arg2":[Landroid/telephony/ims/ImsCallForwardInfo;
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;->utConfigurationCallForwardQueried(Lcom/mediatek/ims/internal/IMtkImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v1

    .line 69
    .end local v2    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/telephony/ims/ImsCallForwardInfo;
    :pswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v2

    .line 73
    .restart local v2    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 75
    .restart local v3    # "_arg1":I
    sget-object v4, Lcom/mediatek/ims/MtkImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 76
    .local v4, "_arg2":[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;->utConfigurationCallForwardInTimeSlotQueried(Lcom/mediatek/ims/internal/IMtkImsUt;I[Lcom/mediatek/ims/MtkImsCallForwardInfo;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v1

    :pswitch_data_4e
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_30
        :pswitch_12
    .end packed-switch
.end method

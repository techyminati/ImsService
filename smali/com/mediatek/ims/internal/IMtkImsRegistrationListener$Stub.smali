.class public abstract Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;
.super Landroid/os/Binder;
.source "IMtkImsRegistrationListener.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsRegistrationListener"

.field static final TRANSACTION_onRedirectIncomingCallIndication:I = 0x2

.field static final TRANSACTION_onRegistrationImsStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "com.mediatek.ims.internal.IMtkImsRegistrationListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsRegistrationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    return-object v1

    .line 58
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .locals 1

    .line 198
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;)Z
    .locals 1
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    .line 191
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 192
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 62
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const-string v0, "com.mediatek.ims.internal.IMtkImsRegistrationListener"

    .line 67
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 71
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v1

    .line 96
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;->onRedirectIncomingCallIndication(I[Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v1

    .line 76
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/Uri;

    .line 82
    .local v3, "_arg1":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 84
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    sget-object v5, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    .local v5, "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 88
    .end local v5    # "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    :cond_3
    const/4 v5, 0x0

    .line 90
    .restart local v5    # "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    :goto_0
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;->onRegistrationImsStateChanged(I[Landroid/net/Uri;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    return v1
.end method

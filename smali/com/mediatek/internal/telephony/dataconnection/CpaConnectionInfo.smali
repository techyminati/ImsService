.class public Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;
.super Ljava/lang/Object;
.source "CpaConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dnsAddresses:[Ljava/net/InetAddress;

.field public localAddress:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->localAddress:Ljava/net/InetAddress;

    .line 45
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->dnsAddresses:[Ljava/net/InetAddress;

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->localAddress:Ljava/net/InetAddress;

    .line 45
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->dnsAddresses:[Ljava/net/InetAddress;

    .line 51
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo$1;

    .line 43
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->localAddress:Ljava/net/InetAddress;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "dnsAddressSize":I
    if-lez v0, :cond_23

    .line 74
    new-array v1, v0, [Ljava/net/InetAddress;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->dnsAddresses:[Ljava/net/InetAddress;

    .line 75
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_22

    .line 76
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->dnsAddresses:[Ljava/net/InetAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    aput-object v3, v2, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .end local v1    # "i":I
    :cond_22
    goto :goto_26

    .line 79
    :cond_23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->dnsAddresses:[Ljava/net/InetAddress;

    .line 81
    :goto_26
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 60
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->dnsAddresses:[Ljava/net/InetAddress;

    if-eqz v0, :cond_1c

    .line 61
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/CpaConnectionInfo;->dnsAddresses:[Ljava/net/InetAddress;

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 63
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .end local v0    # "i":I
    :cond_1b
    goto :goto_20

    .line 66
    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    :goto_20
    return-void
.end method

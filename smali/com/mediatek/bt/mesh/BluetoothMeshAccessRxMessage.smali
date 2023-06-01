.class public final Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
.super Ljava/lang/Object;
.source "BluetoothMeshAccessRxMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppKeyIndex:I

.field private static mBuffer:[I

.field private static mBufferLen:I

.field private static mCompanyId:I

.field private static mDstAddr:I

.field private static mNetKeyIndex:I

.field private static mOpCode:I

.field private static mRssi:I

.field private static mSrcAddr:I

.field private static mTtl:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage$1;

    invoke-direct {v0}, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage$1;-><init>()V

    sput-object v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II[IIIIIIII)V
    .registers 11
    .param p1, "opCode"    # I
    .param p2, "companyId"    # I
    .param p3, "buffer"    # [I
    .param p4, "bufferLen"    # I
    .param p5, "srcAddr"    # I
    .param p6, "dstAddr"    # I
    .param p7, "appKeyIndex"    # I
    .param p8, "netKeyIndex"    # I
    .param p9, "rssi"    # I
    .param p10, "ttl"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sput p1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mOpCode:I

    .line 52
    sput p2, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mCompanyId:I

    .line 53
    sput-object p3, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mBuffer:[I

    .line 54
    sput p4, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mBufferLen:I

    .line 55
    sput p5, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mSrcAddr:I

    .line 56
    sput p6, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mDstAddr:I

    .line 57
    sput p7, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mAppKeyIndex:I

    .line 58
    sput p8, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mNetKeyIndex:I

    .line 59
    sput p9, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mRssi:I

    .line 60
    sput p10, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mTtl:I

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mOpCode:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mCompanyId:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mBuffer:[I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mBufferLen:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mSrcAddr:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mDstAddr:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mAppKeyIndex:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mNetKeyIndex:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mRssi:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mTtl:I

    .line 74
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getAppKeyIndex()I
    .registers 2

    .line 153
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mAppKeyIndex:I

    return v0
.end method

.method public getBuffer()[I
    .registers 2

    .line 141
    sget-object v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mBuffer:[I

    return-object v0
.end method

.method public getCompanyId()I
    .registers 2

    .line 136
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mCompanyId:I

    return v0
.end method

.method public getDstAddr()I
    .registers 2

    .line 149
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mDstAddr:I

    return v0
.end method

.method public getNetKeyIndex()I
    .registers 2

    .line 157
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mNetKeyIndex:I

    return v0
.end method

.method public getOpCode()I
    .registers 2

    .line 132
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mOpCode:I

    return v0
.end method

.method public getRssi()I
    .registers 2

    .line 161
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mRssi:I

    return v0
.end method

.method public getSrcAddr()I
    .registers 2

    .line 145
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mSrcAddr:I

    return v0
.end method

.method public getTtl()I
    .registers 2

    .line 165
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mTtl:I

    return v0
.end method

.method public setAccessOpCode(II)V
    .registers 3
    .param p1, "opCode"    # I
    .param p2, "companyId"    # I

    .line 113
    sput p1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mOpCode:I

    .line 114
    sput p2, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mCompanyId:I

    .line 115
    return-void
.end method

.method public setBuffer([I)V
    .registers 3
    .param p1, "buffer"    # [I

    .line 127
    sput-object p1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mBuffer:[I

    .line 128
    array-length v0, p1

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mBufferLen:I

    .line 129
    return-void
.end method

.method public setMetaData(IIIIII)V
    .registers 7
    .param p1, "srcAddr"    # I
    .param p2, "dstAddr"    # I
    .param p3, "appKeyIndex"    # I
    .param p4, "netKeyIndex"    # I
    .param p5, "rssi"    # I
    .param p6, "ttl"    # I

    .line 118
    sput p1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mSrcAddr:I

    .line 119
    sput p2, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mDstAddr:I

    .line 120
    sput p3, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mAppKeyIndex:I

    .line 121
    sput p4, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mNetKeyIndex:I

    .line 122
    sput p5, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mRssi:I

    .line 123
    sput p6, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mTtl:I

    .line 124
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mOpCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mCompanyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    sget-object v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mBuffer:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 103
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mBufferLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mSrcAddr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mDstAddr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mAppKeyIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mNetKeyIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->mTtl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void
.end method

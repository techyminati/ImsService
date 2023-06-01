.class public final Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;
.super Ljava/lang/Object;
.source "BluetoothMeshAccessTxMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static mBuffer:[I

.field private static mBufferLen:I

.field private static mCompanyId:I

.field private static mOpCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage$1;

    invoke-direct {v0}, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage$1;-><init>()V

    sput-object v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II[I)V
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "companyId"    # I
    .param p3, "buffer"    # [I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sput p1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mOpCode:I

    .line 45
    sput p2, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mCompanyId:I

    .line 46
    sput-object p3, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mBuffer:[I

    .line 47
    array-length v0, p3

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mBufferLen:I

    .line 48
    return-void
.end method

.method public constructor <init>(II[II)V
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "companyId"    # I
    .param p3, "buffer"    # [I
    .param p4, "bufferLen"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sput p1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mOpCode:I

    .line 52
    sput p2, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mCompanyId:I

    .line 53
    sput-object p3, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mBuffer:[I

    .line 54
    sput p4, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mBufferLen:I

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mOpCode:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mCompanyId:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mBuffer:[I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mBufferLen:I

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getBuffer()[I
    .registers 2

    .line 115
    sget-object v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mBuffer:[I

    return-object v0
.end method

.method public getCompanyId()I
    .registers 2

    .line 110
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mCompanyId:I

    return v0
.end method

.method public getOpCode()I
    .registers 2

    .line 106
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mOpCode:I

    return v0
.end method

.method public setAccessOpCode(II)V
    .registers 3
    .param p1, "opCode"    # I
    .param p2, "companyId"    # I

    .line 96
    sput p1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mOpCode:I

    .line 97
    sput p2, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mCompanyId:I

    .line 98
    return-void
.end method

.method public setBuffer([II)V
    .registers 3
    .param p1, "buffer"    # [I
    .param p2, "bufferLen"    # I

    .line 101
    sput-object p1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mBuffer:[I

    .line 102
    sput p2, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mBufferLen:I

    .line 103
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mOpCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mCompanyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    sget-object v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mBuffer:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 92
    sget v0, Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;->mBufferLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void
.end method

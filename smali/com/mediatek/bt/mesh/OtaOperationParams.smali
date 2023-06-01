.class public final Lcom/mediatek/bt/mesh/OtaOperationParams;
.super Ljava/lang/Object;
.source "OtaOperationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/bt/mesh/OtaOperationParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMesh_OtaOperationParams"


# instance fields
.field private mAppkeyIndex:I

.field private mDistributorAddr:I

.field private mFwId:J

.field private mGroupAddr:I

.field private mManualApply:Z

.field private mNodeAddr:I

.field private mObjFile:[B

.field private mObjId:[I

.field private mObjSize:I

.field private mOpcode:I

.field private mUpdaters:[I

.field private mUpdatersNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Lcom/mediatek/bt/mesh/OtaOperationParams$1;

    invoke-direct {v0}, Lcom/mediatek/bt/mesh/OtaOperationParams$1;-><init>()V

    sput-object v0, Lcom/mediatek/bt/mesh/OtaOperationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mOpcode:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mNodeAddr:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjFile:[B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjSize:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjId:[I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mFwId:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mAppkeyIndex:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mDistributorAddr:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mGroupAddr:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mUpdatersNum:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mUpdaters:[I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    iput-boolean v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mManualApply:Z

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getAppkeyIndex()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mAppkeyIndex:I

    return v0
.end method

.method public getDistributorAddr()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mDistributorAddr:I

    return v0
.end method

.method public getFwId()J
    .registers 3

    .line 155
    iget-wide v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mFwId:J

    return-wide v0
.end method

.method public getGroupAddr()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mGroupAddr:I

    return v0
.end method

.method public getManualApply()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mManualApply:Z

    return v0
.end method

.method public getNodeAddr()I
    .registers 2

    .line 137
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mNodeAddr:I

    return v0
.end method

.method public getObjFile()[B
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjFile:[B

    return-object v0
.end method

.method public getObjId()[I
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjId:[I

    return-object v0
.end method

.method public getObjSize()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjSize:I

    return v0
.end method

.method public getOpcode()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mOpcode:I

    return v0
.end method

.method public getUpdaters()[I
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mUpdaters:[I

    return-object v0
.end method

.method public getUpdatersNum()I
    .registers 2

    .line 171
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mUpdatersNum:I

    return v0
.end method

.method public setOtaInitiatorApplyDistribution()V
    .registers 2

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mOpcode:I

    .line 130
    return-void
.end method

.method public setOtaInitiatorFwInfoGet(I)V
    .registers 3
    .param p1, "nodeAddr"    # I

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mOpcode:I

    .line 103
    iput p1, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mNodeAddr:I

    .line 104
    return-void
.end method

.method public setOtaInitiatorMsgHandler(I)V
    .registers 3
    .param p1, "appKeyIndex"    # I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mOpcode:I

    .line 98
    iput p1, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mAppkeyIndex:I

    .line 99
    return-void
.end method

.method public setOtaInitiatorStartParams([BI[IJIIII[IZ)V
    .registers 13
    .param p1, "objFile"    # [B
    .param p2, "objSize"    # I
    .param p3, "objId"    # [I
    .param p4, "fwID"    # J
    .param p6, "appkeyIndex"    # I
    .param p7, "distributorAddr"    # I
    .param p8, "groupAddr"    # I
    .param p9, "updatersNum"    # I
    .param p10, "updaters"    # [I
    .param p11, "manualApply"    # Z

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mOpcode:I

    .line 115
    iput-object p1, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjFile:[B

    .line 116
    iput p2, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjSize:I

    .line 117
    iput-object p3, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjId:[I

    .line 118
    iput-wide p4, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mFwId:J

    .line 119
    iput p6, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mAppkeyIndex:I

    .line 120
    iput p7, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mDistributorAddr:I

    .line 121
    iput p8, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mGroupAddr:I

    .line 122
    iput p9, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mUpdatersNum:I

    .line 123
    iput-object p10, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mUpdaters:[I

    .line 124
    iput-boolean p11, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mManualApply:Z

    .line 125
    return-void
.end method

.method public setOtaInitiatorStopParams(JI)V
    .registers 5
    .param p1, "fwID"    # J
    .param p3, "distributorAddr"    # I

    .line 107
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mOpcode:I

    .line 108
    iput-wide p1, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mFwId:J

    .line 109
    iput p3, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mDistributorAddr:I

    .line 110
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mOpcode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mNodeAddr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjFile:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 85
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mObjId:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 87
    iget-wide v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mFwId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mAppkeyIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mDistributorAddr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mGroupAddr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mUpdatersNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mUpdaters:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 93
    iget-boolean v0, p0, Lcom/mediatek/bt/mesh/OtaOperationParams;->mManualApply:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return-void
.end method

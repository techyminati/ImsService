.class public final Lcom/mediatek/bt/mesh/MeshInitParams;
.super Ljava/lang/Object;
.source "MeshInitParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bt/mesh/MeshInitParams$CustomizeParams;,
        Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;,
        Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/bt/mesh/MeshInitParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCustomizeParams:[I

.field private mDefaultTtl:I

.field private mDeviceUuid:[I

.field private mFeatureMask:J

.field private mFriendInitParams:[I

.field private mOobInfo:I

.field private mProvisioneeParams:[I

.field private mRole:I

.field private mUri:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/mediatek/bt/mesh/MeshInitParams$1;

    invoke-direct {v0}, Lcom/mediatek/bt/mesh/MeshInitParams$1;-><init>()V

    sput-object v0, Lcom/mediatek/bt/mesh/MeshInitParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mRole:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mProvisioneeParams:[I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mDeviceUuid:[I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mOobInfo:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mDefaultTtl:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mUri:[B

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mFeatureMask:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mFriendInitParams:[I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mCustomizeParams:[I

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomizeParams()[I
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mCustomizeParams:[I

    return-object v0
.end method

.method public getDefaultTtl()I
    .registers 2

    .line 258
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mDefaultTtl:I

    return v0
.end method

.method public getDeviceUuid()[I
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mDeviceUuid:[I

    return-object v0
.end method

.method public getFeatureMask()J
    .registers 3

    .line 267
    iget-wide v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mFeatureMask:J

    return-wide v0
.end method

.method public getFriendInitParams()[I
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mFriendInitParams:[I

    return-object v0
.end method

.method public getOobInfo()I
    .registers 2

    .line 254
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mOobInfo:I

    return v0
.end method

.method public getProvisioneeParams()[I
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mProvisioneeParams:[I

    return-object v0
.end method

.method public getRole()I
    .registers 2

    .line 238
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mRole:I

    return v0
.end method

.method public getUri()[B
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mUri:[B

    return-object v0
.end method

.method public setCustomizeParams(Lcom/mediatek/bt/mesh/MeshInitParams$CustomizeParams;)V
    .registers 5
    .param p1, "customize"    # Lcom/mediatek/bt/mesh/MeshInitParams$CustomizeParams;

    .line 230
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 231
    .local v0, "param":[I
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$CustomizeParams;->getMaxRemoteNodeCnt()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 232
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$CustomizeParams;->getSave2flash()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 233
    iput-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mCustomizeParams:[I

    .line 234
    return-void
.end method

.method public setDefaultTtl(I)V
    .registers 2
    .param p1, "defaultTtl"    # I

    .line 210
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mDefaultTtl:I

    .line 211
    return-void
.end method

.method public setDeviceUuid([I)V
    .registers 2
    .param p1, "deviceUuid"    # [I

    .line 202
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mDeviceUuid:[I

    .line 203
    return-void
.end method

.method public setFeatureMask(J)V
    .registers 3
    .param p1, "featureMask"    # J

    .line 218
    iput-wide p1, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mFeatureMask:J

    .line 219
    return-void
.end method

.method public setFriendInitParams(Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;)V
    .registers 5
    .param p1, "friend"    # Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;

    .line 222
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 223
    .local v0, "param":[I
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;->getLpnNumber()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 224
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;->getQueueSize()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 225
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$FriendInitParams;->getSubscriptionListSize()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 226
    iput-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mFriendInitParams:[I

    .line 227
    return-void
.end method

.method public setOobInfo(I)V
    .registers 2
    .param p1, "oobInfo"    # I

    .line 206
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mOobInfo:I

    .line 207
    return-void
.end method

.method public setProvisioneeParams(Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;)V
    .registers 5
    .param p1, "provisionee"    # Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;

    .line 188
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 189
    .local v0, "param":[I
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->getNumberOfElements()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 190
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->getAlgorithms()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 191
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->getPublicKeyType()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 192
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->getStaticOobType()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 193
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->getOutputOobSize()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 194
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->getOutputOobAction()I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 195
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->getInputOobSize()I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 196
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams$ProvisioneeParams;->getInputOobAction()I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 197
    iput-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mProvisioneeParams:[I

    .line 198
    return-void
.end method

.method public setRole(I)V
    .registers 2
    .param p1, "role"    # I

    .line 184
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mRole:I

    .line 185
    return-void
.end method

.method public setUri([B)V
    .registers 2
    .param p1, "uri"    # [B

    .line 214
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mUri:[B

    .line 215
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mProvisioneeParams:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mDeviceUuid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 76
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mOobInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mDefaultTtl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mUri:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 79
    iget-wide v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mFeatureMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mFriendInitParams:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 81
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshInitParams;->mCustomizeParams:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 82
    return-void
.end method

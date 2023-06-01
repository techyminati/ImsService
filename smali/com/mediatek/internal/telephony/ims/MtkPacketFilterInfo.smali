.class public Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
.super Ljava/lang/Object;
.source "MtkPacketFilterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMC_BMP_FLOW_LABEL:I = 0x200

.field public static final IMC_BMP_LOCAL_PORT_RANGE:I = 0x10

.field public static final IMC_BMP_LOCAL_PORT_SINGLE:I = 0x8

.field public static final IMC_BMP_NONE:I = 0x0

.field public static final IMC_BMP_PROTOCOL:I = 0x4

.field public static final IMC_BMP_REMOTE_PORT_RANGE:I = 0x40

.field public static final IMC_BMP_REMOTE_PORT_SINGLE:I = 0x20

.field public static final IMC_BMP_SPI:I = 0x80

.field public static final IMC_BMP_TOS:I = 0x100

.field public static final IMC_BMP_V4_ADDR:I = 0x1

.field public static final IMC_BMP_V6_ADDR:I = 0x2


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mBitmap:I

.field public mDirection:I

.field public mFlowLabel:I

.field public mId:I

.field public mLocalPortHigh:I

.field public mLocalPortLow:I

.field public mMask:Ljava/lang/String;

.field public mNetworkPfIdentifier:I

.field public mPrecedence:I

.field public mProtocolNextHeader:I

.field public mRemotePortHigh:I

.field public mRemotePortLow:I

.field public mSpi:I

.field public mTos:I

.field public mTosMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;IIIIIIIII)V
    .registers 33
    .param p1, "id"    # I
    .param p2, "precedence"    # I
    .param p3, "direction"    # I
    .param p4, "networkPfIdentifier"    # I
    .param p5, "bitmap"    # I
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "mask"    # Ljava/lang/String;
    .param p8, "protocolNextHeader"    # I
    .param p9, "localPortLow"    # I
    .param p10, "localPortHigh"    # I
    .param p11, "remotePortLow"    # I
    .param p12, "remotePortHigh"    # I
    .param p13, "spi"    # I
    .param p14, "tos"    # I
    .param p15, "tosMask"    # I
    .param p16, "flowLabel"    # I

    .line 42
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    move/from16 v1, p1

    iput v1, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mId:I

    .line 44
    move/from16 v2, p2

    iput v2, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mPrecedence:I

    .line 45
    move/from16 v3, p3

    iput v3, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mDirection:I

    .line 46
    move/from16 v4, p4

    iput v4, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mNetworkPfIdentifier:I

    .line 47
    move/from16 v5, p5

    iput v5, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mBitmap:I

    .line 48
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mAddress:Ljava/lang/String;

    .line 49
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mMask:Ljava/lang/String;

    .line 50
    move/from16 v8, p8

    iput v8, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mProtocolNextHeader:I

    .line 51
    move/from16 v9, p9

    iput v9, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mLocalPortLow:I

    .line 52
    move/from16 v10, p10

    iput v10, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mLocalPortHigh:I

    .line 53
    move/from16 v11, p11

    iput v11, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mRemotePortLow:I

    .line 54
    move/from16 v12, p12

    iput v12, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mRemotePortHigh:I

    .line 55
    move/from16 v13, p13

    iput v13, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mSpi:I

    .line 56
    move/from16 v14, p14

    iput v14, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mTos:I

    .line 57
    move/from16 v15, p15

    iput v15, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mTosMask:I

    .line 58
    move/from16 v1, p16

    iput v1, v0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mFlowLabel:I

    .line 59
    return-void
.end method

.method public static readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    .registers 35
    .param p0, "p"    # Landroid/os/Parcel;

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "id":I
    move/from16 v1, v17

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "precedence":I
    move/from16 v2, v18

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "direction":I
    move/from16 v3, v19

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "networkPfIdentifier":I
    move/from16 v4, v20

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, "bitmap":I
    move/from16 v5, v21

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .local v22, "address":Ljava/lang/String;
    move-object/from16 v6, v22

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .local v23, "mask":Ljava/lang/String;
    move-object/from16 v7, v23

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, "protocolNextHeader":I
    move/from16 v8, v24

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .local v25, "localPortLow":I
    move/from16 v9, v25

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "localPortHigh":I
    move/from16 v10, v26

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .local v27, "remotePortLow":I
    move/from16 v11, v27

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "remotePortHigh":I
    move/from16 v12, v28

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "spi":I
    move/from16 v13, v29

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "tos":I
    move/from16 v14, v30

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .local v31, "tosMask":I
    move/from16 v15, v31

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .local v32, "flowLabel":I
    move/from16 v16, v32

    .line 79
    new-instance v33, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;

    move-object/from16 v0, v33

    invoke-direct/range {v0 .. v16}, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;-><init>(IIIIILjava/lang/String;Ljava/lang/String;IIIIIIIII)V

    return-object v33
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precedence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mPrecedence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", networkPfIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mNetworkPfIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mBitmap:I

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mMask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", protocolNextHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mProtocolNextHeader:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", localPortLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mLocalPortLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", localPortHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mLocalPortHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remotePortLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mRemotePortLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remotePortHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mRemotePortHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mSpi:I

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mTos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tosMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mTosMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flowLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mFlowLabel:I

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    return-object v0
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;

    .line 86
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mPrecedence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mNetworkPfIdentifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mAddress:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_20

    move-object v0, v1

    :cond_20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mMask:Ljava/lang/String;

    if-nez v0, :cond_28

    goto :goto_29

    :cond_28
    move-object v1, v0

    :goto_29
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mProtocolNextHeader:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mLocalPortLow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mLocalPortHigh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mRemotePortLow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mRemotePortHigh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mSpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mTos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mTosMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->mFlowLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->writeTo(Landroid/os/Parcel;)V

    .line 125
    return-void
.end method

.class public Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
.super Ljava/lang/Object;
.source "MtkDedicateDataCallResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON_BEARER_ACTIVATION:Ljava/lang/String; = "activation"

.field public static final REASON_BEARER_DEACTIVATION:Ljava/lang/String; = "deactivation"

.field public static final REASON_BEARER_MODIFICATION:Ljava/lang/String; = "modification"


# instance fields
.field public mActive:I

.field public mBearerId:I

.field public mCid:I

.field public mDefaultCid:I

.field public mFailCause:I

.field public mInterfaceId:I

.field public mMtkQosStatus:Lcom/mediatek/internal/telephony/ims/MtkQosStatus;

.field public mMtkTftStatus:Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

.field public mPcscfAddress:Ljava/lang/String;

.field public mSignalingFlag:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIILcom/mediatek/internal/telephony/ims/MtkQosStatus;Lcom/mediatek/internal/telephony/ims/MtkTftStatus;Ljava/lang/String;)V
    .registers 11
    .param p1, "interfaceId"    # I
    .param p2, "defaultId"    # I
    .param p3, "cid"    # I
    .param p4, "active"    # I
    .param p5, "signalingFlag"    # I
    .param p6, "bearerId"    # I
    .param p7, "faileCause"    # I
    .param p8, "qosStatus"    # Lcom/mediatek/internal/telephony/ims/MtkQosStatus;
    .param p9, "tftStatus"    # Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    .param p10, "pcscf"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mInterfaceId:I

    .line 35
    iput p2, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mDefaultCid:I

    .line 36
    iput p3, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mCid:I

    .line 37
    iput p4, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mActive:I

    .line 38
    iput p5, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mSignalingFlag:I

    .line 39
    iput p6, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mBearerId:I

    .line 40
    iput p7, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mFailCause:I

    .line 41
    iput-object p8, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkQosStatus:Lcom/mediatek/internal/telephony/ims/MtkQosStatus;

    .line 42
    iput-object p9, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkTftStatus:Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    .line 43
    iput-object p10, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mPcscfAddress:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    .registers 23
    .param p0, "p"    # Landroid/os/Parcel;

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 48
    .local v11, "interfaceId":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 49
    .local v12, "defaultCid":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 50
    .local v13, "cid":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 51
    .local v14, "active":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 52
    .local v15, "signalingFlag":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 53
    .local v16, "bearerId":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 54
    .local v17, "failCause":I
    const/16 v18, 0x0

    .line 55
    .local v18, "qosStatus":Lcom/mediatek/internal/telephony/ims/MtkQosStatus;
    const/16 v19, 0x0

    .line 56
    .local v19, "tftStatus":Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    const/16 v20, 0x0

    .line 57
    .local v20, "pcscf":Ljava/lang/String;
    new-instance v21, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    move-object/from16 v0, v21

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;-><init>(IIIIIIILcom/mediatek/internal/telephony/ims/MtkQosStatus;Lcom/mediatek/internal/telephony/ims/MtkTftStatus;Ljava/lang/String;)V

    return-object v21
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[interfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mInterfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mDefaultCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mActive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signalingFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mSignalingFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bearerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mBearerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mFailCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", QOS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkQosStatus:Lcom/mediatek/internal/telephony/ims/MtkQosStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", TFT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mMtkTftStatus:Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", PCSCF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mPcscfAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mInterfaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mDefaultCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mActive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mSignalingFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mBearerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mFailCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method

.class public Lcom/mediatek/bt/mesh/MeshModel;
.super Ljava/lang/Object;
.source "MeshModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;,
        Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/bt/mesh/MeshModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMesh_MeshModel"

.field private static final VDBG:Z = true


# instance fields
.field private mCompanyID:I

.field private mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

.field private mElementIndex:I

.field private mMesh:Lcom/mediatek/bt/mesh/BluetoothMesh;

.field private mModelHandle:I

.field private mModelID:J

.field private mModelOpcode:I

.field private mOpcodeCount:I

.field private mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

.field private mVendorMsgOpcodes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Lcom/mediatek/bt/mesh/MeshModel$1;

    invoke-direct {v0}, Lcom/mediatek/bt/mesh/MeshModel$1;-><init>()V

    sput-object v0, Lcom/mediatek/bt/mesh/MeshModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelOpcode:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelHandle:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mElementIndex:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelID:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mVendorMsgOpcodes:[I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mCompanyID:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mOpcodeCount:I

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 2
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshModel;->mMesh:Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;
    .param p2, "modelOpcode"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshModel;->mMesh:Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 57
    iput p2, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelOpcode:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;II)V
    .registers 4
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;
    .param p2, "modelOpcode"    # I
    .param p3, "index"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshModel;->mMesh:Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 62
    iput p2, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelOpcode:I

    .line 63
    iput p3, p0, Lcom/mediatek/bt/mesh/MeshModel;->mElementIndex:I

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getCompanyId()I
    .registers 2

    .line 337
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mCompanyID:I

    return v0
.end method

.method public getElementIndex()I
    .registers 2

    .line 320
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mElementIndex:I

    return v0
.end method

.method public getModelHandle()I
    .registers 2

    .line 324
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelHandle:I

    return v0
.end method

.method public getModelId()J
    .registers 3

    .line 328
    iget-wide v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelID:J

    return-wide v0
.end method

.method public getModelOpcode()I
    .registers 2

    .line 316
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelOpcode:I

    return v0
.end method

.method public getOpcodeCount()I
    .registers 2

    .line 341
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mOpcodeCount:I

    return v0
.end method

.method public getVendorMsgOpcodes()[I
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mVendorMsgOpcodes:[I

    return-object v0
.end method

.method public modelSendConfigMessage()V
    .registers 10

    .line 248
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    const-string v1, "BluetoothMesh_MeshModel"

    if-nez v0, :cond_c

    .line 249
    const-string v0, "TxMsg is null, should create header first"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 252
    :cond_c
    iget-object v2, p0, Lcom/mediatek/bt/mesh/MeshModel;->mMesh:Lcom/mediatek/bt/mesh/BluetoothMesh;

    if-nez v2, :cond_16

    .line 253
    const-string v0, "BluetoothMesh is null, cannot send"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 256
    :cond_16
    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mDst:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$900(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I

    move-result v3

    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mSrc:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$800(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I

    move-result v4

    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    .line 257
    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mTtl:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$1000(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I

    move-result v5

    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mNetKeyIndex:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$1100(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I

    move-result v6

    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mMsgOpCode:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$1200(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I

    move-result v7

    const/4 v8, 0x0

    .line 256
    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/bt/mesh/BluetoothMesh;->sendConfigMessage(IIIIILcom/mediatek/bt/mesh/ConfigMessageParams;)I

    .line 258
    return-void
.end method

.method public modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 11
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 261
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    const-string v1, "BluetoothMesh_MeshModel"

    if-nez v0, :cond_c

    .line 262
    const-string v0, "TxMsg is null, should create header first"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 265
    :cond_c
    iget-object v2, p0, Lcom/mediatek/bt/mesh/MeshModel;->mMesh:Lcom/mediatek/bt/mesh/BluetoothMesh;

    if-nez v2, :cond_16

    .line 266
    const-string v0, "BluetoothMesh is null, cannot send"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 269
    :cond_16
    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mDst:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$900(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I

    move-result v3

    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mSrc:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$800(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I

    move-result v4

    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    .line 270
    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mTtl:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$1000(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I

    move-result v5

    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mNetKeyIndex:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$1100(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I

    move-result v6

    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mMsgOpCode:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$1200(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;)I

    move-result v7

    .line 269
    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/bt/mesh/BluetoothMesh;->sendConfigMessage(IIIIILcom/mediatek/bt/mesh/ConfigMessageParams;)I

    .line 271
    return-void
.end method

.method public modelSendPacket()V
    .registers 2

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 154
    return-void
.end method

.method public modelSendPacket(I)V
    .registers 4
    .param p1, "param1"    # I

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 158
    .local v0, "params":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 159
    invoke-virtual {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 160
    return-void
.end method

.method public modelSendPacket(II)V
    .registers 5
    .param p1, "param1"    # I
    .param p2, "param2"    # I

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 164
    .local v0, "params":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 165
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 166
    invoke-virtual {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 167
    return-void
.end method

.method public modelSendPacket(III)V
    .registers 6
    .param p1, "param1"    # I
    .param p2, "param2"    # I
    .param p3, "param3"    # I

    .line 170
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 171
    .local v0, "params":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 172
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 173
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 174
    invoke-virtual {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 175
    return-void
.end method

.method public modelSendPacket(IIII)V
    .registers 7
    .param p1, "param1"    # I
    .param p2, "param2"    # I
    .param p3, "param3"    # I
    .param p4, "param4"    # I

    .line 178
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 179
    .local v0, "params":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 180
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 181
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 182
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 183
    invoke-virtual {p0, v0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 184
    return-void
.end method

.method public modelSendPacket(II[I)V
    .registers 9
    .param p1, "param1"    # I
    .param p2, "param2"    # I
    .param p3, "array"    # [I

    .line 187
    const/4 v0, 0x0

    if-nez p3, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    array-length v1, p3

    .line 188
    .local v1, "arrayLength":I
    :goto_6
    const/4 v2, 0x2

    .line 189
    .local v2, "paramsHalfLength":I
    add-int v3, v2, v1

    new-array v3, v3, [I

    .line 190
    .local v3, "params":[I
    aput p1, v3, v0

    .line 191
    const/4 v4, 0x1

    aput p2, v3, v4

    .line 192
    if-eqz p3, :cond_15

    invoke-static {p3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    :cond_15
    invoke-virtual {p0, v3}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendPacket([I)V

    .line 194
    return-void
.end method

.method public modelSendPacket([I)V
    .registers 13
    .param p1, "params"    # [I

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modelSendPacket: params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh_MeshModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    if-nez v0, :cond_24

    .line 199
    const-string v0, "TxMsg is null, should create header first"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 202
    :cond_24
    iget-object v2, p0, Lcom/mediatek/bt/mesh/MeshModel;->mMesh:Lcom/mediatek/bt/mesh/BluetoothMesh;

    if-nez v2, :cond_2e

    .line 203
    const-string v0, "BluetoothMesh is null, cannot send"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 207
    :cond_2e
    const/4 v2, 0x0

    if-nez p1, :cond_33

    move v3, v2

    goto :goto_34

    :cond_33
    array-length v3, p1

    .line 211
    .local v3, "paramsLength":I
    :goto_34
    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v0

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_68

    .line 212
    const/4 v0, 0x1

    .line 213
    .local v0, "opcodeLength":I
    add-int v4, v0, v3

    new-array v4, v4, [I

    .line 214
    .local v4, "payload":[I
    iget-object v5, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v5}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v2

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modelSendPacket  1-octet opcode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v6}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    goto/16 :goto_ff

    .line 218
    .end local v0    # "opcodeLength":I
    .end local v4    # "payload":[I
    :cond_68
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v0

    const v5, 0xff00

    const/4 v6, 0x1

    const v7, 0xc000

    if-le v0, v4, :cond_b5

    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v0

    if-ge v0, v7, :cond_b5

    .line 219
    const/4 v0, 0x2

    .line 220
    .restart local v0    # "opcodeLength":I
    add-int v4, v0, v3

    new-array v4, v4, [I

    .line 221
    .restart local v4    # "payload":[I
    iget-object v7, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v7}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v7

    and-int/2addr v5, v7

    shr-int/lit8 v5, v5, 0x8

    aput v5, v4, v2

    .line 222
    iget-object v5, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v5}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v6

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modelSendPacket  2-octet opcode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v6}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    goto :goto_ff

    .line 226
    .end local v0    # "opcodeLength":I
    .end local v4    # "payload":[I
    :cond_b5
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v0}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v0

    if-lt v0, v7, :cond_f7

    .line 227
    const/4 v0, 0x3

    .line 228
    .restart local v0    # "opcodeLength":I
    add-int v4, v0, v3

    new-array v4, v4, [I

    .line 229
    .restart local v4    # "payload":[I
    iget-object v7, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v7}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v7

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x10

    aput v7, v4, v2

    .line 230
    iget v7, p0, Lcom/mediatek/bt/mesh/MeshModel;->mCompanyID:I

    and-int/lit16 v8, v7, 0xff

    aput v8, v4, v6

    .line 231
    const/4 v6, 0x2

    and-int/2addr v5, v7

    shr-int/lit8 v5, v5, 0x8

    aput v5, v4, v6

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modelSendPacket  3-octet opcode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v6}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$700(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    goto :goto_ff

    .line 235
    .end local v0    # "opcodeLength":I
    .end local v4    # "payload":[I
    :cond_f7
    const/4 v4, 0x0

    .line 236
    .restart local v4    # "payload":[I
    const/4 v0, 0x0

    .line 237
    .restart local v0    # "opcodeLength":I
    const-string v5, "modelSendPacket  should never here!! "

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 240
    .end local v4    # "payload":[I
    .local v1, "payload":[I
    :goto_ff
    if-eqz p1, :cond_107

    if-eqz v1, :cond_107

    .line 241
    array-length v4, p1

    invoke-static {p1, v2, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    :cond_107
    iget-object v4, p0, Lcom/mediatek/bt/mesh/MeshModel;->mMesh:Lcom/mediatek/bt/mesh/BluetoothMesh;

    iget-object v2, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mDst:I
    invoke-static {v2}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$100(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v5

    iget-object v2, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mSrc:I
    invoke-static {v2}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$300(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v6

    iget-object v2, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mTtl:I
    invoke-static {v2}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$400(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v7

    iget-object v2, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    .line 243
    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mNetKeyIndex:I
    invoke-static {v2}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$500(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v8

    iget-object v2, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # getter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mAppKeyIndex:I
    invoke-static {v2}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$600(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;)I

    move-result v9

    .line 242
    move-object v10, v1

    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/bt/mesh/BluetoothMesh;->sendPacket(IIIII[I)I

    .line 244
    return-void
.end method

.method public onMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V
    .registers 3
    .param p1, "modelHandle"    # I
    .param p2, "msg"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;

    .line 350
    return-void
.end method

.method public onPublishTimeoutCallback(I)V
    .registers 2
    .param p1, "modelHandle"    # I

    .line 357
    return-void
.end method

.method public setCompanyId(I)V
    .registers 2
    .param p1, "companyID"    # I

    .line 308
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel;->mCompanyID:I

    .line 309
    return-void
.end method

.method public setConfigMessageHeader(IIIII)V
    .registers 7
    .param p1, "src"    # I
    .param p2, "dst"    # I
    .param p3, "ttl"    # I
    .param p4, "netKeyIndex"    # I
    .param p5, "msgOpCode"    # I

    .line 141
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    if-nez v0, :cond_b

    .line 142
    new-instance v0, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    invoke-direct {v0, p0}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;-><init>(Lcom/mediatek/bt/mesh/MeshModel;)V

    iput-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    .line 144
    :cond_b
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mSrc:I
    invoke-static {v0, p1}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$802(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;I)I

    .line 145
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mDst:I
    invoke-static {v0, p2}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$902(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;I)I

    .line 146
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mTtl:I
    invoke-static {v0, p3}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$1002(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;I)I

    .line 147
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mNetKeyIndex:I
    invoke-static {v0, p4}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$1102(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;I)I

    .line 148
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mConfigMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->mMsgOpCode:I
    invoke-static {v0, p5}, Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;->access$1202(Lcom/mediatek/bt/mesh/MeshModel$ModelConfigMessage;I)I

    .line 149
    return-void
.end method

.method public setElementIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .line 292
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel;->mElementIndex:I

    .line 293
    return-void
.end method

.method public setModelHandle(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 296
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelHandle:I

    .line 297
    return-void
.end method

.method public setModelId(J)V
    .registers 3
    .param p1, "modelID"    # J

    .line 300
    iput-wide p1, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelID:J

    .line 301
    return-void
.end method

.method public setModelOpcode(I)V
    .registers 2
    .param p1, "modelOpcode"    # I

    .line 288
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelOpcode:I

    .line 289
    return-void
.end method

.method public setOpcodeCount(I)V
    .registers 2
    .param p1, "opcodeCount"    # I

    .line 312
    iput p1, p0, Lcom/mediatek/bt/mesh/MeshModel;->mOpcodeCount:I

    .line 313
    return-void
.end method

.method public setTxMessageHeader(II[IIIIII)V
    .registers 10
    .param p1, "dstAddrType"    # I
    .param p2, "dst"    # I
    .param p3, "virtualUUID"    # [I
    .param p4, "src"    # I
    .param p5, "ttl"    # I
    .param p6, "netKeyIndex"    # I
    .param p7, "appKeyIndex"    # I
    .param p8, "msgOpCode"    # I

    .line 126
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    if-nez v0, :cond_b

    .line 127
    new-instance v0, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    invoke-direct {v0, p0}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;-><init>(Lcom/mediatek/bt/mesh/MeshModel;)V

    iput-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    .line 129
    :cond_b
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mDstAddrType:I
    invoke-static {v0, p1}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$002(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I

    .line 130
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mDst:I
    invoke-static {v0, p2}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$102(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I

    .line 131
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mVirtualUUID:[I
    invoke-static {v0, p3}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$202(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;[I)[I

    .line 132
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mSrc:I
    invoke-static {v0, p4}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$302(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I

    .line 133
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mTtl:I
    invoke-static {v0, p5}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$402(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I

    .line 134
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mNetKeyIndex:I
    invoke-static {v0, p6}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$502(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I

    .line 135
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mAppKeyIndex:I
    invoke-static {v0, p7}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$602(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I

    .line 136
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mTxMsg:Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;

    # setter for: Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->mMsgOpCode:I
    invoke-static {v0, p8}, Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;->access$702(Lcom/mediatek/bt/mesh/MeshModel$ModelTxMessage;I)I

    .line 137
    return-void
.end method

.method public setVendorMsgOpcodes([I)V
    .registers 2
    .param p1, "opcodes"    # [I

    .line 304
    iput-object p1, p0, Lcom/mediatek/bt/mesh/MeshModel;->mVendorMsgOpcodes:[I

    .line 305
    return-void
.end method

.method public twoOctetsToArray(I)[I
    .registers 5
    .param p1, "src"    # I

    .line 276
    const v0, 0xffff

    if-gt p1, v0, :cond_7

    if-gez p1, :cond_2e

    .line 277
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Param should be 0x0000~0xFFFF. Wrong param 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", will keep the last 2 bytes 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr v0, p1

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string v1, "BluetoothMesh_MeshModel"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2e
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 281
    .local v0, "dstArray":[I
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    aput v2, v0, v1

    .line 282
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    aput v2, v0, v1

    .line 283
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 93
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelOpcode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mElementIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-wide v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mModelID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-object v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mVendorMsgOpcodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 98
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mCompanyID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/mediatek/bt/mesh/MeshModel;->mOpcodeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method

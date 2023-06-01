.class public Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
.super Ljava/lang/Object;
.source "MtkTftStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/ims/MtkTftStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPCODE_ADD_PF:I = 0x3

.field public static final OPCODE_CREATE_NEW_TFT:I = 0x1

.field public static final OPCODE_DELETE_PF:I = 0x5

.field public static final OPCODE_DELETE_TFT:I = 0x2

.field public static final OPCODE_NOTFT_OP:I = 0x6

.field public static final OPCODE_REPLACE_PF:I = 0x4

.field public static final OPCODE_RESERVED:I = 0x7

.field public static final OPCODE_SPARE:I


# instance fields
.field public mMtkPacketFilterInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMtkTftParameter:Lcom/mediatek/internal/telephony/ims/MtkTftParameter;

.field public mOperation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ims/MtkTftStatus$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Lcom/mediatek/internal/telephony/ims/MtkTftParameter;)V
    .registers 5
    .param p1, "operation"    # I
    .param p3, "mtkTftParameter"    # Lcom/mediatek/internal/telephony/ims/MtkTftParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;",
            ">;",
            "Lcom/mediatek/internal/telephony/ims/MtkTftParameter;",
            ")V"
        }
    .end annotation

    .line 24
    .local p2, "mtkPacketFilterInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->mOperation:I

    .line 25
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->mOperation:I

    .line 26
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->mMtkPacketFilterInfoList:Ljava/util/ArrayList;

    .line 27
    iput-object p3, p0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->mMtkTftParameter:Lcom/mediatek/internal/telephony/ims/MtkTftParameter;

    .line 28
    return-void
.end method

.method public static readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkTftStatus;
    .registers 6
    .param p0, "p"    # Landroid/os/Parcel;

    .line 31
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 32
    .local v0, "operation":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 33
    .local v1, "pfNumber":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v2, "pfList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v1, :cond_1a

    .line 35
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;

    move-result-object v4

    .line 36
    .local v4, "pfInfo":Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v4    # "pfInfo":Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 38
    .end local v3    # "i":I
    :cond_1a
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;->readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkTftParameter;

    move-result-object v3

    .line 39
    .local v3, "tftParameter":Lcom/mediatek/internal/telephony/ims/MtkTftParameter;
    new-instance v4, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;

    invoke-direct {v4, v0, v2, v3}, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;-><init>(ILjava/util/ArrayList;Lcom/mediatek/internal/telephony/ims/MtkTftParameter;)V

    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->mOperation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " [PacketFilterInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->mMtkPacketFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;

    .line 55
    .local v2, "pfInfo":Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_23

    .line 57
    .end local v2    # "pfInfo":Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "], TftParameter["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->mMtkTftParameter:Lcom/mediatek/internal/telephony/ims/MtkTftParameter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;

    .line 43
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->mOperation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->mMtkPacketFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->mMtkPacketFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;

    .line 46
    .local v1, "pfInfo":Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;->writeTo(Landroid/os/Parcel;)V

    .end local v1    # "pfInfo":Lcom/mediatek/internal/telephony/ims/MtkPacketFilterInfo;
    goto :goto_14

    .line 48
    :cond_24
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->mMtkTftParameter:Lcom/mediatek/internal/telephony/ims/MtkTftParameter;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;->writeTo(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ims/MtkTftStatus;->writeTo(Landroid/os/Parcel;)V

    .line 69
    return-void
.end method

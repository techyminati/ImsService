.class public Lcom/mediatek/powerhalmgr/DupLinkInfo;
.super Ljava/lang/Object;
.source "DupLinkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/powerhalmgr/DupLinkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDstIp:Ljava/lang/String;

.field private mDstPort:I

.field private mProto:I

.field private mSrcIp:Ljava/lang/String;

.field private mSrcPort:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/mediatek/powerhalmgr/DupLinkInfo$1;

    invoke-direct {v0}, Lcom/mediatek/powerhalmgr/DupLinkInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcIp:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstIp:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcPort:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstPort:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mProto:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/powerhalmgr/DupLinkInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/powerhalmgr/DupLinkInfo$1;

    .line 29
    invoke-direct {p0, p1}, Lcom/mediatek/powerhalmgr/DupLinkInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 6
    .param p1, "src_ip"    # Ljava/lang/String;
    .param p2, "dst_ip"    # Ljava/lang/String;
    .param p3, "src_port"    # I
    .param p4, "dst_port"    # I
    .param p5, "proto"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcIp:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstIp:Ljava/lang/String;

    .line 96
    iput p3, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcPort:I

    .line 97
    iput p4, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstPort:I

    .line 98
    iput p5, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mProto:I

    .line 99
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getDstIp()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstIp:Ljava/lang/String;

    return-object v0
.end method

.method public getDstPort()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstPort:I

    return v0
.end method

.method public getProto()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mProto:I

    return v0
.end method

.method public getSrcIp()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcIp:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcPort()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcPort:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcIp:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstIp:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcPort:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstPort:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mProto:I

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DupLinkInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v2, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v2, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mProto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mSrcPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mDstPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->mProto:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method

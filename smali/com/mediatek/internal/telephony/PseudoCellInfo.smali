.class public Lcom/mediatek/internal/telephony/PseudoCellInfo;
.super Ljava/lang/Object;
.source "PseudoCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/PseudoCellInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mApcMode:I

.field public mApcReport:Z

.field public mCellCount:I

.field public mCellInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mReportInterval:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 262
    new-instance v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/PseudoCellInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcMode:I

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcReport:Z

    .line 47
    iput v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mReportInterval:I

    .line 48
    iput v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method protected constructor <init>(IZI[I)V
    .registers 5
    .param p1, "apcMode"    # I
    .param p2, "reportEnable"    # Z
    .param p3, "interVal"    # I
    .param p4, "cellinfo"    # [I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcMode:I

    .line 73
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcReport:Z

    .line 74
    iput p3, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mReportInterval:I

    .line 75
    invoke-virtual {p0, p4}, Lcom/mediatek/internal/telephony/PseudoCellInfo;->setCellInfo([I)V

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcMode:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcReport:Z

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mReportInterval:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    iget v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    if-ge v0, v1, :cond_5d

    .line 249
    new-instance v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;-><init>(Lcom/mediatek/internal/telephony/PseudoCellInfo;)V

    .line 250
    .local v1, "cell":Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->type:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->plmn:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->lac:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->cid:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->arfcn:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->bsic:I

    .line 256
    iget-object v2, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v1    # "cell":Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 259
    .end local v0    # "i":I
    :cond_5d
    return-void
.end method

.method protected constructor <init>([I)V
    .registers 5
    .param p1, "msgs"    # [I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    aget v1, p1, v0

    iput v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcMode:I

    .line 54
    const/4 v1, 0x1

    aget v2, p1, v1

    if-ne v2, v1, :cond_e

    move v0, v1

    :cond_e
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcReport:Z

    .line 55
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mReportInterval:I

    .line 56
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    if-ge v0, v1, :cond_63

    .line 59
    new-instance v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;-><init>(Lcom/mediatek/internal/telephony/PseudoCellInfo;)V

    .line 60
    .local v1, "cell":Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x4

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->type:I

    .line 61
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x5

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->plmn:I

    .line 62
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x6

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->lac:I

    .line 63
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x7

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->cid:I

    .line 64
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x8

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->arfcn:I

    .line 65
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x9

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->bsic:I

    .line 66
    iget-object v2, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v1    # "cell":Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 68
    .end local v0    # "i":I
    :cond_63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getApcMode()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcMode:I

    return v0
.end method

.method public getArfcn(I)I
    .registers 4
    .param p1, "index"    # I

    .line 156
    const/4 v0, 0x0

    if-ltz p1, :cond_1f

    iget v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    if-lt p1, v1, :cond_8

    goto :goto_1f

    .line 159
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_1e

    .line 162
    :cond_13
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v0, v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->arfcn:I

    return v0

    .line 160
    :cond_1e
    :goto_1e
    return v0

    .line 157
    :cond_1f
    :goto_1f
    return v0
.end method

.method public getBsic(I)I
    .registers 4
    .param p1, "index"    # I

    .line 166
    const/4 v0, 0x0

    if-ltz p1, :cond_1f

    iget v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    if-lt p1, v1, :cond_8

    goto :goto_1f

    .line 169
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_1e

    .line 172
    :cond_13
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v0, v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->bsic:I

    return v0

    .line 170
    :cond_1e
    :goto_1e
    return v0

    .line 167
    :cond_1f
    :goto_1f
    return v0
.end method

.method public getCellCount()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    return v0
.end method

.method public getCid(I)I
    .registers 4
    .param p1, "index"    # I

    .line 146
    const/4 v0, 0x0

    if-ltz p1, :cond_1f

    iget v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    if-lt p1, v1, :cond_8

    goto :goto_1f

    .line 149
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_1e

    .line 152
    :cond_13
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v0, v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->cid:I

    return v0

    .line 150
    :cond_1e
    :goto_1e
    return v0

    .line 147
    :cond_1f
    :goto_1f
    return v0
.end method

.method public getLac(I)I
    .registers 4
    .param p1, "index"    # I

    .line 136
    const/4 v0, 0x0

    if-ltz p1, :cond_1f

    iget v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    if-lt p1, v1, :cond_8

    goto :goto_1f

    .line 139
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_1e

    .line 142
    :cond_13
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v0, v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->lac:I

    return v0

    .line 140
    :cond_1e
    :goto_1e
    return v0

    .line 137
    :cond_1f
    :goto_1f
    return v0
.end method

.method public getPlmn(I)I
    .registers 4
    .param p1, "index"    # I

    .line 126
    const/4 v0, 0x0

    if-ltz p1, :cond_1f

    iget v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    if-lt p1, v1, :cond_8

    goto :goto_1f

    .line 129
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_1e

    .line 132
    :cond_13
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v0, v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->plmn:I

    return v0

    .line 130
    :cond_1e
    :goto_1e
    return v0

    .line 127
    :cond_1f
    :goto_1f
    return v0
.end method

.method public getReportEnable()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcReport:Z

    return v0
.end method

.method public getReportInterval()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mReportInterval:I

    return v0
.end method

.method public getType(I)I
    .registers 4
    .param p1, "index"    # I

    .line 116
    const/4 v0, 0x0

    if-ltz p1, :cond_1f

    iget v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    if-lt p1, v1, :cond_8

    goto :goto_1f

    .line 119
    :cond_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_1e

    .line 122
    :cond_13
    iget-object v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v0, v0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->type:I

    return v0

    .line 120
    :cond_1e
    :goto_1e
    return v0

    .line 117
    :cond_1f
    :goto_1f
    return v0
.end method

.method public setCellInfo([I)V
    .registers 5
    .param p1, "cellInfo"    # [I

    .line 85
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    if-ge v0, v1, :cond_4e

    .line 88
    new-instance v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;-><init>(Lcom/mediatek/internal/telephony/PseudoCellInfo;)V

    .line 89
    .local v1, "cell":Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->type:I

    .line 90
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x2

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->plmn:I

    .line 91
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x3

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->lac:I

    .line 92
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x4

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->cid:I

    .line 93
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x5

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->arfcn:I

    .line 94
    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x6

    aget v2, p1, v2

    iput v2, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->bsic:I

    .line 95
    iget-object v2, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v1    # "cell":Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 97
    .end local v0    # "i":I
    :cond_4e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget v2, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 180
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcReport:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    iget v3, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mReportInterval:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    iget v3, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 186
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f
    iget v5, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    if-ge v4, v5, :cond_a4

    .line 189
    iget-object v5, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_a4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3e

    .line 190
    goto :goto_a4

    .line 192
    :cond_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    iget-object v5, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v5, v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->type:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    iget-object v5, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v5, v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->plmn:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    iget-object v5, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v5, v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->lac:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    iget-object v5, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v5, v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->cid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    iget-object v5, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v5, v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->arfcn:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    iget-object v5, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v5, v5, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->bsic:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 206
    .end local v4    # "i":I
    :cond_a4
    :goto_a4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateApcSetting(IZI)V
    .registers 4
    .param p1, "apcMode"    # I
    .param p2, "reportEnable"    # Z
    .param p3, "interVal"    # I

    .line 79
    iput p1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcMode:I

    .line 80
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcReport:Z

    .line 81
    iput p3, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mReportInterval:I

    .line 82
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 220
    iget v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mApcReport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mReportInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget v0, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellCount:I

    if-ge v0, v1, :cond_76

    .line 225
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_75

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_24

    goto :goto_75

    .line 228
    :cond_24
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v1, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v1, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->plmn:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v1, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->lac:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v1, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->cid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v1, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->arfcn:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-object v1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo;->mCellInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;

    iget v1, v1, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->bsic:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 226
    :cond_75
    :goto_75
    return-void

    .line 235
    .end local v0    # "i":I
    :cond_76
    return-void
.end method

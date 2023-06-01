.class public Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
.super Ljava/lang/Object;
.source "MtkIccSmsStorageStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mTotal:I

.field public mUsed:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mUsed:I

    .line 47
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mTotal:I

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "used"    # I
    .param p2, "total"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mUsed:I

    .line 52
    iput p2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mTotal:I

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalCount()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mTotal:I

    return v0
.end method

.method public getUnused()I
    .registers 3

    .line 76
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mTotal:I

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUsedCount()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mUsed:I

    return v0
.end method

.method public reset()V
    .registers 2

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mUsed:I

    .line 81
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mTotal:I

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mUsed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->mTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method

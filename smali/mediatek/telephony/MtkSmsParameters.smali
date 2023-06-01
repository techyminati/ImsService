.class public Lmediatek/telephony/MtkSmsParameters;
.super Ljava/lang/Object;
.source "MtkSmsParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmediatek/telephony/MtkSmsParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dcs:I

.field public format:I

.field public pid:I

.field public vp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Lmediatek/telephony/MtkSmsParameters$1;

    invoke-direct {v0}, Lmediatek/telephony/MtkSmsParameters$1;-><init>()V

    sput-object v0, Lmediatek/telephony/MtkSmsParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "format"    # I
    .param p2, "vp"    # I
    .param p3, "pid"    # I
    .param p4, "dcs"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lmediatek/telephony/MtkSmsParameters;->format:I

    .line 66
    iput p2, p0, Lmediatek/telephony/MtkSmsParameters;->vp:I

    .line 67
    iput p3, p0, Lmediatek/telephony/MtkSmsParameters;->pid:I

    .line 68
    iput p4, p0, Lmediatek/telephony/MtkSmsParameters;->dcs:I

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lmediatek/telephony/MtkSmsParameters;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v2, p0, Lmediatek/telephony/MtkSmsParameters;->vp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v2, p0, Lmediatek/telephony/MtkSmsParameters;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lmediatek/telephony/MtkSmsParameters;->dcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget v0, p0, Lmediatek/telephony/MtkSmsParameters;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lmediatek/telephony/MtkSmsParameters;->vp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lmediatek/telephony/MtkSmsParameters;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lmediatek/telephony/MtkSmsParameters;->dcs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method

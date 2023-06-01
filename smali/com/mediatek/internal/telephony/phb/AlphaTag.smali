.class public Lcom/mediatek/internal/telephony/phb/AlphaTag;
.super Ljava/lang/Object;
.source "AlphaTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/phb/AlphaTag;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "AlphaTag"


# instance fields
.field mAlphaTag:Ljava/lang/String;

.field mPbrIndex:I

.field mRecordNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/mediatek/internal/telephony/phb/AlphaTag$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/AlphaTag$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 5
    .param p1, "recordNumber"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "pbr"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mAlphaTag:Ljava/lang/String;

    .line 75
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mRecordNumber:I

    .line 76
    iput-object p2, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mAlphaTag:Ljava/lang/String;

    .line 77
    iput p3, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mPbrIndex:I

    .line 78
    return-void
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 136
    if-ne p0, p1, :cond_4

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_4
    if-nez p0, :cond_8

    .line 140
    const-string p0, ""

    .line 142
    :cond_8
    if-nez p1, :cond_c

    .line 143
    const-string p1, ""

    .line 145
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPbrIndex()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mPbrIndex:I

    return v0
.end method

.method public getRecordIndex()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mRecordNumber:I

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/mediatek/internal/telephony/phb/AlphaTag;)Z
    .registers 4
    .param p1, "uGas"    # Lcom/mediatek/internal/telephony/phb/AlphaTag;

    .line 149
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/phb/AlphaTag;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "alphaString"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mAlphaTag:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setPbrIndex(I)V
    .registers 2
    .param p1, "pbr"    # I

    .line 123
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mPbrIndex:I

    .line 124
    return-void
.end method

.method public setRecordIndex(I)V
    .registers 2
    .param p1, "nIndex"    # I

    .line 115
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mRecordNumber:I

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlphaTag: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mPbrIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 159
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/AlphaTag;->mPbrIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return-void
.end method

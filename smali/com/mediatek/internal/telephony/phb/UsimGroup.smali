.class public Lcom/mediatek/internal/telephony/phb/UsimGroup;
.super Ljava/lang/Object;
.source "UsimGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "UsimGroup"


# instance fields
.field mAlphaTag:Ljava/lang/String;

.field mRecordNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/mediatek/internal/telephony/phb/UsimGroup$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/UsimGroup$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "recordNumber"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    .line 90
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mRecordNumber:I

    .line 91
    iput-object p2, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 139
    if-ne p0, p1, :cond_4

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_4
    if-nez p0, :cond_8

    .line 143
    const-string p0, ""

    .line 145
    :cond_8
    if-nez p1, :cond_c

    .line 146
    const-string p1, ""

    .line 148
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordIndex()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mRecordNumber:I

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/mediatek/internal/telephony/phb/UsimGroup;)Z
    .registers 4
    .param p1, "uGas"    # Lcom/mediatek/internal/telephony/phb/UsimGroup;

    .line 152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "alphaString"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setRecordIndex(I)V
    .registers 2
    .param p1, "nIndex"    # I

    .line 116
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mRecordNumber:I

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsimGroup \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/UsimGroup;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.class public Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
.super Ljava/lang/Object;
.source "UsimPBMemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_NOT_SET:I = -0x1

.field public static final STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field private mAasLength:I

.field private mAasTotal:I

.field private mAasType:I

.field private mAasUsed:I

.field private mAdnLength:I

.field private mAdnTotal:I

.field private mAdnType:I

.field private mAdnUsed:I

.field private mAnrLength:I

.field private mAnrTotal:I

.field private mAnrType:I

.field private mAnrUsed:I

.field private mCcpLength:I

.field private mCcpTotal:I

.field private mCcpType:I

.field private mCcpUsed:I

.field private mEmailLength:I

.field private mEmailTotal:I

.field private mEmailType:I

.field private mEmailUsed:I

.field private mExt1Length:I

.field private mExt1Total:I

.field private mExt1Type:I

.field private mExt1Used:I

.field private mGasLength:I

.field private mGasTotal:I

.field private mGasType:I

.field private mGasUsed:I

.field private mSliceIndex:I

.field private mSneLength:I

.field private mSneTotal:I

.field private mSneType:I

.field private mSneUsed:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 124
    new-instance v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSliceIndex:I

    .line 90
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnLength:I

    .line 91
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnUsed:I

    .line 92
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnTotal:I

    .line 93
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnType:I

    .line 94
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Length:I

    .line 95
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Used:I

    .line 96
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Total:I

    .line 97
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Type:I

    .line 98
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasLength:I

    .line 99
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasUsed:I

    .line 100
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasTotal:I

    .line 101
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasType:I

    .line 102
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrLength:I

    .line 103
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrUsed:I

    .line 104
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrTotal:I

    .line 105
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrType:I

    .line 106
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasLength:I

    .line 107
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasUsed:I

    .line 108
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasTotal:I

    .line 109
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasType:I

    .line 110
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneLength:I

    .line 111
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneUsed:I

    .line 112
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneTotal:I

    .line 113
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneType:I

    .line 114
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailLength:I

    .line 115
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailUsed:I

    .line 116
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailTotal:I

    .line 117
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailType:I

    .line 118
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpLength:I

    .line 119
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpUsed:I

    .line 120
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpTotal:I

    .line 121
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpType:I

    .line 122
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .registers 3
    .param p0, "source"    # Landroid/os/Parcel;

    .line 136
    new-instance v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;-><init>()V

    .line 137
    .local v0, "p":Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSliceIndex:I

    .line 138
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnLength:I

    .line 139
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnUsed:I

    .line 140
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnTotal:I

    .line 141
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnType:I

    .line 142
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Length:I

    .line 143
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Used:I

    .line 144
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Total:I

    .line 145
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Type:I

    .line 146
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasLength:I

    .line 147
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasUsed:I

    .line 148
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasTotal:I

    .line 149
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasType:I

    .line 150
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrLength:I

    .line 151
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrUsed:I

    .line 152
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrTotal:I

    .line 153
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrType:I

    .line 154
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasLength:I

    .line 155
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasUsed:I

    .line 156
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasTotal:I

    .line 157
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasType:I

    .line 158
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneLength:I

    .line 159
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneUsed:I

    .line 160
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneTotal:I

    .line 161
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneType:I

    .line 162
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailLength:I

    .line 163
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailUsed:I

    .line 164
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailTotal:I

    .line 165
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailType:I

    .line 166
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpLength:I

    .line 167
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpUsed:I

    .line 168
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpTotal:I

    .line 169
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpType:I

    .line 171
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public getAasFree()I
    .registers 3

    .line 403
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasTotal:I

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAasLength()I
    .registers 2

    .line 327
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasLength:I

    return v0
.end method

.method public getAasTotal()I
    .registers 2

    .line 335
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasTotal:I

    return v0
.end method

.method public getAasType()I
    .registers 2

    .line 339
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasType:I

    return v0
.end method

.method public getAasUsed()I
    .registers 2

    .line 331
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasUsed:I

    return v0
.end method

.method public getAdnFree()I
    .registers 3

    .line 267
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnTotal:I

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAdnLength()I
    .registers 2

    .line 251
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnLength:I

    return v0
.end method

.method public getAdnTotal()I
    .registers 2

    .line 259
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnTotal:I

    return v0
.end method

.method public getAdnType()I
    .registers 2

    .line 263
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnType:I

    return v0
.end method

.method public getAdnUsed()I
    .registers 2

    .line 255
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnUsed:I

    return v0
.end method

.method public getAnrFree()I
    .registers 3

    .line 323
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrTotal:I

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAnrLength()I
    .registers 2

    .line 307
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrLength:I

    return v0
.end method

.method public getAnrTotal()I
    .registers 2

    .line 315
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrTotal:I

    return v0
.end method

.method public getAnrType()I
    .registers 2

    .line 319
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrType:I

    return v0
.end method

.method public getAnrUsed()I
    .registers 2

    .line 311
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrUsed:I

    return v0
.end method

.method public getCcpFree()I
    .registers 3

    .line 395
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpTotal:I

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCcpLength()I
    .registers 2

    .line 379
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpLength:I

    return v0
.end method

.method public getCcpTotal()I
    .registers 2

    .line 387
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpTotal:I

    return v0
.end method

.method public getCcpType()I
    .registers 2

    .line 391
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpType:I

    return v0
.end method

.method public getCcpUsed()I
    .registers 2

    .line 383
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpUsed:I

    return v0
.end method

.method public getEmailFree()I
    .registers 3

    .line 375
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailTotal:I

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEmailLength()I
    .registers 2

    .line 359
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailLength:I

    return v0
.end method

.method public getEmailTotal()I
    .registers 2

    .line 367
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailTotal:I

    return v0
.end method

.method public getEmailType()I
    .registers 2

    .line 371
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailType:I

    return v0
.end method

.method public getEmailUsed()I
    .registers 2

    .line 363
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailUsed:I

    return v0
.end method

.method public getExt1Free()I
    .registers 3

    .line 287
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Total:I

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Used:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getExt1Length()I
    .registers 2

    .line 271
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Length:I

    return v0
.end method

.method public getExt1Total()I
    .registers 2

    .line 279
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Total:I

    return v0
.end method

.method public getExt1Type()I
    .registers 2

    .line 283
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Type:I

    return v0
.end method

.method public getExt1Used()I
    .registers 2

    .line 275
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Used:I

    return v0
.end method

.method public getGasFree()I
    .registers 3

    .line 399
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasTotal:I

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getGasLength()I
    .registers 2

    .line 291
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasLength:I

    return v0
.end method

.method public getGasTotal()I
    .registers 2

    .line 299
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasTotal:I

    return v0
.end method

.method public getGasType()I
    .registers 2

    .line 303
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasType:I

    return v0
.end method

.method public getGasUsed()I
    .registers 2

    .line 295
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasUsed:I

    return v0
.end method

.method public getSliceIndex()I
    .registers 2

    .line 247
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSliceIndex:I

    return v0
.end method

.method public getSneFree()I
    .registers 3

    .line 407
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneTotal:I

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSneLength()I
    .registers 2

    .line 343
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneLength:I

    return v0
.end method

.method public getSneTotal()I
    .registers 2

    .line 351
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneTotal:I

    return v0
.end method

.method public getSneType()I
    .registers 2

    .line 355
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneType:I

    return v0
.end method

.method public getSneUsed()I
    .registers 2

    .line 347
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneUsed:I

    return v0
.end method

.method public setAasLength(I)V
    .registers 2
    .param p1, "value"    # I

    .line 479
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasLength:I

    .line 480
    return-void
.end method

.method public setAasTotal(I)V
    .registers 2
    .param p1, "value"    # I

    .line 487
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasTotal:I

    .line 488
    return-void
.end method

.method public setAasType(I)V
    .registers 2
    .param p1, "value"    # I

    .line 491
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasType:I

    .line 492
    return-void
.end method

.method public setAasUsed(I)V
    .registers 2
    .param p1, "value"    # I

    .line 483
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasUsed:I

    .line 484
    return-void
.end method

.method public setAdnLength(I)V
    .registers 2
    .param p1, "value"    # I

    .line 415
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnLength:I

    .line 416
    return-void
.end method

.method public setAdnTotal(I)V
    .registers 2
    .param p1, "value"    # I

    .line 423
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnTotal:I

    .line 424
    return-void
.end method

.method public setAdnType(I)V
    .registers 2
    .param p1, "value"    # I

    .line 427
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnType:I

    .line 428
    return-void
.end method

.method public setAdnUsed(I)V
    .registers 2
    .param p1, "value"    # I

    .line 419
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnUsed:I

    .line 420
    return-void
.end method

.method public setAnrLength(I)V
    .registers 2
    .param p1, "value"    # I

    .line 463
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrLength:I

    .line 464
    return-void
.end method

.method public setAnrTotal(I)V
    .registers 2
    .param p1, "value"    # I

    .line 471
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrTotal:I

    .line 472
    return-void
.end method

.method public setAnrType(I)V
    .registers 2
    .param p1, "value"    # I

    .line 475
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrType:I

    .line 476
    return-void
.end method

.method public setAnrUsed(I)V
    .registers 2
    .param p1, "value"    # I

    .line 467
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrUsed:I

    .line 468
    return-void
.end method

.method public setCcpLength(I)V
    .registers 2
    .param p1, "value"    # I

    .line 527
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpLength:I

    .line 528
    return-void
.end method

.method public setCcpTotal(I)V
    .registers 2
    .param p1, "value"    # I

    .line 535
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpTotal:I

    .line 536
    return-void
.end method

.method public setCcpType(I)V
    .registers 2
    .param p1, "value"    # I

    .line 539
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpType:I

    .line 540
    return-void
.end method

.method public setCcpUsed(I)V
    .registers 2
    .param p1, "value"    # I

    .line 531
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpUsed:I

    .line 532
    return-void
.end method

.method public setEmailLength(I)V
    .registers 2
    .param p1, "value"    # I

    .line 511
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailLength:I

    .line 512
    return-void
.end method

.method public setEmailTotal(I)V
    .registers 2
    .param p1, "value"    # I

    .line 519
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailTotal:I

    .line 520
    return-void
.end method

.method public setEmailType(I)V
    .registers 2
    .param p1, "value"    # I

    .line 523
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailType:I

    .line 524
    return-void
.end method

.method public setEmailUsed(I)V
    .registers 2
    .param p1, "value"    # I

    .line 515
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailUsed:I

    .line 516
    return-void
.end method

.method public setExt1Length(I)V
    .registers 2
    .param p1, "value"    # I

    .line 431
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Length:I

    .line 432
    return-void
.end method

.method public setExt1Total(I)V
    .registers 2
    .param p1, "value"    # I

    .line 439
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Total:I

    .line 440
    return-void
.end method

.method public setExt1Type(I)V
    .registers 2
    .param p1, "value"    # I

    .line 443
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Type:I

    .line 444
    return-void
.end method

.method public setExt1Used(I)V
    .registers 2
    .param p1, "value"    # I

    .line 435
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Used:I

    .line 436
    return-void
.end method

.method public setGasLength(I)V
    .registers 2
    .param p1, "value"    # I

    .line 447
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasLength:I

    .line 448
    return-void
.end method

.method public setGasTotal(I)V
    .registers 2
    .param p1, "value"    # I

    .line 455
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasTotal:I

    .line 456
    return-void
.end method

.method public setGasType(I)V
    .registers 2
    .param p1, "value"    # I

    .line 459
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasType:I

    .line 460
    return-void
.end method

.method public setGasUsed(I)V
    .registers 2
    .param p1, "value"    # I

    .line 451
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasUsed:I

    .line 452
    return-void
.end method

.method public setSliceIndex(I)V
    .registers 2
    .param p1, "value"    # I

    .line 411
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSliceIndex:I

    .line 412
    return-void
.end method

.method public setSneLength(I)V
    .registers 2
    .param p1, "value"    # I

    .line 495
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneLength:I

    .line 496
    return-void
.end method

.method public setSneTotal(I)V
    .registers 2
    .param p1, "value"    # I

    .line 503
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneTotal:I

    .line 504
    return-void
.end method

.method public setSneType(I)V
    .registers 2
    .param p1, "value"    # I

    .line 507
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneType:I

    .line 508
    return-void
.end method

.method public setSneUsed(I)V
    .registers 2
    .param p1, "value"    # I

    .line 499
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneUsed:I

    .line 500
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSliceIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSliceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAdnLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAdnUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnUsed:I

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAdnTotal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnTotal:I

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAdnType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnType:I

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mExt1Length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Length:I

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mExt1Used:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Used:I

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mExt1Total"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Total:I

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mExt1Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Type:I

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mGasLength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasLength:I

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mGasUsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasUsed:I

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mGasTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasTotal:I

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mGasType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasType:I

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAnrLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrLength:I

    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAnrUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrUsed:I

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAnrTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrTotal:I

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAnrType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrType:I

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEmailLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailLength:I

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEmailUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailUsed:I

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEmailTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailTotal:I

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEmailType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailType:I

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 175
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSliceIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAdnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Used:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mExt1Type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mGasType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAnrType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mAasType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mSneType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mEmailType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->mCcpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 213
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->writeToParcel(Landroid/os/Parcel;)V

    .line 214
    return-void
.end method

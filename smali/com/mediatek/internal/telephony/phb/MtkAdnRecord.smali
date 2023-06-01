.class public Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
.super Lcom/android/internal/telephony/uicc/AdnRecord;
.source "MtkAdnRecord.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "MtkAdnRecord"

.field private static final SIM_NUM_PATTERN:Ljava/lang/String; = "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"


# instance fields
.field mAas:I

.field mAdditionalNumber:Ljava/lang/String;

.field mAdditionalNumber2:Ljava/lang/String;

.field mAdditionalNumber3:Ljava/lang/String;

.field mGrpIds:Ljava/lang/String;

.field mResult:I

.field mSne:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .line 152
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 153
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;

    .line 160
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 161
    iput-object p5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 162
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;
    .param p6, "anr2"    # Ljava/lang/String;
    .param p7, "anr3"    # Ljava/lang/String;
    .param p8, "emails"    # [Ljava/lang/String;
    .param p9, "grps"    # Ljava/lang/String;

    .line 178
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 179
    iput-object p5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 180
    iput-object p6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 181
    iput-object p7, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 182
    iput-object p9, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;
    .param p6, "emails"    # [Ljava/lang/String;
    .param p7, "grps"    # Ljava/lang/String;

    .line 169
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 170
    iput-object p5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 173
    iput-object p7, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;

    .line 144
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 145
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(II[B)V
    .registers 6
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "record"    # [B

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "anr"    # Ljava/lang/String;

    .line 135
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 140
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "record"    # [B

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>([B)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 124
    return-void
.end method

.method private getMaskString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 249
    if-nez p1, :cond_5

    .line 250
    const-string v0, "null"

    return-object v0

    .line 251
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_29

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_29
    const-string v0, "xx"

    return-object v0
.end method

.method private isContainChineseChar(Ljava/lang/String;)Z
    .registers 7
    .param p1, "alphTag"    # Ljava/lang/String;

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "result":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 501
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_1b

    .line 502
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\u4e00-\u9fa5]"

    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 503
    const/4 v0, 0x1

    .line 504
    goto :goto_1b

    .line 501
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 508
    .end local v2    # "i":I
    :cond_1b
    :goto_1b
    return v0
.end method

.method private isPhoneNumberInvaild(Ljava/lang/String;)Z
    .registers 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "tempPhoneNumber":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 513
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    nop

    .line 516
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    const-string v2, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 517
    const/4 v1, 0x1

    return v1

    .line 520
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private parseRecord([B)V
    .registers 7
    .param p1, "record"    # [B

    .line 453
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    array-length v3, p1

    add-int/lit8 v3, v3, -0xe

    invoke-static {p1, v1, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 456
    array-length v1, p1

    add-int/lit8 v1, v1, -0xe

    .line 458
    .local v1, "footerOffset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    .line 460
    .local v3, "numberLength":I
    const/16 v4, 0xb

    if-le v3, v4, :cond_1b

    .line 462
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 463
    return-void

    .line 473
    :cond_1b
    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4, v3}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 477
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    .line 479
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    .line 480
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 481
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 482
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 483
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_36} :catch_37

    .line 494
    .end local v1    # "footerOffset":I
    .end local v3    # "numberLength":I
    goto :goto_4d

    .line 485
    :catch_37
    move-exception v1

    .line 486
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v3, "MtkAdnRecord"

    const-string v4, "Error parsing AdnRecordEx"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 488
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 489
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    .line 490
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 491
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    .line 492
    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    .line 493
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 495
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :goto_4d
    return-void
.end method


# virtual methods
.method public appendExtRecord([B)V
    .registers 6
    .param p1, "extRecord"    # [B

    .line 421
    :try_start_0
    array-length v0, p1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    .line 422
    return-void

    .line 425
    :cond_6
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 427
    return-void

    .line 430
    :cond_f
    const/4 v0, 0x1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa

    if-le v2, v3, :cond_19

    .line 432
    return-void

    .line 435
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {p1, v1, v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_34} :catch_35

    .line 442
    goto :goto_3d

    .line 440
    :catch_35
    move-exception v0

    .line 441
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MtkAdnRecord"

    const-string v2, "Error parsing AdnRecordEx ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_3d
    return-void
.end method

.method public buildAdnString(I)[B
    .registers 16
    .param p1, "recordSize"    # I

    .line 306
    const-string v0, "MtkAdnRecord"

    const-string v1, "in BuildAdnString"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    add-int/lit8 v1, p1, -0xe

    .line 311
    .local v1, "footerOffset":I
    const/4 v2, 0x0

    .line 314
    .local v2, "alphaIdLength":I
    new-array v3, p1, [B

    .line 315
    .local v3, "adnString":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    const/4 v5, -0x1

    if-ge v4, p1, :cond_15

    .line 316
    aput-byte v5, v3, v4

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 318
    .end local v4    # "i":I
    :cond_15
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->isPhoneNumberInvaild(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_28

    .line 319
    const-string v4, "[buildAdnString] invaild number"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v0, -0xf

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 321
    return-object v6

    .line 323
    :cond_28
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v7, "[buildAdnString] Max length of tag is "

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v4, :cond_3d

    .line 324
    const-string v4, "[buildAdnString] Empty dialing number"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput v10, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    goto :goto_90

    .line 327
    :cond_3d
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v11, 0x14

    if-le v4, v11, :cond_4f

    .line 329
    iput v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 330
    const-string v4, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-object v6

    .line 333
    :cond_4f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v4, :cond_70

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_70

    .line 334
    iput v8, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-object v6

    .line 339
    :cond_70
    iput v10, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 341
    :try_start_72
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_78
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_78} :catch_188

    .line 342
    .local v4, "bcdNumber":[B
    if-nez v4, :cond_7b

    return-object v6

    .line 347
    :cond_7b
    nop

    .line 348
    add-int/lit8 v11, v1, 0x1

    array-length v12, v4

    invoke-static {v4, v9, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    add-int/lit8 v11, v1, 0x0

    array-length v12, v4

    int-to-byte v12, v12

    aput-byte v12, v3, v11

    .line 353
    add-int/lit8 v11, v1, 0xc

    aput-byte v5, v3, v11

    .line 355
    add-int/lit8 v11, v1, 0xd

    aput-byte v5, v3, v11

    .line 359
    .end local v4    # "bcdNumber":[B
    :goto_90
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_164

    .line 360
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->isContainChineseChar(Ljava/lang/String;)Z

    move-result v4

    const-string v5, " adnString.length:"

    if-eqz v4, :cond_132

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[buildAdnString] getBytes,alphaTag:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :try_start_b8
    const-string v4, "call getBytes"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v11, "utf-16be"

    invoke-virtual {v4, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 365
    .local v4, "byteTag":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "byteTag,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b8 .. :try_end_dd} :catch_12b

    .line 369
    nop

    .line 370
    new-array v11, v10, [B

    .line 371
    .local v11, "header":[B
    const/16 v12, -0x80

    aput-byte v12, v11, v9

    .line 372
    invoke-static {v11, v9, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    array-length v12, v4

    array-length v13, v3

    sub-int/2addr v13, v10

    if-le v12, v13, :cond_10b

    .line 374
    iput v8, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] after getBytes byteTag.length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-object v6

    .line 379
    :cond_10b
    array-length v5, v4

    invoke-static {v4, v9, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    array-length v5, v4

    add-int/lit8 v2, v5, 0x1

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrarString"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v11    # "header":[B
    goto :goto_164

    .line 366
    .end local v4    # "byteTag":[B
    :catch_12b
    move-exception v4

    .line 367
    .local v4, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v5, "[buildAdnString] getBytes exception"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-object v6

    .line 383
    .end local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_132
    const-string v4, "[buildAdnString] stringToGsm8BitPacked"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v4

    .line 385
    .local v4, "byteTag":[B
    array-length v2, v4

    .line 386
    array-length v10, v3

    if-le v2, v10, :cond_160

    .line 387
    iput v8, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 388
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] after stringToGsm8BitPacked byteTag.length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v6

    .line 392
    :cond_160
    array-length v5, v4

    invoke-static {v4, v9, v3, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    .end local v4    # "byteTag":[B
    :cond_164
    :goto_164
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v4, :cond_187

    if-le v2, v1, :cond_187

    .line 397
    iput v8, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",alphaIdLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v6

    .line 403
    :cond_187
    return-object v3

    .line 343
    :catch_188
    move-exception v0

    .line 344
    .local v0, "exc":Ljava/lang/RuntimeException;
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_12:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 346
    .local v4, "cmdEx":Lcom/android/internal/telephony/CommandException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "invalid number for BCD "

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getAasIndex()I
    .registers 2

    .line 205
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    return v0
.end method

.method public getAdditionalNumber()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalNumber(I)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "number":Ljava/lang/String;
    if-nez p1, :cond_6

    .line 193
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    goto :goto_28

    .line 194
    :cond_6
    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    .line 195
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    goto :goto_28

    .line 196
    :cond_c
    const/4 v1, 0x2

    if-ne p1, v1, :cond_12

    .line 197
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    goto :goto_28

    .line 199
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdditionalNumber Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkAdnRecord"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_28
    return-object v0
.end method

.method public getErrorNumber()I
    .registers 2

    .line 413
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mResult:I

    return v0
.end method

.method public getGrpIds()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    return-object v0
.end method

.method public getSne()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 270
    :goto_1f
    return v0
.end method

.method public isEqual(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z
    .registers 4
    .param p1, "adn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 275
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 276
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 275
    :goto_17
    return v0
.end method

.method public setAasIndex(I)V
    .registers 2
    .param p1, "aas"    # I

    .line 233
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    .line 234
    return-void
.end method

.method public setAnr(Ljava/lang/String;)V
    .registers 2
    .param p1, "anr"    # Ljava/lang/String;

    .line 217
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setAnr(Ljava/lang/String;I)V
    .registers 5
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 221
    if-nez p2, :cond_5

    .line 222
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    goto :goto_27

    .line 223
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    .line 224
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    goto :goto_27

    .line 225
    :cond_b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_11

    .line 226
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    goto :goto_27

    .line 228
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnr Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAdnRecord"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_27
    return-void
.end method

.method public setGrpIds(Ljava/lang/String;)V
    .registers 2
    .param p1, "grps"    # Ljava/lang/String;

    .line 241
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setRecordIndex(I)V
    .registers 2
    .param p1, "nIndex"    # I

    .line 245
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mRecordNumber:I

    .line 246
    return-void
.end method

.method public setSne(Ljava/lang/String;)V
    .registers 2
    .param p1, "sne"    # Ljava/lang/String;

    .line 237
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",alphaTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 261
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 262
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",emails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v1, :cond_41

    const-string v1, "null"

    goto :goto_4a

    :cond_41
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",grpIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",sne:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 284
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAdditionalNumber3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mGrpIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.class public Lcom/mediatek/gnssdebugreport/DebugDataReport;
.super Ljava/lang/Object;
.source "DebugDataReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gnssdebugreport/DebugDataReport$DebugDataAgpsSessionInfo;,
        Lcom/mediatek/gnssdebugreport/DebugDataReport$DebugData843;,
        Lcom/mediatek/gnssdebugreport/DebugDataReport$DebugData842;,
        Lcom/mediatek/gnssdebugreport/DebugDataReport$DebugData841;,
        Lcom/mediatek/gnssdebugreport/DebugDataReport$DebugData840;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/gnssdebugreport/DebugDataReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_KEY:Ljava/lang/String; = "DebugDataReport"

.field public static final DATA_KEY_TYPE1:Ljava/lang/String; = "data_type1"

.field public static final JSON_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mCB:D

.field private mClkTemp:D

.field private mCompCB:D

.field private mEPOage:I

.field private mHaveEPO:I

.field private mInitLlhHeight:D

.field private mInitLlhLati:D

.field private mInitLlhLongi:D

.field private mInitPacc:F

.field private mInitSrc:I

.field private mLsvalid:I

.field private mMPEvalid:I

.field private mPga:I

.field private mSaturation:I

.field private mSensorHACC:F

.field private mSvnum:I

.field private mTT4SV:J

.field private mTop4CNR:F

.field private mTtff:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 184
    new-instance v0, Lcom/mediatek/gnssdebugreport/DebugDataReport$1;

    invoke-direct {v0}, Lcom/mediatek/gnssdebugreport/DebugDataReport$1;-><init>()V

    sput-object v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDDIIJIJFDDDIFIIFII)V
    .registers 44
    .param p1, "CB"    # D
    .param p3, "CompCB"    # D
    .param p5, "ClkTemp"    # D
    .param p7, "Saturation"    # I
    .param p8, "Pga"    # I
    .param p9, "Ttff"    # J
    .param p11, "Svnum"    # I
    .param p12, "TT4SV"    # J
    .param p14, "Top4CNR"    # F
    .param p15, "InitLlhLongi"    # D
    .param p17, "InitLlhLati"    # D
    .param p19, "InitLlhHeight"    # D
    .param p21, "InitSrc"    # I
    .param p22, "InitPacc"    # F
    .param p23, "HaveEPO"    # I
    .param p24, "EPOage"    # I
    .param p25, "SensorHACC"    # F
    .param p26, "MPEvalid"    # I
    .param p27, "Lsvalid"    # I

    .line 33
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mCB:D

    .line 36
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mCompCB:D

    .line 37
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mClkTemp:D

    .line 38
    move/from16 v7, p7

    iput v7, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSaturation:I

    .line 39
    move/from16 v8, p8

    iput v8, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mPga:I

    .line 40
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTtff:J

    .line 41
    move/from16 v11, p11

    iput v11, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSvnum:I

    .line 42
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTT4SV:J

    .line 43
    move/from16 v14, p14

    iput v14, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTop4CNR:F

    .line 44
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhLongi:D

    .line 45
    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhLati:D

    .line 46
    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhHeight:D

    .line 47
    move/from16 v15, p21

    iput v15, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitSrc:I

    .line 48
    move/from16 v1, p22

    iput v1, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitPacc:F

    .line 49
    move/from16 v2, p23

    iput v2, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mHaveEPO:I

    .line 50
    move/from16 v1, p24

    iput v1, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mEPOage:I

    .line 51
    move/from16 v1, p25

    iput v1, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSensorHACC:F

    .line 52
    move/from16 v1, p26

    iput v1, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mMPEvalid:I

    .line 53
    move/from16 v1, p27

    iput v1, v0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mLsvalid:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mCB:D

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mCompCB:D

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mClkTemp:D

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSaturation:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mPga:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTtff:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSvnum:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTT4SV:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTop4CNR:F

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhLongi:D

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhLati:D

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhHeight:D

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitSrc:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitPacc:F

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mHaveEPO:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mEPOage:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSensorHACC:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mMPEvalid:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mLsvalid:I

    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getCB()D
    .registers 3

    .line 79
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mCB:D

    return-wide v0
.end method

.method public getClkTemp()D
    .registers 3

    .line 87
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mClkTemp:D

    return-wide v0
.end method

.method public getEPOage()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mEPOage:I

    return v0
.end method

.method public getHaveEPO()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mHaveEPO:I

    return v0
.end method

.method public getInitLlhHeight()D
    .registers 3

    .line 123
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhHeight:D

    return-wide v0
.end method

.method public getInitLlhLati()D
    .registers 3

    .line 119
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhLati:D

    return-wide v0
.end method

.method public getInitLlhLongi()D
    .registers 3

    .line 115
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhLongi:D

    return-wide v0
.end method

.method public getInitPacc()F
    .registers 2

    .line 131
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitPacc:F

    return v0
.end method

.method public getInitSrc()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitSrc:I

    return v0
.end method

.method public getLsvalid()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mLsvalid:I

    return v0
.end method

.method public getMPEvalid()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mMPEvalid:I

    return v0
.end method

.method public getPga()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mPga:I

    return v0
.end method

.method public getSaturation()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSaturation:I

    return v0
.end method

.method public getSensorHACC()F
    .registers 2

    .line 143
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSensorHACC:F

    return v0
.end method

.method public getSvnum()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSvnum:I

    return v0
.end method

.method public getTT4SV()J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTT4SV:J

    return-wide v0
.end method

.method public getTop4CNR()F
    .registers 2

    .line 111
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTop4CNR:F

    return v0
.end method

.method public getTtff()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTtff:J

    return-wide v0
.end method

.method public getmCompCB()D
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mCompCB:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mCB:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-wide v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mCompCB:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-wide v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mClkTemp:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSaturation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mPga:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-wide v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTtff:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSvnum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-wide v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTT4SV:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTop4CNR:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-wide v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhLongi:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-wide v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhLati:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-wide v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhHeight:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitSrc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitPacc:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mHaveEPO:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mEPOage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSensorHACC:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget v2, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mMPEvalid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget v1, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mLsvalid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 163
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mCB:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 164
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mCompCB:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 165
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mClkTemp:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 166
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSaturation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mPga:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTtff:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSvnum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTT4SV:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mTop4CNR:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 172
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhLongi:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 173
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhLati:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 174
    iget-wide v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitLlhHeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 175
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitSrc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mInitPacc:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 177
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mHaveEPO:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mEPOage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mSensorHACC:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 180
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mMPEvalid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/mediatek/gnssdebugreport/DebugDataReport;->mLsvalid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return-void
.end method

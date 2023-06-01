.class public Lmediatek/telephony/MtkSignalStrength;
.super Landroid/telephony/SignalStrength;
.source "MtkSignalStrength.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MtkSignalStrength"

.field public static final PROPERTY_OPERATOR_OPTR:Ljava/lang/String; = "persist.vendor.operator.optr"

.field private static mOpId:Ljava/lang/String;

.field private static mSignalStrengthExt:Lmediatek/telephony/ISignalStrengthExt;


# instance fields
.field private mMtkLevel:I

.field private mMtkLteRsrpThreshold:[I

.field private mMtkLteRssnrThreshold:[I

.field private mMtkRsrpOnly:Z

.field protected mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lmediatek/telephony/MtkSignalStrength;->mSignalStrengthExt:Lmediatek/telephony/ISignalStrengthExt;

    .line 83
    sput-object v0, Lmediatek/telephony/MtkSignalStrength;->mOpId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "phoneId"    # I

    .line 92
    invoke-direct {p0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 85
    iput-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 87
    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 93
    iput p1, p0, Lmediatek/telephony/MtkSignalStrength;->mPhoneId:I

    .line 94
    return-void
.end method

.method public constructor <init>(ILandroid/telephony/SignalStrength;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "s"    # Landroid/telephony/SignalStrength;

    .line 103
    invoke-direct {p0, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 85
    iput-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 87
    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 104
    iput p1, p0, Lmediatek/telephony/MtkSignalStrength;->mPhoneId:I

    .line 105
    instance-of v0, p2, Lmediatek/telephony/MtkSignalStrength;

    if-eqz v0, :cond_31

    .line 106
    move-object v0, p2

    check-cast v0, Lmediatek/telephony/MtkSignalStrength;

    .line 107
    .local v0, "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    invoke-virtual {v0}, Lmediatek/telephony/MtkSignalStrength;->getMtkLevel()I

    move-result v1

    iput v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 108
    invoke-virtual {v0}, Lmediatek/telephony/MtkSignalStrength;->isMtkRsrpOnly()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmediatek/telephony/MtkSignalStrength;->setMtkRsrpOnly(Z)V

    .line 109
    invoke-virtual {v0}, Lmediatek/telephony/MtkSignalStrength;->getMtkLteRsrpThreshold()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRsrpThreshold([I)V

    .line 110
    invoke-virtual {v0}, Lmediatek/telephony/MtkSignalStrength;->getMtkLteRssnrThreshold()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRssnrThreshold([I)V

    .line 112
    .end local v0    # "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    :cond_31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/os/Parcel;)V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 85
    iput-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 87
    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmediatek/telephony/MtkSignalStrength;->mPhoneId:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, "size":I
    if-lez v1, :cond_2d

    .line 128
    new-array v2, v1, [I

    iput-object v2, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 129
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_2f

    .line 131
    :cond_2d
    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 133
    :goto_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    if-lez v1, :cond_3d

    .line 135
    new-array v0, v1, [I

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_3f

    .line 138
    :cond_3d
    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 140
    :goto_3f
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 163
    const-string v0, "MtkSignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method private updateMtkLteLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 15
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 261
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    if-eqz v0, :cond_101

    iget-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    if-nez v0, :cond_e

    goto/16 :goto_101

    .line 265
    :cond_e
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 266
    .local v0, "rsrpThresholds":[I
    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 267
    .local v1, "rssnrThresholds":[I
    iget-boolean v2, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 269
    .local v2, "rsrpOnly":Z
    const/4 v3, 0x0

    .line 270
    .local v3, "rsrpBoost":I
    if-eqz p2, :cond_1b

    .line 271
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getArfcnRsrpBoost()I

    move-result v3

    .line 274
    :cond_1b
    const/4 v4, 0x0

    .line 275
    .local v4, "rssiIconLevel":I
    const/4 v5, 0x0

    .line 276
    .local v5, "rsrpIconLevel":I
    const/4 v6, -0x1

    .line 278
    .local v6, "snrIconLevel":I
    iget-object v7, p0, Lmediatek/telephony/MtkSignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v7

    add-int/2addr v7, v3

    .line 280
    .local v7, "rsrp":I
    const/16 v8, -0x8c

    if-lt v7, v8, :cond_3a

    const/16 v8, -0x2c

    if-le v7, v8, :cond_2e

    goto :goto_3a

    .line 283
    :cond_2e
    array-length v5, v0

    .line 284
    :goto_2f
    if-lez v5, :cond_3b

    add-int/lit8 v8, v5, -0x1

    aget v8, v0, v8

    if-ge v7, v8, :cond_3b

    add-int/lit8 v5, v5, -0x1

    goto :goto_2f

    .line 281
    :cond_3a
    :goto_3a
    const/4 v5, -0x1

    .line 287
    :cond_3b
    const/4 v8, -0x1

    if-eqz v2, :cond_57

    .line 288
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLevel() - rsrp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmediatek/telephony/MtkSignalStrength;->log(Ljava/lang/String;)V

    .line 289
    if-eq v5, v8, :cond_57

    .line 290
    iput v5, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 291
    return-void

    .line 301
    :cond_57
    iget-object v9, p0, Lmediatek/telephony/MtkSignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result v9

    .line 302
    .local v9, "rssnr":I
    const/16 v10, 0x12c

    if-le v9, v10, :cond_63

    .line 303
    const/4 v6, -0x1

    goto :goto_73

    .line 305
    :cond_63
    iget-object v10, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    array-length v6, v10

    .line 306
    :goto_66
    if-lez v6, :cond_73

    iget-object v10, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    add-int/lit8 v11, v6, -0x1

    aget v10, v10, v11

    if-ge v9, v10, :cond_73

    .line 307
    add-int/lit8 v6, v6, -0x1

    goto :goto_66

    .line 310
    :cond_73
    :goto_73
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateLevel() - rsrp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " snr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rsrpIconLevel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " snrIconLevel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " lteRsrpBoost:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmediatek/telephony/MtkSignalStrength;->log(Ljava/lang/String;)V

    .line 315
    if-eq v6, v8, :cond_b3

    if-eq v5, v8, :cond_b3

    .line 321
    if-ge v5, v6, :cond_af

    move v8, v5

    goto :goto_b0

    :cond_af
    move v8, v6

    :goto_b0
    iput v8, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 322
    return-void

    .line 325
    :cond_b3
    if-eq v6, v8, :cond_b8

    .line 326
    iput v6, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 327
    return-void

    .line 330
    :cond_b8
    if-eq v5, v8, :cond_bd

    .line 331
    iput v5, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 332
    return-void

    .line 335
    :cond_bd
    iget-object v8, p0, Lmediatek/telephony/MtkSignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthLte;->getRssi()I

    move-result v8

    .line 336
    .local v8, "rssi":I
    const/16 v10, -0x33

    if-le v8, v10, :cond_c9

    const/4 v4, 0x0

    goto :goto_e2

    .line 337
    :cond_c9
    const/16 v10, -0x59

    if-lt v8, v10, :cond_cf

    const/4 v4, 0x4

    goto :goto_e2

    .line 338
    :cond_cf
    const/16 v10, -0x61

    if-lt v8, v10, :cond_d5

    const/4 v4, 0x3

    goto :goto_e2

    .line 339
    :cond_d5
    const/16 v10, -0x67

    if-lt v8, v10, :cond_db

    const/4 v4, 0x2

    goto :goto_e2

    .line 340
    :cond_db
    const/16 v10, -0x71

    if-lt v8, v10, :cond_e1

    const/4 v4, 0x1

    goto :goto_e2

    .line 341
    :cond_e1
    const/4 v4, 0x0

    .line 342
    :goto_e2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLteLevel - rssi:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rssiIconLevel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmediatek/telephony/MtkSignalStrength;->log(Ljava/lang/String;)V

    .line 344
    iput v4, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 345
    return-void

    .line 263
    .end local v0    # "rsrpThresholds":[I
    .end local v1    # "rssnrThresholds":[I
    .end local v2    # "rsrpOnly":Z
    .end local v3    # "rsrpBoost":I
    .end local v4    # "rssiIconLevel":I
    .end local v5    # "rsrpIconLevel":I
    .end local v6    # "snrIconLevel":I
    .end local v7    # "rsrp":I
    .end local v8    # "rssi":I
    .end local v9    # "rssnr":I
    :cond_101
    :goto_101
    return-void
.end method

.method private useMtkLevel()Z
    .registers 2

    .line 182
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    if-nez v0, :cond_10

    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    if-eqz v0, :cond_12

    .line 184
    :cond_10
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_12
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getLevel()I
    .registers 3

    .line 190
    invoke-direct {p0}, Lmediatek/telephony/MtkSignalStrength;->useMtkLevel()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 191
    iget v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    if-ltz v0, :cond_f

    const/4 v1, 0x4

    if-le v0, v1, :cond_e

    goto :goto_f

    .line 195
    :cond_e
    return v0

    .line 192
    :cond_f
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useMtkLevel Invalid Level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmediatek/telephony/MtkSignalStrength;->log(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_2f
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    return v0
.end method

.method public getLteLevel()I
    .registers 2

    .line 207
    invoke-direct {p0}, Lmediatek/telephony/MtkSignalStrength;->useMtkLevel()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    return v0

    .line 208
    :cond_9
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v0

    return v0
.end method

.method public getMtkLevel()I
    .registers 2

    .line 245
    iget v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    return v0
.end method

.method public getMtkLteRsrpThreshold()[I
    .registers 2

    .line 220
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    return-object v0
.end method

.method public getMtkLteRssnrThreshold()[I
    .registers 2

    .line 233
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    return-object v0
.end method

.method public getNrLevel()I
    .registers 2

    .line 253
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->getLevel()I

    move-result v0

    return v0
.end method

.method public isMtkRsrpOnly()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    return v0
.end method

.method public setMtkLteRsrpThreshold([I)V
    .registers 5
    .param p1, "threshold"    # [I

    .line 224
    if-nez p1, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    goto :goto_18

    .line 226
    :cond_6
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 228
    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 230
    .end local v0    # "i":I
    :cond_18
    :goto_18
    return-void
.end method

.method public setMtkLteRssnrThreshold([I)V
    .registers 5
    .param p1, "threshold"    # [I

    .line 236
    if-nez p1, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    goto :goto_18

    .line 238
    :cond_6
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 240
    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 242
    .end local v0    # "i":I
    :cond_18
    :goto_18
    return-void
.end method

.method public setMtkRsrpOnly(Z)V
    .registers 2
    .param p1, "a"    # Z

    .line 216
    iput-boolean p1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmediatek/telephony/MtkSignalStrength;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", mMtkLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", mMtkRsrpOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, ", mMtkLteRsrpThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ", mMtkLteRssnrThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public updateMtkLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 3
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 249
    invoke-direct {p0, p1, p2}, Lmediatek/telephony/MtkSignalStrength;->updateMtkLteLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 250
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    invoke-super {p0, p1, p2}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    iget v0, p0, Lmediatek/telephony/MtkSignalStrength;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 151
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    const/4 v1, 0x0

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    array-length v0, v0

    .line 152
    .local v0, "size":I
    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    if-lez v0, :cond_24

    iget-object v2, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    :cond_24
    iget-object v2, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    if-nez v2, :cond_29

    goto :goto_2a

    :cond_29
    array-length v1, v2

    :goto_2a
    move v0, v1

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    if-lez v0, :cond_35

    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    :cond_35
    return-void
.end method

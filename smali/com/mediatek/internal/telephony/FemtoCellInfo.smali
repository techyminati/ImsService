.class public Lcom/mediatek/internal/telephony/FemtoCellInfo;
.super Ljava/lang/Object;
.source "FemtoCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/FemtoCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CSG_ICON_TYPE_ALLOWED:I = 0x1

.field public static final CSG_ICON_TYPE_NOT_ALLOWED:I = 0x0

.field public static final CSG_ICON_TYPE_OPERATOR:I = 0x2

.field public static final CSG_ICON_TYPE_OPERATOR_UNAUTHORIZED:I = 0x3

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field public static final STATE_CONNECTED:I = 0x0

.field public static final STATE_DISCONNECTED:I = 0x1


# instance fields
.field private con:Z

.field private csgIconType:I

.field private csgId:I

.field private homeNodeBName:Ljava/lang/String;

.field private operatorAlphaLong:Ljava/lang/String;

.field private operatorNumeric:Ljava/lang/String;

.field private rat:I

.field private sig:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 226
    new-instance v0, Lcom/mediatek/internal/telephony/FemtoCellInfo$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/FemtoCellInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V
    .registers 10
    .param p1, "csgId"    # I
    .param p2, "csgIconType"    # I
    .param p3, "homeNodeBName"    # Ljava/lang/String;
    .param p4, "operatorNumeric"    # Ljava/lang/String;
    .param p5, "operatorAlphaLong"    # Ljava/lang/String;
    .param p6, "rat"    # I
    .param p7, "con"    # Z
    .param p8, "sig"    # I

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->rat:I

    .line 62
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->con:Z

    .line 166
    iput p1, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgId:I

    .line 167
    iput p2, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgIconType:I

    .line 168
    iput-object p3, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->homeNodeBName:Ljava/lang/String;

    .line 169
    iput-object p4, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorNumeric:Ljava/lang/String;

    .line 170
    iput-object p5, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 171
    iput p6, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->rat:I

    .line 172
    iput-boolean p7, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->con:Z

    .line 173
    iput p8, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->sig:I

    .line 174
    return-void
.end method

.method private updateLevel()I
    .registers 15

    .line 135
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->rat:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_40

    .line 136
    new-instance v0, Landroid/telephony/SignalStrength;

    new-instance v3, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v3}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    new-instance v4, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    new-instance v5, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v5}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    new-instance v6, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    new-instance v1, Landroid/telephony/CellSignalStrengthLte;

    const/16 v8, 0x63

    iget v9, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->sig:I

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIII)V

    new-instance v8, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v8}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    .line 142
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    return v1

    .line 143
    .end local v0    # "ss":Landroid/telephony/SignalStrength;
    :cond_40
    const/4 v1, 0x3

    if-ne v0, v1, :cond_71

    .line 144
    new-instance v0, Landroid/telephony/SignalStrength;

    new-instance v3, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v3}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    new-instance v4, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    new-instance v5, Landroid/telephony/CellSignalStrengthWcdma;

    iget v1, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->sig:I

    const v2, 0x7fffffff

    invoke-direct {v5, v1, v2, v2, v2}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(IIII)V

    new-instance v6, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    new-instance v7, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v7}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    new-instance v8, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v8}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    .line 150
    .restart local v0    # "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    return v1

    .line 152
    .end local v0    # "ss":Landroid/telephony/SignalStrength;
    :cond_71
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionState()I
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->con:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 119
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public getCsgIconType()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgIconType:I

    return v0
.end method

.method public getCsgId()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgId:I

    return v0
.end method

.method public getCsgRat()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->rat:I

    return v0
.end method

.method public getHomeNodeBName()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->homeNodeBName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalLevel()I
    .registers 2

    .line 127
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->updateLevel()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FemtoCellInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgIconType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->homeNodeBName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->rat:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->con:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->sig:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getSignalLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 212
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgIconType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->homeNodeBName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->rat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->con:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->sig:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    return-void
.end method

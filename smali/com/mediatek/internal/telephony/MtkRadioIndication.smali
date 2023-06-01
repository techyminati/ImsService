.class public Lcom/mediatek/internal/telephony/MtkRadioIndication;
.super Lcom/android/internal/telephony/RadioIndication;
.source "MtkRadioIndication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkRadioInd"


# instance fields
.field private mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 69
    return-void
.end method

.method private getSubId(I)I
    .registers 5
    .param p1, "phoneId"    # I

    .line 110
    const/4 v0, -0x1

    .line 111
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 112
    .local v1, "subIds":[I
    if-eqz v1, :cond_d

    array-length v2, v1

    if-lez v2, :cond_d

    .line 113
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 115
    :cond_d
    return v0
.end method


# virtual methods
.method public networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V
    .registers 14
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_2/NetworkScanResult;

    .line 121
    const/4 v0, 0x1

    .line 123
    .local v0, "showRat":Z
    iget-object v1, p2, Landroid/hardware/radio/V1_2/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 126
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c7

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_2/CellInfo;

    .line 129
    .local v3, "record":Landroid/hardware/radio/V1_2/CellInfo;
    iget v4, v3, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_1cc

    .line 196
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected cellinfotype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    :pswitch_34
    iget-object v4, v3, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    .line 177
    .local v4, "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    iget-object v7, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    .line 180
    .local v7, "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 182
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 181
    invoke-virtual {v9, v10, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 183
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 185
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 184
    invoke-virtual {v8, v9, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 186
    if-eqz v0, :cond_1a4

    .line 187
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 188
    const-string v8, " 3G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 189
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 190
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_1a4

    .line 156
    .end local v4    # "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    .end local v7    # "nLac":I
    :pswitch_af
    iget-object v4, v3, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/CellInfoLte;

    .line 157
    .local v4, "cellInfoLte":Landroid/hardware/radio/V1_2/CellInfoLte;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    iget-object v7, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    .line 160
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 162
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 161
    invoke-virtual {v9, v10, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 163
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 165
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 164
    invoke-virtual {v8, v9, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 166
    if-eqz v0, :cond_1a4

    .line 167
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 168
    const-string v8, " 4G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 169
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 170
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_1a4

    .line 152
    .end local v4    # "cellInfoLte":Landroid/hardware/radio/V1_2/CellInfoLte;
    .end local v7    # "nLac":I
    :pswitch_12a
    goto :goto_1a4

    .line 131
    :pswitch_12b
    iget-object v4, v3, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/CellInfoGsm;

    .line 132
    .local v4, "cellInfoGsm":Landroid/hardware/radio/V1_2/CellInfoGsm;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    iget-object v7, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    .line 135
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 137
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 136
    invoke-virtual {v9, v10, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 138
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 140
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 139
    invoke-virtual {v8, v9, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 141
    if-eqz v0, :cond_1a4

    .line 142
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 143
    const-string v8, " 2G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 144
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 145
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 198
    .end local v4    # "cellInfoGsm":Landroid/hardware/radio/V1_2/CellInfoGsm;
    .end local v7    # "nLac":I
    :cond_1a4
    :goto_1a4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->hidePLMN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c5

    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 200
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove this one "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 202
    .end local v3    # "record":Landroid/hardware/radio/V1_2/CellInfo;
    :cond_1c5
    goto/16 :goto_7

    .line 203
    .end local v2    # "mccmnc":Ljava/lang/String;
    :cond_1c7
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 204
    return-void

    nop

    :pswitch_data_1cc
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_12a
        :pswitch_af
        :pswitch_34
    .end packed-switch
.end method

.method public networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V
    .registers 14
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_4/NetworkScanResult;

    .line 209
    const/4 v0, 0x1

    .line 211
    .local v0, "showRat":Z
    iget-object v1, p2, Landroid/hardware/radio/V1_4/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 214
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/V1_4/CellInfo;>;"
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_4/CellInfo;

    .line 217
    .local v3, "record":Landroid/hardware/radio/V1_4/CellInfo;
    iget-object v4, v3, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_4/CellInfo$Info;->getDiscriminator()B

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_1de

    .line 284
    :pswitch_1f
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected cellinfotype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    .line 285
    invoke-virtual {v6}, Landroid/hardware/radio/V1_4/CellInfo$Info;->getDiscriminator()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    :pswitch_3c
    iget-object v4, v3, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_4/CellInfo$Info;->lte()Landroid/hardware/radio/V1_4/CellInfoLte;

    move-result-object v4

    .line 245
    .local v4, "cellInfoLte":Landroid/hardware/radio/V1_4/CellInfoLte;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    iget-object v7, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    .line 248
    .local v7, "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 250
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 249
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 251
    iget-object v6, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 253
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 252
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 254
    if-eqz v0, :cond_1b7

    .line 255
    iget-object v5, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 256
    const-string v8, " 4G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 257
    iget-object v5, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 258
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_1b7

    .line 264
    .end local v4    # "cellInfoLte":Landroid/hardware/radio/V1_4/CellInfoLte;
    .end local v7    # "nLac":I
    :pswitch_c7
    iget-object v4, v3, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_4/CellInfo$Info;->wcdma()Landroid/hardware/radio/V1_2/CellInfoWcdma;

    move-result-object v4

    .line 265
    .local v4, "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    iget-object v7, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    .line 268
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 270
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 269
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 271
    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 273
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 272
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 274
    if-eqz v0, :cond_1b7

    .line 275
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 276
    const-string v8, " 3G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 277
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 278
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto :goto_1b7

    .line 240
    .end local v4    # "cellInfoWcdma":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    .end local v7    # "nLac":I
    :pswitch_13f
    goto :goto_1b7

    .line 219
    :pswitch_140
    iget-object v4, v3, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_4/CellInfo$Info;->gsm()Landroid/hardware/radio/V1_2/CellInfoGsm;

    move-result-object v4

    .line 220
    .local v4, "cellInfoGsm":Landroid/hardware/radio/V1_2/CellInfoGsm;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    iget-object v7, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    .line 223
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 225
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 224
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 226
    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 228
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 227
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 229
    if-eqz v0, :cond_1b7

    .line 230
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 231
    const-string v8, " 2G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 232
    iget-object v5, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 233
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 287
    .end local v4    # "cellInfoGsm":Landroid/hardware/radio/V1_2/CellInfoGsm;
    .end local v7    # "nLac":I
    :cond_1b7
    :goto_1b7
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->hidePLMN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d8

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 289
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove this one "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 291
    .end local v3    # "record":Landroid/hardware/radio/V1_4/CellInfo;
    :cond_1d8
    goto/16 :goto_7

    .line 292
    .end local v2    # "mccmnc":Ljava/lang/String;
    :cond_1da
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V

    .line 293
    return-void

    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_140
        :pswitch_13f
        :pswitch_c7
        :pswitch_1f
        :pswitch_3c
    .end packed-switch
.end method

.method public networkScanResult_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V
    .registers 14
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_5/NetworkScanResult;

    .line 298
    const/4 v0, 0x1

    .line 300
    .local v0, "showRat":Z
    iget-object v1, p2, Landroid/hardware/radio/V1_5/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 302
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/V1_5/CellInfo;>;"
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_285

    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_5/CellInfo;

    .line 305
    .local v3, "record":Landroid/hardware/radio/V1_5/CellInfo;
    iget-object v4, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_28a

    .line 392
    :pswitch_1f
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected cellinfotype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    .line 393
    invoke-virtual {v6}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    :pswitch_3c
    goto/16 :goto_262

    .line 372
    :pswitch_3e
    iget-object v4, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_5/CellInfoNr;

    move-result-object v4

    .line 373
    .local v4, "cellInfoNr":Landroid/hardware/radio/V1_5/CellInfoNr;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    iget-object v7, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget v7, v7, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    .line 376
    .local v7, "nTac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 378
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 377
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 379
    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 381
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 380
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 382
    if-eqz v0, :cond_262

    .line 383
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 384
    const-string v8, " 5G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 385
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 386
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_262

    .line 332
    .end local v4    # "cellInfoNr":Landroid/hardware/radio/V1_5/CellInfoNr;
    .end local v7    # "nTac":I
    :pswitch_c3
    iget-object v4, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_5/CellInfoLte;

    move-result-object v4

    .line 333
    .local v4, "cellInfoLte":Landroid/hardware/radio/V1_5/CellInfoLte;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    iget-object v7, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    .line 336
    .local v7, "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 338
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 337
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 339
    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 341
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 340
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 342
    if-eqz v0, :cond_262

    .line 343
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 344
    const-string v8, " 4G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 345
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 346
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_262

    .line 352
    .end local v4    # "cellInfoLte":Landroid/hardware/radio/V1_5/CellInfoLte;
    .end local v7    # "nLac":I
    :pswitch_14e
    iget-object v4, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v4

    .line 353
    .local v4, "cellInfoWcdma":Landroid/hardware/radio/V1_5/CellInfoWcdma;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    iget-object v7, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    .line 356
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 358
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 357
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 359
    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 361
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 360
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 362
    if-eqz v0, :cond_262

    .line 363
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 364
    const-string v8, " 3G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 365
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 366
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_262

    .line 307
    .end local v4    # "cellInfoWcdma":Landroid/hardware/radio/V1_5/CellInfoWcdma;
    .end local v7    # "nLac":I
    :pswitch_1d9
    iget-object v4, v3, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v4

    .line 308
    .local v4, "cellInfoGsm":Landroid/hardware/radio/V1_5/CellInfoGsm;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    iget-object v7, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    .line 311
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 313
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 312
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 314
    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 316
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 315
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 317
    if-eqz v0, :cond_262

    .line 318
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 319
    const-string v8, " 2G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 320
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 321
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 395
    .end local v4    # "cellInfoGsm":Landroid/hardware/radio/V1_5/CellInfoGsm;
    .end local v7    # "nLac":I
    :cond_262
    :goto_262
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->hidePLMN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_283

    .line 396
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 397
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove this one "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 399
    .end local v3    # "record":Landroid/hardware/radio/V1_5/CellInfo;
    :cond_283
    goto/16 :goto_7

    .line 400
    .end local v2    # "mccmnc":Ljava/lang/String;
    :cond_285
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->networkScanResult_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V

    .line 401
    return-void

    nop

    :pswitch_data_28a
    .packed-switch 0x0
        :pswitch_1d9
        :pswitch_14e
        :pswitch_1f
        :pswitch_c3
        :pswitch_3e
        :pswitch_3c
    .end packed-switch
.end method

.method public networkScanResult_1_6(ILandroid/hardware/radio/V1_6/NetworkScanResult;)V
    .registers 14
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_6/NetworkScanResult;

    .line 406
    const/4 v0, 0x1

    .line 408
    .local v0, "showRat":Z
    iget-object v1, p2, Landroid/hardware/radio/V1_6/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 410
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/V1_6/CellInfo;>;"
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_285

    .line 411
    const/4 v2, 0x0

    .line 412
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_6/CellInfo;

    .line 413
    .local v3, "record":Landroid/hardware/radio/V1_6/CellInfo;
    iget-object v4, v3, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_28a

    .line 500
    :pswitch_1f
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected cellinfotype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    .line 501
    invoke-virtual {v6}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 436
    :pswitch_3c
    goto/16 :goto_262

    .line 480
    :pswitch_3e
    iget-object v4, v3, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_6/CellInfoNr;

    move-result-object v4

    .line 481
    .local v4, "cellInfoNr":Landroid/hardware/radio/V1_6/CellInfoNr;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    iget-object v7, v4, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget v7, v7, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    .line 484
    .local v7, "nTac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v8, v8, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 486
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 485
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 487
    iget-object v6, v4, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 489
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 488
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 490
    if-eqz v0, :cond_262

    .line 491
    iget-object v5, v4, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 492
    const-string v8, " 5G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 493
    iget-object v5, v4, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v5, v5, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v6, v6, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 494
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_262

    .line 440
    .end local v4    # "cellInfoNr":Landroid/hardware/radio/V1_6/CellInfoNr;
    .end local v7    # "nTac":I
    :pswitch_c3
    iget-object v4, v3, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_6/CellInfoLte;

    move-result-object v4

    .line 441
    .local v4, "cellInfoLte":Landroid/hardware/radio/V1_6/CellInfoLte;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    iget-object v7, v4, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    .line 444
    .local v7, "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 446
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 445
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 447
    iget-object v6, v4, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 449
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 448
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 450
    if-eqz v0, :cond_262

    .line 451
    iget-object v5, v4, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 452
    const-string v8, " 4G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 453
    iget-object v5, v4, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 454
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_262

    .line 460
    .end local v4    # "cellInfoLte":Landroid/hardware/radio/V1_6/CellInfoLte;
    .end local v7    # "nLac":I
    :pswitch_14e
    iget-object v4, v3, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v4

    .line 461
    .local v4, "cellInfoWcdma":Landroid/hardware/radio/V1_5/CellInfoWcdma;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    iget-object v7, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    .line 464
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 466
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 465
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 467
    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 469
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 468
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 470
    if-eqz v0, :cond_262

    .line 471
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 472
    const-string v8, " 3G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 473
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 474
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    goto/16 :goto_262

    .line 415
    .end local v4    # "cellInfoWcdma":Landroid/hardware/radio/V1_5/CellInfoWcdma;
    .end local v7    # "nLac":I
    :pswitch_1d9
    iget-object v4, v3, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v4}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v4

    .line 416
    .local v4, "cellInfoGsm":Landroid/hardware/radio/V1_5/CellInfoGsm;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    iget-object v7, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v7, v7, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v7, v7, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    .line 419
    .restart local v7    # "nLac":I
    iget-object v8, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v10, v9, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 421
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v10

    .line 420
    invoke-virtual {v9, v10, v2, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 422
    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v9, v8, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 424
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getSubId(I)I

    move-result v9

    .line 423
    invoke-virtual {v8, v9, v2, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorNameForPlmnList(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 425
    if-eqz v0, :cond_262

    .line 426
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 427
    const-string v8, " 2G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    .line 428
    iget-object v5, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v5, v5, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v4, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 429
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 503
    .end local v4    # "cellInfoGsm":Landroid/hardware/radio/V1_5/CellInfoGsm;
    .end local v7    # "nLac":I
    :cond_262
    :goto_262
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->hidePLMN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_283

    .line 504
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 505
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove this one "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 507
    .end local v3    # "record":Landroid/hardware/radio/V1_6/CellInfo;
    :cond_283
    goto/16 :goto_7

    .line 508
    .end local v2    # "mccmnc":Ljava/lang/String;
    :cond_285
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->networkScanResult_1_6(ILandroid/hardware/radio/V1_6/NetworkScanResult;)V

    .line 509
    return-void

    nop

    :pswitch_data_28a
    .packed-switch 0x0
        :pswitch_1d9
        :pswitch_14e
        :pswitch_1f
        :pswitch_c3
        :pswitch_3e
        :pswitch_3c
    .end packed-switch
.end method

.method public radioStateChanged(II)V
    .registers 10
    .param p1, "indicationType"    # I
    .param p2, "radioState"    # I

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v0

    .line 94
    .local v0, "oldState":I
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->radioStateChanged(II)V

    .line 95
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v1

    .line 96
    .local v1, "newState":I
    if-eq v1, v0, :cond_51

    .line 97
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.intent.action.RADIO_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/MtkRadioIndication;->getRadioStateFromInt(I)I

    move-result v3

    .line 99
    .local v3, "transferedState":I
    const-string v4, "radioState"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 101
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 100
    const-string v5, "subId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 104
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcast for RadioStateChanged: state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 107
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "transferedState":I
    :cond_51
    return-void
.end method

.method public rilConnected(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 73
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0x40a

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget v1, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCdmaSubscription:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->notifyRegistrantsRilConnectionChanged(I)V

    .line 84
    return-void
.end method

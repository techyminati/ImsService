.class abstract Lcom/mediatek/internal/telephony/cat/BipValueParser;
.super Ljava/lang/Object;
.source "BipValueParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveBearerDesc(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .registers 13
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 56
    const-string v0, "CAT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 57
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 58
    .local v2, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 59
    .local v3, "length":I
    const/4 v4, 0x0

    .line 60
    .local v4, "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    const/4 v5, 0x0

    .line 61
    .local v5, "gprsbearerDesc":Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;
    const/4 v6, 0x0

    .line 62
    .local v6, "euTranbearerDesc":Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;
    const/4 v7, 0x0

    .line 63
    .local v7, "uTranbearerDesc":Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;
    const/4 v8, 0x0

    .line 65
    .local v8, "defaultbearerDesc":Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v9, "valueIndex":I
    :try_start_15
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 66
    .local v2, "bearerType":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retrieveBearerDesc: bearerType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v10, 0x2

    if-ne v10, v2, :cond_73

    .line 69
    new-instance v10, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    invoke-direct {v10}, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;-><init>()V
    :try_end_3d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_3d} :catch_188

    move-object v5, v10

    .line 70
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .local v10, "valueIndex":I
    :try_start_40
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->precedence:I
    :try_end_46
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_46} :catch_6f

    .line 71
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_48
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->delay:I
    :try_end_4e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_48 .. :try_end_4e} :catch_188

    .line 72
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_50
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->reliability:I
    :try_end_56
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_50 .. :try_end_56} :catch_6f

    .line 73
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_58
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->peak:I
    :try_end_5e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_58 .. :try_end_5e} :catch_188

    .line 74
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_60
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->mean:I
    :try_end_66
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_60 .. :try_end_66} :catch_6f

    .line 75
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_68
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v5, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    .line 76
    return-object v5

    .line 120
    .end local v2    # "bearerType":I
    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :catch_6f
    move-exception v2

    move v9, v10

    goto/16 :goto_189

    .line 77
    .end local v10    # "valueIndex":I
    .restart local v2    # "bearerType":I
    .restart local v9    # "valueIndex":I
    :cond_73
    const/16 v10, 0x9

    if-ne v10, v2, :cond_106

    .line 78
    new-instance v10, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    invoke-direct {v10}, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;-><init>()V
    :try_end_7c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_68 .. :try_end_7c} :catch_188

    move-object v7, v10

    .line 79
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_7f
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficClass:I
    :try_end_85
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7f .. :try_end_85} :catch_6f

    .line 80
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_87
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_High:I
    :try_end_8d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_87 .. :try_end_8d} :catch_188

    .line 81
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_8f
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_Low:I
    :try_end_95
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8f .. :try_end_95} :catch_6f

    .line 82
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_97
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_High:I
    :try_end_9d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_97 .. :try_end_9d} :catch_188

    .line 83
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_9f
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_Low:I
    :try_end_a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9f .. :try_end_a5} :catch_6f

    .line 84
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_a7
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_High:I
    :try_end_ad
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a7 .. :try_end_ad} :catch_188

    .line 85
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_af
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_Low:I
    :try_end_b5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_af .. :try_end_b5} :catch_6f

    .line 86
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_b7
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_High:I
    :try_end_bd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b7 .. :try_end_bd} :catch_188

    .line 87
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_bf
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_Low:I
    :try_end_c5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_bf .. :try_end_c5} :catch_6f

    .line 88
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_c7
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOrder:I
    :try_end_cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c7 .. :try_end_cd} :catch_188

    .line 89
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_cf
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxSduSize:I
    :try_end_d5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_cf .. :try_end_d5} :catch_6f

    .line 90
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_d7
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->sduErrorRatio:I
    :try_end_dd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d7 .. :try_end_dd} :catch_188

    .line 91
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_df
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->residualBitErrorRadio:I
    :try_end_e5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_df .. :try_end_e5} :catch_6f

    .line 92
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_e7
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOfErroneousSdus:I
    :try_end_ed
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e7 .. :try_end_ed} :catch_188

    .line 93
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_ef
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->transferDelay:I
    :try_end_f5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ef .. :try_end_f5} :catch_6f

    .line 94
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_f7
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficHandlingPriority:I
    :try_end_fd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f7 .. :try_end_fd} :catch_188

    .line 95
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_ff
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v7, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->pdpType:I
    :try_end_105
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ff .. :try_end_105} :catch_6f

    .line 96
    return-object v7

    .line 97
    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :cond_106
    const/16 v10, 0xb

    if-ne v10, v2, :cond_161

    .line 98
    :try_start_10a
    new-instance v10, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    invoke-direct {v10}, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;-><init>()V
    :try_end_10f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10a .. :try_end_10f} :catch_188

    move-object v6, v10

    .line 99
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_112
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v6, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->QCI:I
    :try_end_118
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_112 .. :try_end_118} :catch_6f

    .line 100
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_11a
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v6, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I
    :try_end_120
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11a .. :try_end_120} :catch_188

    .line 101
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_122
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v6, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I
    :try_end_128
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_122 .. :try_end_128} :catch_6f

    .line 102
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_12a
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v6, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I
    :try_end_130
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12a .. :try_end_130} :catch_188

    .line 103
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_132
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v6, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I
    :try_end_138
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_132 .. :try_end_138} :catch_6f

    .line 104
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_13a
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v6, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I
    :try_end_140
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13a .. :try_end_140} :catch_188

    .line 105
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_142
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v6, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I
    :try_end_148
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_142 .. :try_end_148} :catch_6f

    .line 106
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_14a
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v6, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I
    :try_end_150
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14a .. :try_end_150} :catch_188

    .line 107
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_152
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, v6, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I
    :try_end_158
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_152 .. :try_end_158} :catch_6f

    .line 108
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :try_start_15a
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v6, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    .line 109
    return-object v6

    .line 110
    :cond_161
    const/4 v10, 0x3

    if-ne v10, v2, :cond_16b

    .line 111
    new-instance v10, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;

    invoke-direct {v10}, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;-><init>()V

    move-object v0, v10

    .line 112
    .end local v8    # "defaultbearerDesc":Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;
    .local v0, "defaultbearerDesc":Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;
    return-object v0

    .line 113
    .end local v0    # "defaultbearerDesc":Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;
    .restart local v8    # "defaultbearerDesc":Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;
    :cond_16b
    const/4 v10, 0x1

    if-ne v10, v2, :cond_17b

    .line 114
    const-string v10, "retrieveBearerDesc: unsupport CSD"

    invoke-static {v0, v10}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v10, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    .end local v1    # "rawValue":[B
    .end local v3    # "length":I
    .end local v4    # "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .end local v5    # "gprsbearerDesc":Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;
    .end local v6    # "euTranbearerDesc":Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;
    .end local v7    # "uTranbearerDesc":Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;
    .end local v8    # "defaultbearerDesc":Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;
    .end local v9    # "valueIndex":I
    .end local p0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    throw v10

    .line 117
    .restart local v1    # "rawValue":[B
    .restart local v3    # "length":I
    .restart local v4    # "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .restart local v5    # "gprsbearerDesc":Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;
    .restart local v6    # "euTranbearerDesc":Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;
    .restart local v7    # "uTranbearerDesc":Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;
    .restart local v8    # "defaultbearerDesc":Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;
    .restart local v9    # "valueIndex":I
    .restart local p0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_17b
    const-string v10, "retrieveBearerDesc: un-understood bearer type"

    invoke-static {v0, v10}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v10, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    .end local v1    # "rawValue":[B
    .end local v3    # "length":I
    .end local v4    # "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .end local v5    # "gprsbearerDesc":Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;
    .end local v6    # "euTranbearerDesc":Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;
    .end local v7    # "uTranbearerDesc":Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;
    .end local v8    # "defaultbearerDesc":Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;
    .end local v9    # "valueIndex":I
    .end local p0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    throw v10
    :try_end_188
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15a .. :try_end_188} :catch_188

    .line 120
    .end local v2    # "bearerType":I
    .restart local v1    # "rawValue":[B
    .restart local v3    # "length":I
    .restart local v4    # "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .restart local v5    # "gprsbearerDesc":Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;
    .restart local v6    # "euTranbearerDesc":Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;
    .restart local v7    # "uTranbearerDesc":Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;
    .restart local v8    # "defaultbearerDesc":Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;
    .restart local v9    # "valueIndex":I
    .restart local p0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :catch_188
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_189
    const-string v10, "retrieveBearerDesc: out of bounds"

    invoke-static {v0, v10}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0
.end method

.method static retrieveBufferSize(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .registers 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 128
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 129
    .local v1, "valueIndex":I
    const/4 v2, 0x0

    .line 132
    .local v2, "size":I
    :try_start_9
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_13} :catch_18

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 136
    .end local v2    # "size":I
    .local v3, "size":I
    nop

    .line 138
    return v3

    .line 133
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :catch_18
    move-exception v3

    .line 134
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "CAT"

    const-string v5, "retrieveBufferSize: out of bounds"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveChannelData(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .registers 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 263
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 264
    .local v1, "valueIndex":I
    const/4 v2, 0x0

    .line 267
    .local v2, "channelData":[B
    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    new-array v3, v3, [B

    move-object v2, v3

    .line 268
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_15} :catch_17

    .line 272
    nop

    .line 274
    return-object v2

    .line 269
    :catch_17
    move-exception v3

    .line 270
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "CAT"

    const-string v5, "retrieveChannelData: out of bounds"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveChannelDataLength(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .registers 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 246
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 247
    .local v1, "valueIndex":I
    const/4 v2, 0x0

    .line 249
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "valueIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CAT"

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :try_start_1f
    aget-byte v3, v0, v1
    :try_end_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_21} :catch_25

    and-int/lit16 v2, v3, 0xff

    .line 256
    nop

    .line 258
    return v2

    .line 253
    :catch_25
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "retrieveTransportProtocol: out of bounds"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveNetworkAccessName(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .registers 16
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 142
    const-string v0, "totalLen:"

    const-string v1, ";"

    const-string v2, "CAT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 143
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 144
    .local v4, "valueIndex":I
    const/4 v5, 0x0

    .line 148
    .local v5, "networkAccessName":Ljava/lang/String;
    :try_start_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v6

    .line 149
    .local v6, "totalLen":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v4, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_18} :catch_eb

    .line 150
    .local v7, "stkNetworkAccessName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 151
    .local v8, "stkNetworkIdentifier":Ljava/lang/String;
    const/4 v9, 0x0

    .line 153
    .local v9, "stkOperatorIdentifier":Ljava/lang/String;
    if-lez v6, :cond_e9

    .line 155
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "valueIndex":I
    .local v10, "valueIndex":I
    :try_start_1e
    aget-byte v4, v3, v4

    .line 156
    .local v4, "len":I
    if-le v6, v4, :cond_29

    .line 157
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3, v10, v4}, Ljava/lang/String;-><init>([BII)V

    move-object v8, v11

    .line 158
    add-int/2addr v10, v4

    .line 160
    :cond_29
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_47} :catch_e6

    .line 162
    const/4 v11, 0x0

    .line 163
    .local v11, "tmp_string":Ljava/lang/String;
    :goto_48
    add-int/lit8 v12, v4, 0x1

    const-string v13, "."

    if-le v6, v12, :cond_ae

    .line 164
    add-int/lit8 v12, v4, 0x1

    sub-int/2addr v6, v12

    .line 165
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "valueIndex":I
    .local v12, "valueIndex":I
    :try_start_53
    aget-byte v10, v3, v10

    move v4, v10

    .line 166
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "next len: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-le v6, v4, :cond_8a

    .line 168
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3, v12, v4}, Ljava/lang/String;-><init>([BII)V

    .line 169
    .end local v11    # "tmp_string":Ljava/lang/String;
    .local v10, "tmp_string":Ljava/lang/String;
    if-nez v9, :cond_75

    .line 170
    move-object v9, v10

    goto :goto_88

    .line 172
    :cond_75
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_87
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_53 .. :try_end_87} :catch_ab

    move-object v9, v11

    .line 173
    :goto_88
    const/4 v10, 0x0

    move-object v11, v10

    .line 175
    .end local v10    # "tmp_string":Ljava/lang/String;
    .restart local v11    # "tmp_string":Ljava/lang/String;
    :cond_8a
    add-int v10, v12, v4

    .line 176
    .end local v12    # "valueIndex":I
    .local v10, "valueIndex":I
    :try_start_8c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 186
    .end local v4    # "len":I
    .end local v6    # "totalLen":I
    .end local v7    # "stkNetworkAccessName":Ljava/lang/String;
    .end local v8    # "stkNetworkIdentifier":Ljava/lang/String;
    .end local v9    # "stkOperatorIdentifier":Ljava/lang/String;
    .end local v10    # "valueIndex":I
    .end local v11    # "tmp_string":Ljava/lang/String;
    .restart local v12    # "valueIndex":I
    :catch_ab
    move-exception v0

    move v4, v12

    goto :goto_ec

    .line 179
    .end local v12    # "valueIndex":I
    .restart local v4    # "len":I
    .restart local v6    # "totalLen":I
    .restart local v7    # "stkNetworkAccessName":Ljava/lang/String;
    .restart local v8    # "stkNetworkIdentifier":Ljava/lang/String;
    .restart local v9    # "stkOperatorIdentifier":Ljava/lang/String;
    .restart local v10    # "valueIndex":I
    .restart local v11    # "tmp_string":Ljava/lang/String;
    :cond_ae
    if-eqz v8, :cond_c6

    if-eqz v9, :cond_c6

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .end local v5    # "networkAccessName":Ljava/lang/String;
    .local v0, "networkAccessName":Ljava/lang/String;
    goto :goto_ca

    .line 181
    .end local v0    # "networkAccessName":Ljava/lang/String;
    .restart local v5    # "networkAccessName":Ljava/lang/String;
    :cond_c6
    if-eqz v8, :cond_ca

    .line 182
    move-object v0, v8

    move-object v5, v0

    .line 184
    :cond_ca
    :goto_ca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nw:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8c .. :try_end_e4} :catch_e6

    move v4, v10

    goto :goto_e9

    .line 186
    .end local v4    # "len":I
    .end local v6    # "totalLen":I
    .end local v7    # "stkNetworkAccessName":Ljava/lang/String;
    .end local v8    # "stkNetworkIdentifier":Ljava/lang/String;
    .end local v9    # "stkOperatorIdentifier":Ljava/lang/String;
    .end local v11    # "tmp_string":Ljava/lang/String;
    :catch_e6
    move-exception v0

    move v4, v10

    goto :goto_ec

    .line 189
    .end local v10    # "valueIndex":I
    .local v4, "valueIndex":I
    :cond_e9
    :goto_e9
    nop

    .line 191
    return-object v5

    .line 186
    :catch_eb
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_ec
    const-string v1, "retrieveNetworkAccessName: out of bounds"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v1
.end method

.method static retrieveNextActionIndicator(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .registers 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 281
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 282
    .local v1, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 284
    .local v2, "length":I
    new-array v3, v2, [B

    .line 286
    .local v3, "nai":[B
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_f
    if-ge v4, v2, :cond_25

    .line 287
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "valueIndex":I
    .local v6, "valueIndex":I
    :try_start_15
    aget-byte v1, v0, v1

    aput-byte v1, v3, v4
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_19} :catch_1c

    move v4, v5

    move v1, v6

    goto :goto_f

    .line 289
    .end local v5    # "index":I
    :catch_1c
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 291
    .end local v6    # "valueIndex":I
    .local v1, "valueIndex":I
    :cond_25
    nop

    .line 293
    return-object v3
.end method

.method static retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .registers 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 213
    const-string v0, "CAT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 214
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 215
    .local v2, "valueIndex":I
    const/4 v3, 0x0

    .line 216
    .local v3, "addressType":I
    const/4 v4, 0x0

    .line 219
    .local v4, "otherAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v5, "valueIndex":I
    const/4 v6, 0x0

    :try_start_f
    aget-byte v2, v1, v2

    move v3, v2

    .line 220
    const/16 v2, 0x21

    if-ne v2, v3, :cond_1d

    .line 221
    new-instance v2, Lcom/mediatek/internal/telephony/cat/OtherAddress;

    invoke-direct {v2, v3, v1, v5}, Lcom/mediatek/internal/telephony/cat/OtherAddress;-><init>(I[BI)V

    move-object v0, v2

    .end local v4    # "otherAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .local v0, "otherAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    goto :goto_27

    .line 222
    .end local v0    # "otherAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .restart local v4    # "otherAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    :cond_1d
    const/16 v2, 0x57

    if-ne v2, v3, :cond_29

    .line 223
    new-instance v2, Lcom/mediatek/internal/telephony/cat/OtherAddress;

    invoke-direct {v2, v3, v1, v5}, Lcom/mediatek/internal/telephony/cat/OtherAddress;-><init>(I[BI)V
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_26} :catch_31
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_26} :catch_2a

    move-object v0, v2

    .line 239
    .end local v4    # "otherAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .restart local v0    # "otherAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    :goto_27
    nop

    .line 241
    return-object v0

    .line 227
    .end local v0    # "otherAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .restart local v4    # "otherAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    :cond_29
    return-object v6

    .line 235
    :catch_2a
    move-exception v2

    .line 236
    .local v2, "e2":Ljava/net/UnknownHostException;
    const-string v7, "retrieveOtherAddress: unknown host"

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-object v6

    .line 231
    .end local v2    # "e2":Ljava/net/UnknownHostException;
    :catch_31
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "retrieveOtherAddress: out of bounds"

    invoke-static {v0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-object v6
.end method

.method static retrieveTransportProtocol(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/internal/telephony/cat/TransportProtocol;
    .registers 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 197
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 198
    .local v1, "valueIndex":I
    const/4 v2, 0x0

    .line 199
    .local v2, "protocolType":I
    const/4 v3, 0x0

    .line 202
    .local v3, "portNumber":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "valueIndex":I
    .local v4, "valueIndex":I
    :try_start_c
    aget-byte v1, v0, v1

    move v2, v1

    .line 203
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v0, v5
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_19} :catch_23

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    .line 207
    .end local v3    # "portNumber":I
    .local v1, "portNumber":I
    nop

    .line 209
    new-instance v3, Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    invoke-direct {v3, v2, v1}, Lcom/mediatek/internal/telephony/cat/TransportProtocol;-><init>(II)V

    return-object v3

    .line 204
    .end local v1    # "portNumber":I
    .restart local v3    # "portNumber":I
    :catch_23
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "CAT"

    const-string v6, "retrieveTransportProtocol: out of bounds"

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

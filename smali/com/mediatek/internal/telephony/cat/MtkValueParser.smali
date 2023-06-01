.class abstract Lcom/mediatek/internal/telephony/cat/MtkValueParser;
.super Ljava/lang/Object;
.source "MtkValueParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static removeInvalidCharInItemTextString([BII)I
    .registers 8
    .param p0, "rawValue"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "textLen"    # I

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 90
    .local v0, "isucs2":Ljava/lang/Boolean;
    move v1, p2

    .line 94
    .local v1, "len":I
    const/4 v2, 0x1

    if-lt p2, v2, :cond_11

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x80

    if-eq v3, v4, :cond_27

    :cond_11
    const/4 v3, 0x3

    if-lt p2, v3, :cond_1c

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x7f

    if-eq v3, v4, :cond_27

    :cond_1c
    const/4 v3, 0x4

    if-lt p2, v3, :cond_2b

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_2b

    .line 98
    :cond_27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 101
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_43

    if-lez p2, :cond_43

    .line 103
    move v2, p2

    .local v2, "i":I
    :goto_34
    if-lez v2, :cond_43

    .line 104
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    const/16 v4, -0x10

    if-ne v3, v4, :cond_43

    .line 106
    add-int/lit8 v1, v1, -0x1

    .line 103
    add-int/lit8 v2, v2, -0x1

    goto :goto_34

    .line 113
    .end local v2    # "i":I
    :cond_43
    return v1
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;
    .registers 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .param p1, "noAlphaUsrCnf"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 127
    if-eqz p0, :cond_37

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 129
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 130
    .local v1, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 131
    .local v2, "length":I
    if-eqz v2, :cond_1e

    .line 133
    :try_start_10
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v3

    .line 134
    :catch_15
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 138
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alpha Id length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ValueParser"

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v3, ""

    return-object v3

    .line 148
    .end local v0    # "rawValue":[B
    .end local v1    # "valueIndex":I
    .end local v2    # "length":I
    :cond_37
    if-eqz p1, :cond_3b

    const/4 v0, 0x0

    goto :goto_3d

    :cond_3b
    const-string v0, "Default Message"

    :goto_3d
    return-object v0
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .registers 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "item":Lcom/android/internal/telephony/cat/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 67
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 68
    .local v2, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 70
    .local v3, "length":I
    if-eqz v3, :cond_2f

    .line 71
    add-int/lit8 v4, v3, -0x1

    .line 74
    .local v4, "textLen":I
    :try_start_11
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    .line 75
    .local v5, "id":I
    invoke-static {v1, v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->removeInvalidCharInItemTextString([BII)I

    move-result v6

    move v4, v6

    .line 76
    add-int/lit8 v6, v2, 0x1

    invoke-static {v1, v6, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "text":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/cat/Item;

    invoke-direct {v7, v5, v6}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_25} :catch_27

    move-object v0, v7

    .line 82
    .end local v5    # "id":I
    .end local v6    # "text":Ljava/lang/String;
    goto :goto_2f

    .line 78
    :catch_27
    move-exception v5

    .line 81
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "ValueParser"

    const-string v7, "retrieveItem fail"

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v4    # "textLen":I
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2f
    :goto_2f
    return-object v0
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    .registers 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 192
    const-string v0, "ValueParser"

    const-string v1, "retrieveItemsIconId:"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v1, Lcom/android/internal/telephony/cat/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/ItemsIconId;-><init>()V

    .line 195
    .local v1, "id":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 196
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 197
    .local v3, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 201
    .local v4, "numOfItems":I
    :try_start_1a
    new-array v6, v4, [I

    iput-object v6, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1e} :catch_57
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1a .. :try_end_1e} :catch_47

    .line 204
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "valueIndex":I
    .local v6, "valueIndex":I
    :try_start_20
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_27

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    :goto_28
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    .line 206
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_2b
    if-ge v3, v4, :cond_40

    .line 207
    iget-object v5, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I
    :try_end_2f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_2f} :catch_44
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_20 .. :try_end_2f} :catch_42

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .local v7, "index":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v8, "valueIndex":I
    :try_start_33
    aget-byte v6, v2, v6

    aput v6, v5, v3
    :try_end_37
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_33 .. :try_end_37} :catch_3d
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_33 .. :try_end_37} :catch_3a

    move v3, v7

    move v6, v8

    goto :goto_2b

    .line 211
    .end local v7    # "index":I
    :catch_3a
    move-exception v3

    move v6, v8

    goto :goto_4a

    .line 209
    :catch_3d
    move-exception v0

    move v3, v8

    goto :goto_58

    .line 214
    .end local v8    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :cond_40
    nop

    .line 215
    return-object v1

    .line 211
    :catch_42
    move-exception v3

    goto :goto_4a

    .line 209
    :catch_44
    move-exception v0

    move v3, v6

    goto :goto_58

    .line 211
    .end local v6    # "valueIndex":I
    .local v3, "valueIndex":I
    :catch_47
    move-exception v5

    move v6, v3

    move-object v3, v5

    .line 212
    .local v3, "e":Ljava/lang/NegativeArraySizeException;
    .restart local v6    # "valueIndex":I
    :goto_4a
    const-string v5, "retrieveItemsIconId: numOfItems = -1"

    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 209
    .end local v6    # "valueIndex":I
    .local v3, "valueIndex":I
    :catch_57
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_58
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveNextActionIndicator(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .registers 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 155
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 156
    .local v1, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 158
    .local v2, "length":I
    new-array v3, v2, [B

    .line 160
    .local v3, "nai":[B
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_f
    if-ge v4, v2, :cond_25

    .line 161
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

    .line 163
    .end local v5    # "index":I
    :catch_1c
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 165
    .end local v6    # "valueIndex":I
    .local v1, "valueIndex":I
    :cond_25
    nop

    .line 166
    return-object v3
.end method

.method static retrieveTarget(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .registers 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 171
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 172
    .local v1, "valueIndex":I
    const/4 v2, 0x0

    .line 175
    .local v2, "target":I
    :try_start_9
    aget-byte v3, v0, v1
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_b} :catch_f

    and-int/lit16 v2, v3, 0xff

    .line 178
    nop

    .line 179
    return v2

    .line 176
    :catch_f
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

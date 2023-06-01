.class public Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;
.super Lcom/android/internal/telephony/uicc/IccUtils;
.source "MtkIccUtilsEx.java"


# static fields
.field public static final CDMA_CARD_TYPE_NOT_3GCARD:I = 0x0

.field public static final CDMA_CARD_TYPE_RUIM_SIM:I = 0x2

.field public static final CDMA_CARD_TYPE_UIM_ONLY:I = 0x1

.field static final MTK_LOG_TAG:Ljava/lang/String; = "MtkIccUtilsEx"

.field protected static final PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field protected static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field protected static final TAG_FULL_NETWORK_NAME:I = 0x43

.field private static final TAG_ISIM_VALUE:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 68
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 75
    const-string v0, "vendor.gsm.ril.ct3g"

    const-string v1, "vendor.gsm.ril.ct3g.2"

    const-string v2, "vendor.gsm.ril.ct3g.3"

    const-string v3, "vendor.gsm.ril.ct3g.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccUtils;-><init>()V

    return-void
.end method

.method public static PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .registers 2
    .param p0, "substate"    # I

    .line 251
    packed-switch p0, :pswitch_data_c

    .line 254
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .local v0, "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_b

    .line 253
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_C_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_b

    .line 252
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_C:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 257
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :goto_b
    return-object v0

    :pswitch_data_c
    .packed-switch 0x64
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static checkCdma3gCard(I)I
    .registers 8
    .param p0, "slotId"    # I

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "prop":Ljava/lang/String;
    const/4 v1, 0x0

    .line 199
    .local v1, "values":[Ljava/lang/String;
    const/4 v2, -0x1

    .line 201
    .local v2, "cdma3gCardType":I
    const-string v3, "MtkIccUtilsEx"

    if-ltz p0, :cond_a3

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v5, v4

    if-lt p0, v5, :cond_e

    goto/16 :goto_a3

    .line 206
    :cond_e
    aget-object v4, v4, p0

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_22

    .line 208
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_22
    if-eqz v1, :cond_71

    .line 212
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "RUIM"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "SIM"

    if-eqz v4, :cond_3e

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 213
    const/4 v2, 0x2

    goto :goto_71

    .line 214
    :cond_3e
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v6, "USIM"

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 215
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 216
    :cond_54
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    sget-object v4, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v4, v4, p0

    .line 217
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 218
    :cond_6e
    const/4 v2, 0x1

    goto :goto_71

    .line 220
    :cond_70
    const/4 v2, 0x0

    .line 224
    :cond_71
    :goto_71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCdma3gCard slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", prop value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    if-eqz v1, :cond_8f

    array-length v5, v1

    goto :goto_90

    :cond_8f
    const/4 v5, 0x0

    :goto_90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cdma3gCardType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v2

    .line 202
    :cond_a3
    :goto_a3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCdma3gCard: invalid slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v2
.end method

.method public static getPrintableString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "strToPrint":Ljava/lang/String;
    if-eqz p0, :cond_27

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_26

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 237
    :cond_26
    move-object v0, p0

    .line 240
    :cond_27
    :goto_27
    return-object v0
.end method

.method public static parseImpiToString([B)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B

    .line 177
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 178
    return-object v0

    .line 181
    :cond_4
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 183
    .local v1, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_29

    .line 184
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 186
    :cond_29
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ISIM] can\'t find TLV. record = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkIccUtilsEx"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-object v0

    .line 186
    :cond_4a
    goto :goto_b
.end method

.method public static parsePnnToString([B)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B

    .line 155
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 156
    return-object v0

    .line 159
    :cond_4
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 160
    .local v1, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 161
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    const/16 v4, 0x43

    if-ne v2, v4, :cond_27

    .line 162
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v3, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 160
    :cond_27
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_b

    .line 166
    :cond_2b
    return-object v0
.end method

.method public static parseSpnToString(I[B)Ljava/lang/String;
    .registers 13
    .param p0, "family"    # I
    .param p1, "data"    # [B

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 92
    return-object v0

    .line 95
    :cond_4
    const/4 v1, 0x1

    if-ne v1, p0, :cond_e

    .line 96
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_e
    const/4 v2, 0x2

    if-ne v2, p0, :cond_97

    .line 98
    aget-byte v1, p1, v1

    .line 99
    .local v1, "encoding":I
    aget-byte v2, p1, v2

    .line 100
    .local v2, "language":I
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 101
    .local v4, "spnData":[B
    array-length v5, p1

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    if-ge v5, v3, :cond_20

    array-length v3, p1

    sub-int/2addr v3, v6

    .line 102
    .local v3, "len":I
    :cond_20
    const/4 v5, 0x0

    invoke-static {p1, v6, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    const/4 v6, 0x0

    .local v6, "numBytes":I
    :goto_25
    array-length v7, v4

    if-ge v6, v7, :cond_33

    .line 106
    aget-byte v7, v4, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_30

    .line 107
    goto :goto_33

    .line 105
    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 111
    :cond_33
    :goto_33
    if-nez v6, :cond_38

    .line 112
    const-string v0, ""

    return-object v0

    .line 115
    :cond_38
    const-string v7, "spn decode error: "

    const-string v8, "MtkIccUtilsEx"

    packed-switch v1, :pswitch_data_98

    .line 137
    :pswitch_3f
    goto :goto_72

    .line 135
    :pswitch_40
    :try_start_40
    new-instance v9, Ljava/lang/String;

    const-string v10, "utf-16"

    invoke-direct {v9, v4, v5, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v9

    .line 121
    :pswitch_48
    mul-int/lit8 v9, v6, 0x8

    div-int/lit8 v9, v9, 0x7

    invoke-static {v4, v5, v9}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :pswitch_51
    new-instance v9, Ljava/lang/String;

    const-string v10, "US-ASCII"

    invoke-direct {v9, v4, v5, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 129
    .local v9, "spn":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 130
    return-object v9

    .line 132
    :cond_5f
    mul-int/lit8 v10, v6, 0x8

    div-int/lit8 v10, v10, 0x7

    invoke-static {v4, v5, v10}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    .end local v9    # "spn":Ljava/lang/String;
    :pswitch_68
    new-instance v9, Ljava/lang/String;

    const-string v10, "ISO-8859-1"

    invoke-direct {v9, v4, v5, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v9

    .line 139
    :catch_70
    move-exception v5

    goto :goto_85

    .line 137
    :goto_72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_84} :catch_70

    .line 141
    goto :goto_97

    .line 140
    .local v5, "e":Ljava/lang/Exception;
    :goto_85
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v1    # "encoding":I
    .end local v2    # "language":I
    .end local v3    # "len":I
    .end local v4    # "spnData":[B
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "numBytes":I
    :cond_97
    :goto_97
    return-object v0

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_68
        :pswitch_3f
        :pswitch_51
        :pswitch_48
        :pswitch_40
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_68
        :pswitch_48
    .end packed-switch
.end method

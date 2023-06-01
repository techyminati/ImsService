.class public Lcom/mediatek/internal/telephony/MtkWapPushOverSms;
.super Lcom/android/internal/telephony/WapPushOverSms;
.source "MtkWapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;
    }
.end annotation


# static fields
.field private static final ENG:Z

.field private static final TAG:Ljava/lang/String; = "Mtk_WAP_PUSH"


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 101
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method private decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;
    .registers 26
    .param p1, "pdu"    # [B
    .param p2, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 117
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;-><init>(Lcom/mediatek/internal/telephony/MtkWapPushOverSms;Lcom/mediatek/internal/telephony/MtkWapPushOverSms$1;)V

    move-object v3, v0

    .line 118
    .local v3, "result":Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    const-string v4, "Mtk_WAP_PUSH"

    if-eqz v0, :cond_29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_29
    const/4 v5, 0x0

    .line 122
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    const/4 v7, 0x2

    :try_start_2d
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 123
    .local v5, "transactionId":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "index":I
    .local v8, "index":I
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 126
    .local v6, "pduType":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    .line 128
    .local v9, "phoneId":I
    const/4 v10, -0x1

    const/4 v11, 0x6

    const/4 v12, 0x1

    if-eq v6, v11, :cond_bd

    const/4 v13, 0x7

    if-eq v6, v13, :cond_bd

    .line 130
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00d8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14
    :try_end_54
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2d .. :try_end_54} :catch_221

    move v8, v14

    .line 132
    const-string v14, "Received non-PUSH WAP PDU. Type = "

    if-eq v8, v10, :cond_a6

    .line 133
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "index":I
    .local v15, "index":I
    :try_start_5b
    aget-byte v8, v2, v8

    and-int/lit16 v5, v8, 0xff

    .line 134
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "index":I
    .restart local v8    # "index":I
    aget-byte v15, v2, v15

    and-int/lit16 v6, v15, 0xff

    .line 135
    if-eqz v0, :cond_8b

    .line 136
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "index = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " PDU Type = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " transactionID = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_8b
    if-eq v6, v11, :cond_bd

    if-eq v6, v13, :cond_bd

    .line 142
    if-eqz v0, :cond_a3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_a3
    iput v12, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 144
    return-object v3

    .line 147
    :cond_a6
    if-eqz v0, :cond_ba

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_ba
    iput v12, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 149
    return-object v3

    .line 154
    :cond_bd
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v10

    const-class v11, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v10

    .line 155
    .local v10, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    nop

    .line 156
    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;

    .line 164
    .local v11, "pduDecoder":Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;
    invoke-virtual {v11, v8}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v13

    if-nez v13, :cond_e2

    .line 165
    if-eqz v0, :cond_df

    const-string v0, "Received PDU. Header Length error."

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_df
    iput v7, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 167
    return-object v3

    .line 169
    :cond_e2
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValue32()J

    move-result-wide v13

    long-to-int v13, v13

    .line 170
    .local v13, "headerLength":I
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getDecodedDataLength()I

    move-result v14

    add-int/2addr v8, v14

    .line 172
    move v14, v8

    .line 186
    .local v14, "headerStartIndex":I
    invoke-virtual {v11, v8}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeContentType(I)Z

    move-result v15

    if-nez v15, :cond_fd

    .line 187
    if-eqz v0, :cond_fa

    const-string v0, "Received PDU. Header Content-Type error."

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_fa
    iput v7, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 189
    return-object v3

    .line 192
    :cond_fd
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 193
    .local v15, "mimeType":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValue32()J

    move-result-wide v16

    .line 194
    .local v16, "binaryContentType":J
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getDecodedDataLength()I

    move-result v0

    add-int/2addr v8, v0

    .line 196
    new-array v0, v13, [B

    move-object/from16 v18, v0

    .line 197
    .local v18, "header":[B
    move-object/from16 v7, v18

    .end local v18    # "header":[B
    .local v7, "header":[B
    array-length v0, v7

    const/4 v12, 0x0

    invoke-static {v2, v14, v7, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    sub-int v0, v13, v8

    add-int/2addr v0, v14

    invoke-virtual {v11, v8, v0}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeHeaders(II)V

    .line 204
    if-eqz v15, :cond_12e

    const-string v0, "application/vnd.wap.coc"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 205
    move-object/from16 v0, p1

    move-object v12, v0

    move-object/from16 v20, v10

    move/from16 v21, v14

    .local v0, "intentData":[B
    goto :goto_13d

    .line 207
    .end local v0    # "intentData":[B
    :cond_12e
    add-int v0, v14, v13

    .line 208
    .local v0, "dataIndex":I
    array-length v12, v2

    sub-int/2addr v12, v0

    new-array v12, v12, [B

    .line 209
    .local v12, "intentData":[B
    move-object/from16 v20, v10

    .end local v10    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .local v20, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    array-length v10, v12

    move/from16 v21, v14

    const/4 v14, 0x0

    .end local v14    # "headerStartIndex":I
    .local v21, "headerStartIndex":I
    invoke-static {v2, v0, v12, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    .end local v0    # "dataIndex":I
    :goto_13d
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    move-object v10, v0

    .line 213
    .local v10, "subIds":[I
    if-eqz v10, :cond_14b

    array-length v0, v10

    if-lez v0, :cond_14b

    const/4 v0, 0x0

    aget v0, v10, v0

    goto :goto_14f

    .line 214
    :cond_14b
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0
    :try_end_14f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5b .. :try_end_14f} :catch_221

    :goto_14f
    move v14, v0

    .line 218
    .local v14, "subId":I
    const/16 v19, 0x0

    .line 220
    .local v19, "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :try_start_152
    new-instance v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-static {v14}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v2

    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_15f} :catch_166
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_152 .. :try_end_15f} :catch_221

    move-object/from16 v19, v0

    .line 223
    move-object/from16 v22, v10

    move-object/from16 v0, v19

    goto :goto_183

    .line 221
    :catch_166
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    :try_start_167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v10

    .end local v10    # "subIds":[I
    .local v22, "subIds":[I
    const-string v10, "Unable to parse PDU: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    .line 225
    .end local v19    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    .local v0, "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_183
    if-eqz v0, :cond_1aa

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    const/16 v10, 0x82

    if-ne v2, v10, :cond_1aa

    .line 226
    move-object v2, v0

    check-cast v2, Lcom/google/android/mms/pdu/NotificationInd;

    .line 227
    .local v2, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    if-eqz v10, :cond_1aa

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->mContext:Landroid/content/Context;

    .line 228
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 229
    const/4 v1, 0x1

    iput v1, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 230
    return-object v3

    .line 240
    .end local v2    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    :cond_1aa
    add-int v1, v8, v13

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v11, v8, v1}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v1

    if-eqz v1, :cond_201

    .line 241
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValue32()J

    move-result-wide v1

    long-to-int v8, v1

    .line 242
    invoke-virtual {v11, v8}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 243
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "wapAppId":Ljava/lang/String;
    if-nez v1, :cond_1cd

    .line 245
    move-object v10, v1

    .end local v1    # "wapAppId":Ljava/lang/String;
    .local v10, "wapAppId":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getValue32()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .end local v10    # "wapAppId":Ljava/lang/String;
    .restart local v1    # "wapAppId":Ljava/lang/String;
    goto :goto_1ce

    .line 244
    :cond_1cd
    move-object v10, v1

    .line 247
    :goto_1ce
    iput-object v1, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    .line 248
    if-nez v15, :cond_1d7

    .line 249
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d8

    :cond_1d7
    move-object v2, v15

    .line 250
    .local v2, "contentType":Ljava/lang/String;
    :goto_1d8
    iput-object v2, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    .line 251
    sget-boolean v10, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v10, :cond_1fd

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v8

    .end local v8    # "index":I
    .local v18, "index":I
    const-string v8, "appid found: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ff

    .end local v18    # "index":I
    .restart local v8    # "index":I
    :cond_1fd
    move/from16 v18, v8

    .line 254
    .end local v1    # "wapAppId":Ljava/lang/String;
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v8    # "index":I
    .restart local v18    # "index":I
    :goto_1ff
    move/from16 v8, v18

    .end local v18    # "index":I
    .restart local v8    # "index":I
    :cond_201
    iput v14, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->subId:I

    .line 255
    iput v9, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->phoneId:I

    .line 256
    iput-object v0, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 257
    iput-object v15, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 258
    iput v5, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->transactionId:I

    .line 259
    iput v6, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->pduType:I

    .line 260
    iput-object v7, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->header:[B

    .line 261
    iput-object v12, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->intentData:[B

    .line 262
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    .line 263
    const/4 v1, -0x1

    iput v1, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 264
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;->getHeaders()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->headerList:Ljava/util/HashMap;
    :try_end_220
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_167 .. :try_end_220} :catch_221

    .line 270
    .end local v0    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v5    # "transactionId":I
    .end local v6    # "pduType":I
    .end local v7    # "header":[B
    .end local v8    # "index":I
    .end local v9    # "phoneId":I
    .end local v11    # "pduDecoder":Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;
    .end local v12    # "intentData":[B
    .end local v13    # "headerLength":I
    .end local v14    # "subId":I
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v16    # "binaryContentType":J
    .end local v20    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .end local v21    # "headerStartIndex":I
    .end local v22    # "subIds":[I
    goto :goto_239

    .line 265
    :catch_221
    move-exception v0

    .line 268
    .local v0, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v1, 0x2

    iput v1, v3, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    .line 271
    .end local v0    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_239
    return-object v3
.end method


# virtual methods
.method public dispatchWapPdu([BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .registers 22
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .line 285
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p3

    invoke-direct {v1, v2, v11}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;

    move-result-object v12

    .line 286
    .local v12, "result":Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;
    iget v0, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    const/4 v13, -0x1

    if-eq v0, v13, :cond_12

    .line 287
    iget v0, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->statusCode:I

    return v0

    .line 300
    :cond_12
    iget-object v0, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    const-string v3, "wspHeaders"

    const-string v4, "contentTypeParameters"

    const-string v5, "data"

    const-string v6, "header"

    const-string v7, "pduType"

    const-string v8, "transactionId"

    const-string v10, "service_center"

    const-string v14, "address"

    const-string v15, "Mtk_WAP_PUSH"

    if-eqz v0, :cond_ce

    .line 302
    const/4 v0, 0x1

    .line 303
    .local v0, "processFurther":Z
    :try_start_29
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 305
    .local v13, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v13, :cond_3a

    .line 306
    sget-boolean v16, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v16, :cond_36

    const-string v9, "wap push manager not found!"

    invoke-static {v15, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    move/from16 v17, v0

    goto/16 :goto_bd

    .line 308
    :cond_3a
    sget-boolean v9, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v9, :cond_46

    move/from16 v17, v0

    .end local v0    # "processFurther":Z
    .local v17, "processFurther":Z
    const-string v0, "addPowerSaveTempWhitelistAppForMms - start"

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .end local v17    # "processFurther":Z
    .restart local v0    # "processFurther":Z
    :cond_46
    move/from16 v17, v0

    .line 313
    .end local v0    # "processFurther":Z
    .restart local v17    # "processFurther":Z
    :goto_48
    if-eqz v9, :cond_4f

    const-string v0, "addPowerSaveTempWhitelistAppForMms - end"

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_4f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    iget v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    iget v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 319
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 320
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 321
    iget v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 323
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->headerList:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 325
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_92

    .line 326
    const-string v2, "put addr info into intent 1"

    invoke-static {v15, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    :cond_92
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    iget-object v11, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    invoke-interface {v13, v2, v11, v0}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v2

    .line 336
    .local v2, "procRet":I
    if-eqz v9, :cond_b0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "procRet:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_b0} :catch_c4

    .line 337
    :cond_b0
    and-int/lit8 v9, v2, 0x1

    if-lez v9, :cond_bd

    const v9, 0x8000

    and-int/2addr v9, v2

    if-nez v9, :cond_bd

    .line 339
    const/4 v9, 0x0

    move v0, v9

    .end local v17    # "processFurther":Z
    .local v9, "processFurther":Z
    goto :goto_bf

    .line 342
    .end local v2    # "procRet":I
    .end local v9    # "processFurther":Z
    .local v0, "processFurther":Z
    :cond_bd
    :goto_bd
    move/from16 v0, v17

    :goto_bf
    if-nez v0, :cond_c3

    .line 343
    const/4 v2, 0x1

    return v2

    .line 347
    .end local v0    # "processFurther":Z
    .end local v13    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_c3
    goto :goto_ce

    .line 345
    :catch_c4
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v2, :cond_ce

    const-string v2, "remote func failed..."

    invoke-static {v15, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_ce
    :goto_ce
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v0, :cond_d7

    const-string v2, "fall back to existing handler"

    invoke-static {v15, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_d7
    iget-object v2, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_e4

    .line 352
    if-eqz v0, :cond_e2

    const-string v0, "Header Content-Type error."

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_e2
    const/4 v0, 0x2

    return v0

    .line 356
    :cond_e4
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, "intent":Landroid/content/Intent;
    iget-object v9, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget v9, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    iget v8, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    iget-object v7, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 361
    iget-object v6, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 362
    iget-object v5, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 363
    iget v4, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v2, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 365
    iget-object v4, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->headerList:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 367
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    if-eqz v3, :cond_12e

    .line 368
    const-string v3, "put addr info into intent 2"

    invoke-static {v15, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    :cond_12e
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v11

    .line 378
    .local v11, "componentName":Landroid/content/ComponentName;
    const/4 v13, 0x0

    .line 379
    .local v13, "options":Landroid/os/Bundle;
    if-eqz v11, :cond_161

    .line 381
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 382
    if-eqz v0, :cond_161

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delivering MMS to: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v15, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_161
    iget-object v0, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 395
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->getAppOpsStringPermissionForIntent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget v10, v12, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->subId:I

    .line 394
    move-object/from16 v3, p3

    move-object v4, v2

    move-object v7, v13

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    .line 397
    const/4 v3, -0x1

    return v3
.end method

.method public dispatchWapPdu([BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Bundle;)I
    .registers 7
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p4, "extra"    # Landroid/os/Bundle;

    .line 430
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->ENG:Z

    if-eqz v0, :cond_b

    const-string v0, "Mtk_WAP_PUSH"

    const-string v1, "dispathchWapPdu!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_b
    iput-object p4, p0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->bundle:Landroid/os/Bundle;

    .line 433
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;->dispatchWapPdu([BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v0

    return v0
.end method

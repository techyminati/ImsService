.class public Lcom/mediatek/android/mms/pdu/MtkPduParser;
.super Lcom/google/android/mms/pdu/PduParser;
.source "MtkPduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MtkPduParser"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 49
    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 3
    .param p1, "pduDataStream"    # [B
    .param p2, "parseContentDisposition"    # Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    .line 55
    return-void
.end method


# virtual methods
.method protected parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 16
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p3, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 267
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 268
    nop

    .line 270
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 271
    .local v0, "startPos":I
    const/4 v1, 0x0

    .line 272
    .local v1, "tempPos":I
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 273
    .local v2, "lastLen":I
    :goto_b
    const-string v3, "Corrupt Content-Type"

    const-string v4, "MtkPduParser"

    if-lez v2, :cond_193

    .line 274
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 275
    .local v5, "param":I
    nop

    .line 276
    add-int/lit8 v2, v2, -0x1

    .line 278
    const/16 v6, 0x7f

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_19a

    .line 460
    :pswitch_1f
    invoke-static {p1, v2}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v7, v6, :cond_190

    .line 461
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_191

    .line 427
    :pswitch_2b
    invoke-static {p1, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 428
    .local v3, "path":[B
    if-eqz v3, :cond_3c

    if-eqz p2, :cond_3c

    .line 429
    const/16 v4, 0x9d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_3c
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 433
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 434
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    move v2, v4

    goto/16 :goto_191

    .line 447
    .end local v3    # "path":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :pswitch_4a
    invoke-static {p1, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 448
    .local v3, "domain":[B
    if-eqz v3, :cond_5b

    if-eqz p2, :cond_5b

    .line 449
    const/16 v4, 0x9c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_5b
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 453
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 454
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto/16 :goto_191

    .line 437
    .end local v3    # "domain":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :pswitch_69
    invoke-static {p1, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 438
    .local v3, "comment":[B
    if-eqz v3, :cond_7a

    if-eqz p2, :cond_7a

    .line 439
    const/16 v4, 0x9b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_7a
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 443
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 444
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto/16 :goto_191

    .line 336
    .end local v3    # "comment":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :pswitch_88
    invoke-static {p1, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 337
    .local v3, "start":[B
    if-eqz v3, :cond_99

    if-eqz p2, :cond_99

    .line 338
    const/16 v4, 0x99

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_99
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 342
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 343
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto/16 :goto_191

    .line 417
    .end local v3    # "start":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :pswitch_a7
    invoke-static {p1, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 418
    .local v3, "fileName":[B
    if-eqz v3, :cond_b8

    if-eqz p2, :cond_b8

    .line 419
    const/16 v4, 0x98

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_b8
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 423
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 424
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto/16 :goto_191

    .line 403
    .end local v3    # "fileName":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :pswitch_c6
    invoke-static {p1, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 404
    .local v3, "name":[B
    if-eqz v3, :cond_d7

    if-eqz p2, :cond_d7

    .line 405
    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_d7
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 409
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 410
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto/16 :goto_191

    .line 294
    .end local v3    # "name":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :pswitch_e5
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 295
    invoke-static {p1}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 296
    .local v3, "first":I
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 297
    const/16 v4, 0x83

    if-le v3, v6, :cond_110

    .line 299
    invoke-static {p1}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 301
    .local v6, "index":I
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_10f

    .line 302
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 303
    .local v7, "type":[B
    if-eqz v7, :cond_10f

    if-eqz p2, :cond_10f

    .line 304
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .end local v6    # "index":I
    .end local v7    # "type":[B
    :cond_10f
    goto :goto_11f

    .line 311
    :cond_110
    invoke-static {p1, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 312
    .local v6, "type":[B
    if-eqz v6, :cond_11f

    if-eqz p2, :cond_11f

    .line 313
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v6    # "type":[B
    :cond_11f
    :goto_11f
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 318
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 319
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto :goto_191

    .line 360
    .end local v3    # "first":I
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :pswitch_12c
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 361
    invoke-static {p1}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 362
    .local v3, "firstValue":I
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 364
    const/16 v7, 0x20

    const/16 v9, 0x81

    if-le v3, v7, :cond_13e

    if-lt v3, v6, :cond_140

    :cond_13e
    if-nez v3, :cond_171

    .line 367
    :cond_140
    invoke-static {p1, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 369
    .local v6, "charsetStr":[B
    :try_start_144
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v7

    .line 371
    .local v7, "charsetInt":I
    if-eqz p2, :cond_15a

    .line 372
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_144 .. :try_end_15a} :catch_15b

    .line 380
    .end local v7    # "charsetInt":I
    :cond_15a
    goto :goto_170

    .line 374
    :catch_15b
    move-exception v7

    .line 376
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    if-eqz p2, :cond_170

    .line 378
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .end local v6    # "charsetStr":[B
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_170
    :goto_170
    goto :goto_183

    .line 383
    :cond_171
    invoke-static {p1}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    long-to-int v4, v6

    .line 384
    .local v4, "charset":I
    if-eqz p2, :cond_183

    .line 385
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v4    # "charset":I
    :cond_183
    :goto_183
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 390
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 391
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    move v2, v4

    goto :goto_191

    .line 463
    .end local v3    # "firstValue":I
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :cond_190
    const/4 v2, 0x0

    .line 467
    .end local v5    # "param":I
    :goto_191
    goto/16 :goto_b

    .line 469
    :cond_193
    if-eqz v2, :cond_198

    .line 470
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_198
    return-void

    nop

    :pswitch_data_19a
    .packed-switch 0x81
        :pswitch_12c
        :pswitch_1f
        :pswitch_e5
        :pswitch_1f
        :pswitch_c6
        :pswitch_a7
        :pswitch_1f
        :pswitch_1f
        :pswitch_e5
        :pswitch_88
        :pswitch_1f
        :pswitch_69
        :pswitch_4a
        :pswitch_1f
        :pswitch_2b
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_c6
        :pswitch_a7
        :pswitch_88
        :pswitch_1f
        :pswitch_69
        :pswitch_4a
        :pswitch_2b
    .end packed-switch
.end method

.method protected parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .registers 21
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p3, "length"    # I

    .line 67
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 68
    nop

    .line 69
    nop

    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 88
    .local v2, "startPos":I
    const/4 v3, 0x0

    .line 89
    .local v3, "tempPos":I
    move/from16 v4, p3

    .line 90
    .local v4, "lastLen":I
    :goto_d
    const-string v5, "Corrupt Part headers"

    const/4 v6, 0x1

    const-string v7, "MtkPduParser"

    const/4 v8, 0x0

    if-lez v4, :cond_169

    .line 91
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    .line 92
    .local v9, "header":I
    nop

    .line 93
    add-int/lit8 v4, v4, -0x1

    .line 94
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Part headers: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v10, 0x7f

    const/4 v11, -0x1

    if-le v9, v10, :cond_12c

    .line 97
    sparse-switch v9, :sswitch_data_174

    .line 197
    move-object/from16 v12, p0

    move/from16 v16, v3

    .end local v3    # "tempPos":I
    .local v16, "tempPos":I
    invoke-static {v0, v4}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v3

    if-ne v11, v3, :cond_127

    .line 198
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v8

    .line 116
    .end local v16    # "tempPos":I
    .restart local v3    # "tempPos":I
    :sswitch_46
    invoke-static {v0, v6}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 117
    .local v5, "contentId":[B
    if-eqz v5, :cond_4f

    .line 118
    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 121
    :cond_4f
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 122
    sub-int v6, v2, v3

    sub-int v4, p3, v6

    .line 123
    move-object/from16 v12, p0

    goto/16 :goto_167

    .line 147
    .end local v5    # "contentId":[B
    :sswitch_5b
    move-object/from16 v12, p0

    iget-boolean v5, v12, Lcom/mediatek/android/mms/pdu/MtkPduParser;->mParseContentDisposition:Z

    if-eqz v5, :cond_f5

    .line 148
    invoke-static/range {p1 .. p1}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 149
    .local v5, "len":I
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    .line 151
    .local v6, "thisStartPos":I
    const/4 v10, 0x0

    .line 152
    .local v10, "thisEndPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    .line 154
    .local v11, "value":I
    const/16 v13, 0x80

    if-ne v11, v13, :cond_7b

    .line 155
    sget-object v13, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_99

    .line 156
    :cond_7b
    const/16 v13, 0x81

    if-ne v11, v13, :cond_85

    .line 157
    sget-object v13, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_99

    .line 158
    :cond_85
    const/16 v13, 0x82

    if-ne v11, v13, :cond_8f

    .line 159
    sget-object v13, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_99

    .line 161
    :cond_8f
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 163
    invoke-static {v0, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 168
    :goto_99
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 169
    sub-int v13, v6, v10

    if-ge v13, v5, :cond_e9

    .line 170
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    .line 171
    const/16 v13, 0x98

    if-ne v11, v13, :cond_b0

    .line 172
    invoke-static {v0, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 177
    :cond_b0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 178
    sub-int v13, v6, v10

    if-ge v13, v5, :cond_e6

    .line 179
    sub-int v13, v6, v10

    sub-int v13, v5, v13

    .line 180
    .local v13, "last":I
    new-array v14, v13, [B

    .line 181
    .local v14, "temp":[B
    invoke-virtual {v0, v14, v8, v13}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v8

    .line 182
    .local v8, "readLen":I
    if-ge v8, v13, :cond_e3

    .line 183
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    .end local v3    # "tempPos":I
    .restart local v16    # "tempPos":I
    const-string v3, "Error happened when skipping paramlast = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but readLen = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    .line 182
    .end local v16    # "tempPos":I
    .restart local v3    # "tempPos":I
    :cond_e3
    move/from16 v16, v3

    .end local v3    # "tempPos":I
    .restart local v16    # "tempPos":I
    goto :goto_eb

    .line 178
    .end local v8    # "readLen":I
    .end local v13    # "last":I
    .end local v14    # "temp":[B
    .end local v16    # "tempPos":I
    .restart local v3    # "tempPos":I
    :cond_e6
    move/from16 v16, v3

    .end local v3    # "tempPos":I
    .restart local v16    # "tempPos":I
    goto :goto_eb

    .line 169
    .end local v16    # "tempPos":I
    .restart local v3    # "tempPos":I
    :cond_e9
    move/from16 v16, v3

    .line 189
    .end local v3    # "tempPos":I
    .restart local v16    # "tempPos":I
    :goto_eb
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 190
    .end local v16    # "tempPos":I
    .restart local v3    # "tempPos":I
    sub-int v7, v2, v3

    sub-int v4, p3, v7

    .line 191
    .end local v5    # "len":I
    .end local v6    # "thisStartPos":I
    .end local v10    # "thisEndPos":I
    .end local v11    # "value":I
    goto/16 :goto_167

    .line 147
    :cond_f5
    move/from16 v16, v3

    .end local v3    # "tempPos":I
    .restart local v16    # "tempPos":I
    goto/16 :goto_167

    .line 125
    .end local v16    # "tempPos":I
    .restart local v3    # "tempPos":I
    :sswitch_f9
    move-object/from16 v12, p0

    move/from16 v16, v3

    .end local v3    # "tempPos":I
    .restart local v16    # "tempPos":I
    invoke-static {v0, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 126
    .local v3, "transferEncoding":[B
    if-eqz v3, :cond_106

    .line 127
    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 129
    :cond_106
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 130
    .end local v16    # "tempPos":I
    .local v5, "tempPos":I
    sub-int v6, v2, v5

    sub-int v4, p3, v6

    .line 131
    move v3, v5

    goto :goto_167

    .line 103
    .end local v5    # "tempPos":I
    .local v3, "tempPos":I
    :sswitch_110
    move-object/from16 v12, p0

    move/from16 v16, v3

    .end local v3    # "tempPos":I
    .restart local v16    # "tempPos":I
    invoke-static {v0, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 104
    .local v3, "contentLocation":[B
    if-eqz v3, :cond_11d

    .line 105
    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 108
    :cond_11d
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 109
    .end local v16    # "tempPos":I
    .restart local v5    # "tempPos":I
    sub-int v6, v2, v5

    sub-int v4, p3, v6

    .line 110
    move v3, v5

    goto :goto_167

    .line 201
    .end local v3    # "contentLocation":[B
    .end local v5    # "tempPos":I
    .restart local v16    # "tempPos":I
    :cond_127
    const/4 v3, 0x0

    .line 202
    .end local v4    # "lastLen":I
    .local v3, "lastLen":I
    move v4, v3

    move/from16 v3, v16

    goto :goto_167

    .line 204
    .end local v16    # "tempPos":I
    .local v3, "tempPos":I
    .restart local v4    # "lastLen":I
    :cond_12c
    move-object/from16 v12, p0

    move/from16 v16, v3

    .end local v3    # "tempPos":I
    .restart local v16    # "tempPos":I
    const/16 v3, 0x20

    if-lt v9, v3, :cond_159

    if-gt v9, v10, :cond_159

    .line 206
    invoke-static {v0, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 207
    .local v3, "tempHeader":[B
    invoke-static {v0, v8}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 210
    .local v5, "tempValue":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    .line 211
    const-string v8, "Content-Transfer-Encoding"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-ne v6, v7, :cond_14e

    .line 212
    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 215
    :cond_14e
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    .line 216
    .end local v16    # "tempPos":I
    .local v6, "tempPos":I
    sub-int v7, v2, v6

    sub-int v3, p3, v7

    .line 217
    .end local v4    # "lastLen":I
    .end local v5    # "tempValue":[B
    .local v3, "lastLen":I
    move v4, v3

    move v3, v6

    goto :goto_167

    .line 222
    .end local v3    # "lastLen":I
    .end local v6    # "tempPos":I
    .restart local v4    # "lastLen":I
    .restart local v16    # "tempPos":I
    :cond_159
    invoke-static {v0, v4}, Lcom/mediatek/android/mms/pdu/MtkPduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v3

    if-ne v11, v3, :cond_163

    .line 223
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v8

    .line 226
    :cond_163
    const/4 v3, 0x0

    move v4, v3

    move/from16 v3, v16

    .line 228
    .end local v9    # "header":I
    .end local v16    # "tempPos":I
    .local v3, "tempPos":I
    :goto_167
    goto/16 :goto_d

    .line 230
    :cond_169
    move-object/from16 v12, p0

    move/from16 v16, v3

    .end local v3    # "tempPos":I
    .restart local v16    # "tempPos":I
    if-eqz v4, :cond_173

    .line 231
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v8

    .line 235
    :cond_173
    return v6

    :sswitch_data_174
    .sparse-switch
        0x8e -> :sswitch_110
        0xa7 -> :sswitch_f9
        0xae -> :sswitch_5b
        0xc0 -> :sswitch_46
        0xc5 -> :sswitch_5b
    .end sparse-switch
.end method

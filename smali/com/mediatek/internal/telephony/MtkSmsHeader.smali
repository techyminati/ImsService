.class public Lcom/mediatek/internal/telephony/MtkSmsHeader;
.super Lcom/android/internal/telephony/SmsHeader;
.source "MtkSmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;
    }
.end annotation


# static fields
.field public static final CONCATENATED_8_BIT_REFERENCE_LENGTH:I = 0x5

.field public static final NATIONAL_LANGUAGE_LOCKING_SHIFT_LENGTH:I = 0x3

.field public static final NATIONAL_LANGUAGE_SINGLE_SHIFT_LENGTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SmsHeader"


# instance fields
.field public nationalLang:Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .registers 9
    .param p0, "data"    # [B

    .line 78
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 79
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSmsHeader;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/MtkSmsHeader;-><init>()V

    .line 80
    .local v1, "smsHeader":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    :goto_a
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_f2

    .line 89
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 90
    .local v2, "id":I
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 93
    .local v3, "length":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_f4

    .line 143
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 144
    .local v4, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v2, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 145
    new-array v6, v3, [B

    iput-object v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 146
    iget-object v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v0, v6, v5, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 147
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f0

    .line 134
    .end local v4    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :sswitch_34
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    iput v4, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageTable:I

    .line 135
    goto/16 :goto_f0

    .line 131
    :sswitch_3c
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    iput v4, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageShiftTable:I

    .line 132
    goto/16 :goto_f0

    .line 106
    :sswitch_44
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 107
    .local v4, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 108
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 109
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 110
    iput-boolean v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 111
    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v5, :cond_f0

    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v5, :cond_f0

    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v5, v6, :cond_f0

    .line 113
    iput-object v4, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto/16 :goto_f0

    .line 124
    .end local v4    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_76
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 125
    .local v4, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 127
    iput-boolean v5, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 128
    iput-object v4, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 129
    goto :goto_f0

    .line 117
    .end local v4    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_9a
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 118
    .local v5, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 119
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 120
    iput-boolean v4, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 121
    iput-object v5, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 122
    goto :goto_f0

    .line 137
    .end local v5    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_b0
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;-><init>()V

    .line 138
    .local v4, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    .line 139
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    .line 140
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    goto :goto_f0

    .line 95
    .end local v4    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :sswitch_c7
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 96
    .local v5, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 97
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 99
    iput-boolean v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 100
    iget v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v4, :cond_f0

    iget v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v4, :cond_f0

    iget v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v4, v6, :cond_f0

    .line 102
    iput-object v5, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 149
    .end local v2    # "id":I
    .end local v3    # "length":I
    .end local v5    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_f0
    :goto_f0
    goto/16 :goto_a

    .line 150
    :cond_f2
    return-object v1

    nop

    :sswitch_data_f4
    .sparse-switch
        0x0 -> :sswitch_c7
        0x1 -> :sswitch_b0
        0x4 -> :sswitch_9a
        0x5 -> :sswitch_76
        0x8 -> :sswitch_44
        0x24 -> :sswitch_3c
        0x25 -> :sswitch_34
    .end sparse-switch
.end method

.method public static getSubmitPduHeader(I)[B
    .registers 2
    .param p0, "destPort"    # I

    .line 184
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeader(IIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(II)[B
    .registers 3
    .param p0, "destPort"    # I
    .param p1, "originalPort"    # I

    .line 195
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeader(IIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(III)[B
    .registers 4
    .param p0, "refNumber"    # I
    .param p1, "seqNumber"    # I
    .param p2, "msgCount"    # I

    .line 206
    const/4 v0, -0x1

    invoke-static {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeader(IIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(IIII)[B
    .registers 10
    .param p0, "destPort"    # I
    .param p1, "refNumber"    # I
    .param p2, "seqNumber"    # I
    .param p3, "msgCount"    # I

    .line 221
    const/4 v4, -0x1

    const/4 v5, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(IIIII)[B
    .registers 12
    .param p0, "destPort"    # I
    .param p1, "originalPort"    # I
    .param p2, "refNumber"    # I
    .param p3, "seqNumber"    # I
    .param p4, "msgCount"    # I

    .line 237
    const/4 v5, -0x1

    const/4 v6, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeaderWithLang(III)[B
    .registers 9
    .param p0, "destPort"    # I
    .param p1, "singleShiftId"    # I
    .param p2, "lockingShiftId"    # I

    .line 248
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v0, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeaderWithLang(IIIII)[B
    .registers 11
    .param p0, "refNumber"    # I
    .param p1, "seqNumber"    # I
    .param p2, "msgCount"    # I
    .param p3, "singleShiftId"    # I
    .param p4, "lockingShiftId"    # I

    .line 259
    const/4 v0, -0x1

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeaderWithLang(IIIIII)[B
    .registers 9
    .param p0, "destPort"    # I
    .param p1, "refNumber"    # I
    .param p2, "seqNumber"    # I
    .param p3, "msgCount"    # I
    .param p4, "singleShiftId"    # I
    .param p5, "lockingShiftId"    # I

    .line 278
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkSmsHeader;-><init>()V

    .line 280
    .local v0, "smsHeader":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    if-ltz p0, :cond_15

    .line 281
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 282
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 283
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 284
    iput-boolean v2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 286
    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 289
    .end local v1    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_15
    if-lez p3, :cond_27

    .line 290
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 291
    .local v1, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput p1, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 292
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 293
    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 301
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 303
    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 306
    .end local v1    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_27
    if-gtz p4, :cond_2b

    if-lez p5, :cond_38

    .line 307
    :cond_2b
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;-><init>()V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->nationalLang:Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;

    .line 308
    iput p4, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;->singleShiftId:I

    .line 309
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->nationalLang:Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;

    iput p5, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;->lockingShiftId:I

    .line 312
    :cond_38
    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v1

    return-object v1
.end method

.method public static getSubmitPduHeaderWithLang(IIIIIII)[B
    .registers 10
    .param p0, "destPort"    # I
    .param p1, "originalPort"    # I
    .param p2, "refNumber"    # I
    .param p3, "seqNumber"    # I
    .param p4, "msgCount"    # I
    .param p5, "singleShiftId"    # I
    .param p6, "lockingShiftId"    # I

    .line 331
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkSmsHeader;-><init>()V

    .line 333
    .local v0, "smsHeader":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    if-ltz p0, :cond_15

    .line 334
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 335
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 336
    iput p1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 337
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 339
    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 342
    .end local v1    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_15
    if-lez p4, :cond_27

    .line 343
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 344
    .local v1, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 345
    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 346
    iput p4, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 354
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 356
    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 359
    .end local v1    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_27
    if-gtz p5, :cond_2b

    if-lez p6, :cond_38

    .line 360
    :cond_2b
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;-><init>()V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->nationalLang:Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;

    .line 361
    iput p5, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;->singleShiftId:I

    .line 362
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->nationalLang:Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;

    iput p6, v1, Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;->lockingShiftId:I

    .line 365
    :cond_38
    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .registers 3
    .param p0, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .line 159
    instance-of v0, p0, Lcom/mediatek/internal/telephony/MtkSmsHeader;

    if-eqz v0, :cond_2d

    .line 160
    move-object v0, p0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;

    .line 161
    .local v0, "smsh":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v1, :cond_2d

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v1, :cond_2d

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->nationalLang:Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;

    if-nez v1, :cond_2d

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageShiftTable:I

    if-nez v1, :cond_2d

    iget v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageTable:I

    if-nez v1, :cond_2d

    .line 170
    const/4 v1, 0x0

    return-object v1

    .line 174
    .end local v0    # "smsh":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    :cond_2d
    invoke-static {p0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    return-object v0
.end method

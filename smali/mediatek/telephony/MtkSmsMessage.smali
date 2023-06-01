.class public Lmediatek/telephony/MtkSmsMessage;
.super Landroid/telephony/SmsMessage;
.source "MtkSmsMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MtkSmsMessage"

.field public static final MWI_EMAIL:I = 0x2

.field public static final MWI_FAX:I = 0x1

.field public static final MWI_OTHER:I = 0x3

.field public static final MWI_VIDEO:I = 0x7

.field public static final MWI_VOICEMAIL:I


# instance fields
.field private mFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 499
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Lmediatek/telephony/MtkSmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 500
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 501
    const-string v0, "3gpp2"

    iput-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    goto :goto_16

    .line 503
    :cond_12
    const-string v0, "3gpp"

    iput-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    .line 505
    :goto_16
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .registers 2
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .line 108
    invoke-direct {p0, p1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 109
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .registers 7
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 280
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 281
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_10

    .line 283
    :cond_c
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_10
    nop

    .line 284
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 285
    .local v2, "ret":[I
    const/4 v3, 0x0

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v4, v2, v3

    .line 286
    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v2, v1

    .line 287
    const/4 v1, 0x2

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v2, v1

    .line 288
    const/4 v1, 0x3

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v2, v1

    .line 289
    return-object v2
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .registers 7
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .line 691
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 692
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_f

    .line 694
    :cond_b
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_f
    nop

    .line 696
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 697
    .local v1, "ret":[I
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v3, v1, v2

    .line 698
    const/4 v2, 0x1

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v1, v2

    .line 699
    const/4 v2, 0x2

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v1, v2

    .line 700
    const/4 v2, 0x3

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v1, v2

    .line 701
    return-object v1
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .registers 3
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z

    .line 403
    invoke-static {p0, p1}, Lmediatek/telephony/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static createFromEfRecord(I[B)Lmediatek/telephony/MtkSmsMessage;
    .registers 5
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->isCdmaVoice()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 217
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    goto :goto_10

    .line 220
    :cond_c
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->createFromEfRecord(I[B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    move-result-object v0

    .line 224
    :goto_10
    if-eqz v0, :cond_27

    .line 225
    new-instance v1, Lmediatek/telephony/MtkSmsMessage;

    invoke-direct {v1, v0}, Lmediatek/telephony/MtkSmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 226
    .local v1, "msg":Lmediatek/telephony/MtkSmsMessage;
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->isCdmaVoice()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 227
    const-string v2, "3gpp2"

    iput-object v2, v1, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    goto :goto_26

    .line 229
    :cond_22
    const-string v2, "3gpp"

    iput-object v2, v1, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    .line 231
    :goto_26
    return-object v1

    .line 233
    .end local v1    # "msg":Lmediatek/telephony/MtkSmsMessage;
    :cond_27
    const-string v1, "MtkSmsMessage"

    const-string v2, "createFromEfRecord(): wrappedMessage is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v1, 0x0

    return-object v1
.end method

.method public static createFromEfRecord(I[BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;
    .registers 8
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    const/4 v1, 0x0

    .line 908
    .local v1, "msg":Lmediatek/telephony/MtkSmsMessage;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromEfRecord(): format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkSmsMessage"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-string v2, "3gpp2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 910
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    goto :goto_31

    .line 912
    :cond_25
    const-string v2, "3gpp"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 913
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->createFromEfRecord(I[B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    move-result-object v0

    .line 920
    :goto_31
    if-eqz v0, :cond_3b

    .line 921
    new-instance v2, Lmediatek/telephony/MtkSmsMessage;

    invoke-direct {v2, v0}, Lmediatek/telephony/MtkSmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    move-object v1, v2

    .line 922
    iput-object p2, v1, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    .line 924
    :cond_3b
    return-object v1

    .line 916
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromEfRecord(): unsupported message format "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v2, 0x0

    return-object v2
.end method

.method public static createFromPdu([B)Lmediatek/telephony/MtkSmsMessage;
    .registers 8
    .param p0, "pdu"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    const/4 v0, 0x0

    .line 129
    .local v0, "message":Lmediatek/telephony/MtkSmsMessage;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 130
    .local v1, "activePhone":I
    const-string v2, "3gpp2"

    const-string v3, "3gpp"

    const/4 v4, 0x2

    if-ne v4, v1, :cond_12

    .line 131
    move-object v5, v2

    goto :goto_13

    :cond_12
    move-object v5, v3

    .line 132
    .local v5, "format":Ljava/lang/String;
    :goto_13
    invoke-static {p0, v5}, Lmediatek/telephony/MtkSmsMessage;->createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1d

    iget-object v6, v0, Lmediatek/telephony/MtkSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v6, :cond_27

    .line 136
    :cond_1d
    if-ne v4, v1, :cond_21

    .line 137
    move-object v2, v3

    goto :goto_22

    :cond_21
    nop

    :goto_22
    move-object v5, v2

    .line 138
    invoke-static {p0, v5}, Lmediatek/telephony/MtkSmsMessage;->createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v0

    .line 140
    :cond_27
    return-object v0
.end method

.method public static createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;
    .registers 6
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .line 158
    const-string v0, "3gpp2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MtkSmsMessage"

    if-eqz v0, :cond_17

    .line 159
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 160
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->newMtkSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    move-result-object v0

    goto :goto_23

    .line 162
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_17
    const-string v0, "3gpp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 163
    invoke-static {p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->createFromPdu([B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    move-result-object v0

    .line 169
    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_23
    if-eqz v0, :cond_2d

    .line 170
    new-instance v1, Lmediatek/telephony/MtkSmsMessage;

    invoke-direct {v1, v0}, Lmediatek/telephony/MtkSmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 171
    .local v1, "msg":Lmediatek/telephony/MtkSmsMessage;
    iput-object p1, v1, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    .line 172
    return-object v1

    .line 174
    .end local v1    # "msg":Lmediatek/telephony/MtkSmsMessage;
    :cond_2d
    const-string v3, "createFromPdu(): wrappedMessage is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-object v1

    .line 165
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromPdu(): unsupported message format "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object v1
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    .line 305
    .local v0, "isCdma":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 306
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_11

    .line 307
    :cond_d
    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    :goto_11
    nop

    .line 314
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v3, v2, :cond_39

    .line 316
    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v3, :cond_20

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v3, :cond_20

    .line 317
    const/4 v3, 0x7

    .local v3, "udhLength":I
    goto :goto_2c

    .line 318
    .end local v3    # "udhLength":I
    :cond_20
    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v3, :cond_2b

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v3, :cond_29

    goto :goto_2b

    .line 321
    :cond_29
    const/4 v3, 0x0

    .restart local v3    # "udhLength":I
    goto :goto_2c

    .line 319
    .end local v3    # "udhLength":I
    :cond_2b
    :goto_2b
    const/4 v3, 0x4

    .line 324
    .restart local v3    # "udhLength":I
    :goto_2c
    iget v4, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v4, v2, :cond_32

    .line 325
    add-int/lit8 v3, v3, 0x6

    .line 328
    :cond_32
    if-eqz v3, :cond_36

    .line 329
    add-int/lit8 v3, v3, 0x1

    .line 332
    :cond_36
    rsub-int v3, v3, 0xa0

    .line 333
    .local v3, "limit":I
    goto :goto_50

    .line 334
    .end local v3    # "limit":I
    :cond_39
    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v3, v2, :cond_4e

    .line 335
    const/16 v3, 0x86

    .line 342
    .restart local v3    # "limit":I
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->hasEmsSupport()Z

    move-result v4

    if-nez v4, :cond_50

    iget v4, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_50

    .line 343
    add-int/lit8 v3, v3, -0x2

    goto :goto_50

    .line 346
    .end local v3    # "limit":I
    :cond_4e
    const/16 v3, 0x8c

    .line 350
    .restart local v3    # "limit":I
    :cond_50
    :goto_50
    const/4 v4, 0x0

    .line 351
    .local v4, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 352
    .local v5, "r":Landroid/content/res/Resources;
    const v6, 0x111013d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 353
    invoke-static {p0, v0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    .line 355
    :cond_62
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 356
    move-object v4, p0

    .line 358
    :cond_69
    const/4 v6, 0x0

    .line 359
    .local v6, "pos":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 360
    .local v7, "textLen":I
    new-instance v8, Ljava/util/ArrayList;

    iget v9, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_75
    if-ge v6, v7, :cond_da

    .line 362
    const/4 v9, 0x0

    .line 363
    .local v9, "nextPos":I
    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v10, v2, :cond_97

    .line 364
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v10

    if-eqz v10, :cond_8e

    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v10, v2, :cond_8e

    .line 366
    sub-int v10, v7, v6

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v6

    .end local v9    # "nextPos":I
    .local v10, "nextPos":I
    goto :goto_9b

    .line 369
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_8e
    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v11, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v4, v6, v3, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v10

    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    goto :goto_9b

    .line 373
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_97
    invoke-static {v6, v3, v4}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v10

    .line 375
    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    :goto_9b
    if-le v10, v6, :cond_a9

    if-le v10, v7, :cond_a0

    goto :goto_a9

    .line 380
    :cond_a0
    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    move v6, v10

    .line 382
    .end local v10    # "nextPos":I
    goto :goto_75

    .line 376
    .restart local v10    # "nextPos":I
    :cond_a9
    :goto_a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText failed ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " >= "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " or "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "MtkSmsMessage"

    invoke-static {v9, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v10    # "nextPos":I
    :cond_da
    return-object v8
.end method

.method public static fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 14
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 716
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    .line 717
    .local v0, "isCdma":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 718
    invoke-static {p0, v1, p1}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_10

    .line 720
    :cond_c
    invoke-static {p0, v1, p1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    :goto_10
    nop

    .line 728
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    .line 730
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v2, :cond_20

    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v2, :cond_20

    .line 731
    const/4 v2, 0x7

    .local v2, "udhLength":I
    goto :goto_2c

    .line 732
    .end local v2    # "udhLength":I
    :cond_20
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v2, :cond_2b

    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v2, :cond_29

    goto :goto_2b

    .line 735
    :cond_29
    const/4 v2, 0x0

    .restart local v2    # "udhLength":I
    goto :goto_2c

    .line 733
    .end local v2    # "udhLength":I
    :cond_2b
    :goto_2b
    const/4 v2, 0x4

    .line 738
    .restart local v2    # "udhLength":I
    :goto_2c
    iget v4, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v4, v3, :cond_32

    .line 739
    add-int/lit8 v2, v2, 0x6

    .line 742
    :cond_32
    if-eqz v2, :cond_36

    .line 743
    add-int/lit8 v2, v2, 0x1

    .line 746
    :cond_36
    rsub-int v2, v2, 0xa0

    .line 747
    .local v2, "limit":I
    goto :goto_50

    .line 748
    .end local v2    # "limit":I
    :cond_39
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v2, v3, :cond_4e

    .line 749
    const/16 v2, 0x86

    .line 756
    .restart local v2    # "limit":I
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->hasEmsSupport()Z

    move-result v4

    if-nez v4, :cond_50

    iget v4, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_50

    .line 757
    add-int/lit8 v2, v2, -0x2

    goto :goto_50

    .line 760
    .end local v2    # "limit":I
    :cond_4e
    const/16 v2, 0x8c

    .line 764
    .restart local v2    # "limit":I
    :cond_50
    :goto_50
    const/4 v4, 0x0

    .line 765
    .local v4, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 766
    .local v5, "r":Landroid/content/res/Resources;
    const v6, 0x111013d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 767
    invoke-static {p0, v0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    .line 769
    :cond_62
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 770
    move-object v4, p0

    .line 772
    :cond_69
    const/4 v6, 0x0

    .line 773
    .local v6, "pos":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 774
    .local v7, "textLen":I
    new-instance v8, Ljava/util/ArrayList;

    iget v9, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 775
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_75
    if-ge v6, v7, :cond_da

    .line 776
    const/4 v9, 0x0

    .line 777
    .local v9, "nextPos":I
    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v10, v3, :cond_97

    .line 778
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v10

    if-eqz v10, :cond_8e

    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v10, v3, :cond_8e

    .line 780
    sub-int v10, v7, v6

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v6

    .end local v9    # "nextPos":I
    .local v10, "nextPos":I
    goto :goto_9b

    .line 783
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_8e
    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v11, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v4, v6, v2, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v10

    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    goto :goto_9b

    .line 787
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_97
    invoke-static {v6, v2, v4}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v10

    .line 789
    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    :goto_9b
    if-le v10, v6, :cond_a9

    if-le v10, v7, :cond_a0

    goto :goto_a9

    .line 794
    :cond_a0
    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    move v6, v10

    .line 796
    .end local v10    # "nextPos":I
    goto :goto_75

    .line 790
    .restart local v10    # "nextPos":I
    :cond_a9
    :goto_a9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText failed ("

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " >= "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " or "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "MtkSmsMessage"

    invoke-static {v9, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v10    # "nextPos":I
    :cond_da
    return-object v8
.end method

.method private static final getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .registers 1

    .line 486
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 487
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;-><init>()V

    return-object v0

    .line 489
    :cond_c
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .line 438
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 439
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_10

    .line 442
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_c
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 446
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_10
    if-eqz v0, :cond_17

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    :cond_17
    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 7
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .line 530
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 531
    nop

    .line 533
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    .line 531
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_14

    .line 535
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 539
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_14
    if-eqz v0, :cond_1c

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;SS[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "originalPort"    # S
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 560
    const-string v0, "MtkSmsMessage"

    const-string v1, "[xj android.telephony.SmsMessage getSubmitPdu"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 563
    invoke-static {p0, p1, p2, p4, p5}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    goto :goto_17

    .line 566
    :cond_13
    invoke-static/range {p0 .. p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 570
    :goto_17
    if-eqz v0, :cond_1f

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .registers 7
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 467
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 468
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_f

    .line 471
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_b
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 475
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_f
    if-eqz v0, :cond_17

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .registers 2
    .param p0, "pdu"    # Ljava/lang/String;

    .line 246
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 247
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 249
    :cond_b
    invoke-static {p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isCdma()Z
    .registers 3

    .line 934
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lmediatek/telephony/MtkSmsMessage;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 935
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static newFromCDS([B)Lmediatek/telephony/MtkSmsMessage;
    .registers 4
    .param p0, "pdu"    # [B

    .line 510
    nop

    .line 511
    invoke-static {p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->newFromCDS([B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    move-result-object v0

    .line 512
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Lmediatek/telephony/MtkSmsMessage;

    invoke-direct {v1, v0}, Lmediatek/telephony/MtkSmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 513
    .local v1, "msg":Lmediatek/telephony/MtkSmsMessage;
    const-string v2, "3gpp"

    iput-object v2, v1, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    .line 514
    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;)Lmediatek/telephony/MtkSmsMessage;
    .registers 4
    .param p0, "lines"    # [Ljava/lang/String;

    .line 190
    nop

    .line 191
    invoke-static {p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    move-result-object v0

    .line 193
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    if-eqz v0, :cond_11

    .line 194
    new-instance v1, Lmediatek/telephony/MtkSmsMessage;

    invoke-direct {v1, v0}, Lmediatek/telephony/MtkSmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 195
    .local v1, "msg":Lmediatek/telephony/MtkSmsMessage;
    const-string v2, "3gpp"

    iput-object v2, v1, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    .line 196
    return-object v1

    .line 198
    .end local v1    # "msg":Lmediatek/telephony/MtkSmsMessage;
    :cond_11
    const-string v1, "MtkSmsMessage"

    const-string v2, "newFromCMT(): wrappedMessage is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v1, 0x0

    return-object v1
.end method

.method protected static useCdmaFormatForMoSms()Z
    .registers 2

    .line 969
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getDefault()Lmediatek/telephony/MtkSmsManager;

    move-result-object v0

    invoke-virtual {v0}, Lmediatek/telephony/MtkSmsManager;->isImsSmsSupported()Z

    move-result v0

    if-nez v0, :cond_f

    .line 971
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->isCdmaVoice()Z

    move-result v0

    return v0

    .line 974
    :cond_f
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getDefault()Lmediatek/telephony/MtkSmsManager;

    move-result-object v0

    invoke-virtual {v0}, Lmediatek/telephony/MtkSmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public fragmentTextUsingTed(ILjava/lang/String;Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)Ljava/util/ArrayList;
    .registers 15
    .param p1, "subId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "ted"    # Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 815
    const/4 v0, 0x0

    .line 817
    .local v0, "useCdmaFormat":Z
    invoke-static {p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1c

    .line 819
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    move v0, v1

    goto :goto_2b

    .line 823
    :cond_1c
    nop

    .line 824
    invoke-static {p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    const-string v3, "3gpp2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 828
    :goto_2b
    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v1, v2, :cond_52

    .line 830
    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v1, :cond_39

    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v1, :cond_39

    .line 831
    const/4 v1, 0x7

    .local v1, "udhLength":I
    goto :goto_45

    .line 832
    .end local v1    # "udhLength":I
    :cond_39
    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v1, :cond_44

    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v1, :cond_42

    goto :goto_44

    .line 835
    :cond_42
    const/4 v1, 0x0

    .restart local v1    # "udhLength":I
    goto :goto_45

    .line 833
    .end local v1    # "udhLength":I
    :cond_44
    :goto_44
    const/4 v1, 0x4

    .line 838
    .restart local v1    # "udhLength":I
    :goto_45
    iget v3, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v3, v2, :cond_4b

    .line 839
    add-int/lit8 v1, v1, 0x6

    .line 842
    :cond_4b
    if-eqz v1, :cond_4f

    .line 843
    add-int/lit8 v1, v1, 0x1

    .line 846
    :cond_4f
    rsub-int v1, v1, 0xa0

    .line 847
    .local v1, "limit":I
    goto :goto_69

    .line 848
    .end local v1    # "limit":I
    :cond_52
    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v1, v2, :cond_67

    .line 849
    const/16 v1, 0x86

    .line 856
    .restart local v1    # "limit":I
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->hasEmsSupport()Z

    move-result v3

    if-nez v3, :cond_69

    iget v3, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_69

    .line 857
    add-int/lit8 v1, v1, -0x2

    goto :goto_69

    .line 860
    .end local v1    # "limit":I
    :cond_67
    const/16 v1, 0x8c

    .line 864
    .restart local v1    # "limit":I
    :cond_69
    :goto_69
    const/4 v3, 0x0

    .line 865
    .local v3, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 866
    .local v4, "r":Landroid/content/res/Resources;
    const v5, 0x111013d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 867
    invoke-static {p2, v0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v3

    .line 869
    :cond_7b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 870
    move-object v3, p2

    .line 872
    :cond_82
    const/4 v5, 0x0

    .line 873
    .local v5, "pos":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 874
    .local v6, "textLen":I
    new-instance v7, Ljava/util/ArrayList;

    iget v8, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 875
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_8e
    if-ge v5, v6, :cond_ef

    .line 876
    const/4 v8, 0x0

    .line 877
    .local v8, "nextPos":I
    iget v9, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v9, v2, :cond_ac

    .line 878
    if-eqz v0, :cond_a3

    iget v9, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v9, v2, :cond_a3

    .line 880
    sub-int v9, v6, v5

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v5

    .end local v8    # "nextPos":I
    .local v9, "nextPos":I
    goto :goto_b0

    .line 883
    .end local v9    # "nextPos":I
    .restart local v8    # "nextPos":I
    :cond_a3
    iget v9, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v3, v5, v1, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v9

    .end local v8    # "nextPos":I
    .restart local v9    # "nextPos":I
    goto :goto_b0

    .line 887
    .end local v9    # "nextPos":I
    .restart local v8    # "nextPos":I
    :cond_ac
    invoke-static {v5, v1, v3}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v9

    .line 889
    .end local v8    # "nextPos":I
    .restart local v9    # "nextPos":I
    :goto_b0
    if-le v9, v5, :cond_be

    if-le v9, v6, :cond_b5

    goto :goto_be

    .line 894
    :cond_b5
    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    move v5, v9

    .line 896
    .end local v9    # "nextPos":I
    goto :goto_8e

    .line 890
    .restart local v9    # "nextPos":I
    :cond_be
    :goto_be
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fragmentText failed ("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " >= "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " or "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "MtkSmsMessage"

    invoke-static {v8, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .end local v9    # "nextPos":I
    :cond_ef
    return-object v7
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .registers 3

    .line 581
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 582
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    .line 583
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    .line 582
    return-object v0

    .line 585
    :cond_13
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    .line 586
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    .line 585
    return-object v0
.end method

.method public getEncodingType()I
    .registers 3

    .line 949
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 950
    const/4 v0, 0x0

    return v0

    .line 952
    :cond_c
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    .line 953
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getEncodingType()I

    move-result v0

    .line 952
    return v0
.end method

.method public getSmsc()[B
    .registers 8

    .line 609
    const-string v0, "MtkSmsMessage"

    const-string v1, "getSmsc"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsMessage;->getPdu()[B

    move-result-object v1

    .line 612
    .local v1, "pdu":[B
    invoke-direct {p0}, Lmediatek/telephony/MtkSmsMessage;->isCdma()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 613
    const-string v2, "getSmsc with CDMA and return null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-object v3

    .line 617
    :cond_18
    if-nez v1, :cond_20

    .line 618
    const-string v2, "pdu is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-object v3

    .line 622
    :cond_20
    const/4 v2, 0x0

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x1

    .line 623
    .local v4, "smscLen":I
    new-array v5, v4, [B

    .line 626
    .local v5, "smsc":[B
    :try_start_29
    array-length v6, v5

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_29 .. :try_end_2d} :catch_2e

    .line 627
    return-object v5

    .line 628
    :catch_2e
    move-exception v2

    .line 629
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "Out of boudns"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-object v3
.end method

.method public getTpdu()[B
    .registers 9

    .line 643
    const-string v0, "MtkSmsMessage"

    const-string v1, "getTpdu"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsMessage;->getPdu()[B

    move-result-object v1

    .line 646
    .local v1, "pdu":[B
    invoke-direct {p0}, Lmediatek/telephony/MtkSmsMessage;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 647
    const-string v2, "getSmsc with CDMA and return null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-object v1

    .line 651
    :cond_17
    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 652
    const-string v3, "pdu is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-object v2

    .line 656
    :cond_20
    const/4 v3, 0x0

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x1

    .line 657
    .local v4, "smscLen":I
    array-length v5, v1

    sub-int/2addr v5, v4

    .line 658
    .local v5, "tpduLen":I
    new-array v6, v5, [B

    .line 661
    .local v6, "tpdu":[B
    :try_start_2b
    array-length v7, v6

    invoke-static {v1, v4, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2b .. :try_end_2f} :catch_30

    .line 662
    return-object v6

    .line 663
    :catch_30
    move-exception v3

    .line 664
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "Out of boudns"

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-object v2
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .line 597
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    return-object v0
.end method

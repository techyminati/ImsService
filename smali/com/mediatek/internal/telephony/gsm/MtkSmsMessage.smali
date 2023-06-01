.class public Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
.super Lcom/android/internal/telephony/gsm/SmsMessage;
.source "MtkSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    }
.end annotation


# static fields
.field public static final ENCODING_7BIT_LOCKING:I = 0xc

.field public static final ENCODING_7BIT_LOCKING_SINGLE:I = 0xd

.field public static final ENCODING_7BIT_SINGLE:I = 0xb

.field private static final ENG:Z

.field static final LOG_TAG:Ljava/lang/String; = "MtkSmsMessage"

.field public static final MASK_MESSAGE_TYPE_INDICATOR:I = 0x3

.field public static final MASK_USER_DATA_HEADER_INDICATOR:I = 0x40

.field public static final MASK_VALIDITY_PERIOD_FORMAT:I = 0x18

.field public static final MASK_VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x18

.field public static final MASK_VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x8

.field public static final MASK_VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field public static final MASK_VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x10


# instance fields
.field protected absoluteValidityPeriod:I

.field protected mDestinationAddress:Ljava/lang/String;

.field private mEncodingType:I

.field protected mwiCount:I

.field protected mwiType:I

.field protected relativeValidityPeriod:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->ENG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mEncodingType:I

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mwiType:I

    .line 114
    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mwiCount:I

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 8
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .line 1204
    const/4 v0, 0x0

    .line 1205
    .local v0, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1206
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x111013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1207
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 1209
    :cond_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1210
    move-object v0, p0

    .line 1212
    :cond_1a
    invoke-static {v0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 1214
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v3, 0x3

    const-string v4, "MtkSmsMessage"

    if-ne p2, v3, :cond_29

    .line 1215
    const-string v3, "input mode is unicode"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v2, 0x0

    .line 1218
    :cond_29
    if-nez v2, :cond_35

    .line 1219
    const-string v3, "7-bit encoding fail"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    return-object v3

    .line 1222
    :cond_35
    return-object v2
.end method

.method public static computeRemainUserDataLength(Z[I)I
    .registers 5
    .param p0, "inSeptets"    # Z
    .param p1, "headerElt"    # [I

    .line 1160
    const/4 v0, 0x0

    .line 1162
    .local v0, "headerBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_17

    .line 1163
    aget v2, p1, v1

    sparse-switch v2, :sswitch_data_24

    goto :goto_14

    .line 1171
    :sswitch_b
    add-int/lit8 v0, v0, 0x3

    .line 1172
    goto :goto_14

    .line 1168
    :sswitch_e
    add-int/lit8 v0, v0, 0x3

    .line 1169
    goto :goto_14

    .line 1165
    :sswitch_11
    add-int/lit8 v0, v0, 0x5

    .line 1166
    nop

    .line 1162
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1178
    .end local v1    # "i":I
    :cond_17
    if-eqz v0, :cond_1b

    .line 1179
    add-int/lit8 v0, v0, 0x1

    .line 1182
    :cond_1b
    rsub-int v1, v0, 0x8c

    .line 1183
    .local v1, "count":I
    if-eqz p0, :cond_23

    .line 1184
    mul-int/lit8 v2, v1, 0x8

    div-int/lit8 v1, v2, 0x7

    .line 1190
    :cond_23
    return v1

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_11
        0x24 -> :sswitch_e
        0x25 -> :sswitch_b
    .end sparse-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .registers 9
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 191
    const-string v0, "MtkSmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 193
    .local v2, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    iput p0, v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIndexOnIcc:I

    .line 198
    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_17

    .line 199
    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-object v1

    .line 203
    :cond_17
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x7

    iput v4, v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mStatusOnIcc:I

    .line 206
    array-length v4, p1

    sub-int/2addr v4, v5

    .line 210
    .local v4, "size":I
    new-array v6, v4, [B

    .line 211
    .local v6, "pdu":[B
    invoke-static {p1, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    invoke-virtual {v2, v6}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_27} :catch_28

    .line 213
    return-object v2

    .line 214
    .end local v2    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .end local v4    # "size":I
    .end local v6    # "pdu":[B
    :catch_28
    move-exception v2

    .line 215
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    return-object v1
.end method

.method public static createFromPdu([B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .registers 5
    .param p0, "pdu"    # [B

    .line 135
    const-string v0, "MtkSmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 136
    .local v2, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_b} :catch_c

    .line 137
    return-object v2

    .line 141
    .end local v2    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    :catch_c
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "SMS PDU parsing failed with out of memory: "

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    return-object v1

    .line 138
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_13
    move-exception v2

    .line 139
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    return-object v1
.end method

.method private static encodeStringWithSpecialLang(Ljava/lang/CharSequence;ILcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)Z
    .registers 11
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "language"    # I
    .param p2, "ted"    # Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1030
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1032
    .local v2, "septets":I
    const-string v3, " "

    const-string v4, "MtkSmsMessage"

    const/4 v5, -0x1

    if-eq v2, v5, :cond_44

    .line 1034
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1035
    const/16 v1, 0xa0

    if-le v2, v1, :cond_1f

    .line 1036
    div-int/lit16 v1, v2, 0x99

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1037
    rem-int/lit16 v1, v2, 0x99

    rsub-int v1, v1, 0x99

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_25

    .line 1040
    :cond_1f
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1041
    rsub-int v1, v2, 0xa0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1043
    :goto_25
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1044
    iput v5, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try Default: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    return v0

    .line 1052
    :cond_44
    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1054
    const/4 v6, 0x2

    if-eq v2, v5, :cond_91

    .line 1056
    new-array v5, v6, [I

    fill-array-data v5, :array_148

    .line 1057
    .local v5, "headerElt":[I
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1059
    .local v6, "maxLength":I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1060
    if-le v2, v6, :cond_6a

    .line 1061
    aput v1, v5, v0

    .line 1062
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1064
    div-int v1, v2, v6

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1065
    rem-int v1, v2, v6

    sub-int v1, v6, v1

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_70

    .line 1067
    :cond_6a
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1068
    sub-int v1, v6, v2

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1070
    :goto_70
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1071
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    .line 1072
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Try Locking Shift: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return v0

    .line 1080
    .end local v5    # "headerElt":[I
    .end local v6    # "maxLength":I
    :cond_91
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1082
    if-eq v2, v5, :cond_dd

    .line 1084
    new-array v5, v6, [I

    fill-array-data v5, :array_150

    .line 1085
    .restart local v5    # "headerElt":[I
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1087
    .restart local v6    # "maxLength":I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1088
    if-le v2, v6, :cond_b6

    .line 1089
    aput v1, v5, v0

    .line 1090
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1092
    div-int v1, v2, v6

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1093
    rem-int v1, v2, v6

    sub-int v1, v6, v1

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_bc

    .line 1095
    :cond_b6
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1096
    sub-int v1, v6, v2

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1098
    :goto_bc
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1099
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    .line 1100
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Try Single Shift: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    return v0

    .line 1108
    .end local v5    # "headerElt":[I
    .end local v6    # "maxLength":I
    :cond_dd
    invoke-static {p0, v0, p1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1110
    if-eq v2, v5, :cond_12c

    .line 1111
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_158

    .line 1115
    .restart local v5    # "headerElt":[I
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v7

    .line 1117
    .local v7, "maxLength":I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1118
    if-le v2, v7, :cond_103

    .line 1119
    aput v1, v5, v6

    .line 1120
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v7

    .line 1122
    div-int v1, v2, v7

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1123
    rem-int v1, v2, v7

    sub-int v1, v7, v1

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_109

    .line 1125
    :cond_103
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1126
    sub-int v1, v7, v2

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1128
    :goto_109
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1129
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    .line 1130
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    .line 1131
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try Locking & Single Shift: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return v0

    .line 1136
    .end local v5    # "headerElt":[I
    .end local v7    # "maxLength":I
    :cond_12c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use UCS2"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return v1

    nop

    :array_148
    .array-data 4
        0x25
        0xffff
    .end array-data

    :array_150
    .array-data 4
        0x24
        0xffff
    .end array-data

    :array_158
    .array-data 4
        0x25
        0x24
        0xffff
    .end array-data
.end method

.method private static getCurrentSysLanguage()I
    .registers 3

    .line 1144
    const-string v0, "persist.sys.language"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "language":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 1146
    const-string v2, "ro.product.locale.language"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1149
    :cond_f
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1151
    const/4 v1, -0x1

    .local v1, "ret":I
    goto :goto_1a

    .line 1153
    .end local v1    # "ret":I
    :cond_19
    const/4 v1, -0x1

    .line 1156
    .restart local v1    # "ret":I
    :goto_1a
    return v1
.end method

.method private static getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 12
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originalAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "ret"    # Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;

    .line 970
    const-string v0, "MtkSmsMessage"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 973
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_f

    .line 974
    const/4 v2, 0x0

    iput-object v2, p3, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_15

    .line 976
    :cond_f
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 981
    :goto_15
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 985
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 987
    .local v2, "oaBytes":[B
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_38

    .line 989
    array-length v0, v2

    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x2

    .line 990
    array-length v5, v2

    sub-int/2addr v5, v4

    aget-byte v5, v2, v5

    const/16 v6, 0xf0

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2e

    goto :goto_2f

    :cond_2e
    move v4, v3

    :goto_2f
    sub-int/2addr v0, v4

    .line 989
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 991
    array-length v0, v2

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_89

    .line 994
    :cond_38
    :try_start_38
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_3c
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_38 .. :try_end_3c} :catch_3e

    move-object v2, v5

    .line 997
    goto :goto_53

    .line 995
    :catch_3e
    move-exception v5

    .line 996
    .local v5, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .end local v5    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_53
    if-eqz v2, :cond_7c

    .line 1001
    array-length v5, v2

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1002
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oaBytes length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/16 v0, 0xd0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1006
    array-length v0, v2

    sub-int/2addr v0, v4

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_89

    .line 1008
    :cond_7c
    const-string v4, "write a empty address for deliver pdu"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1010
    const/16 v0, 0x91

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1015
    :goto_89
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1017
    return-object v1
.end method

.method public static getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    .registers 24
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originalAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "header"    # [B
    .param p4, "timestamp"    # J
    .param p6, "encoding"    # I
    .param p7, "language"    # I

    .line 829
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p7

    const-string v5, "Implausible EncodeException "

    const-string v6, "Implausible UnsupportedEncodingException "

    const-string v7, "MtkSmsMessage"

    const-string v0, "SmsMessage: get deliver pdu"

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    if-eqz v2, :cond_103

    if-nez v1, :cond_1c

    move-object/from16 v13, p0

    const/4 v5, 0x0

    goto/16 :goto_106

    .line 835
    :cond_1c
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;-><init>()V

    move-object v9, v0

    .line 837
    .local v9, "ret":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SmsMessage: UDHI = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_32

    move v12, v10

    goto :goto_33

    :cond_32
    move v12, v11

    :goto_33
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    if-eqz v3, :cond_42

    const/16 v0, 0x40

    goto :goto_43

    :cond_42
    move v0, v11

    :goto_43
    or-int/2addr v0, v11

    int-to-byte v12, v0

    .line 840
    .local v12, "mtiByte":B
    move-object/from16 v13, p0

    invoke-static {v13, v1, v12, v9}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v14

    .line 844
    .local v14, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p6, :cond_50

    .line 846
    const/4 v0, 0x1

    move v15, v0

    .end local p6    # "encoding":I
    .local v0, "encoding":I
    goto :goto_52

    .line 844
    .end local v0    # "encoding":I
    .restart local p6    # "encoding":I
    :cond_50
    move/from16 v15, p6

    .line 849
    .end local p6    # "encoding":I
    .local v15, "encoding":I
    :goto_52
    :try_start_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get SubmitPdu with Lang "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    if-ne v15, v10, :cond_75

    .line 852
    invoke-static {v2, v3, v11, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .local v0, "userData":[B
    goto :goto_a0

    .line 853
    .end local v0    # "userData":[B
    :cond_75
    if-lez v4, :cond_9b

    const/4 v0, 0x3

    if-eq v15, v0, :cond_9b

    .line 854
    const/16 v0, 0xc

    if-ne v15, v0, :cond_83

    .line 857
    invoke-static {v2, v3, v11, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_99

    .line 859
    .end local v0    # "userData":[B
    :cond_83
    const/16 v0, 0xb

    if-ne v15, v0, :cond_8c

    .line 862
    invoke-static {v2, v3, v4, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_99

    .line 864
    .end local v0    # "userData":[B
    :cond_8c
    const/16 v0, 0xd

    if-ne v15, v0, :cond_95

    .line 865
    invoke-static {v2, v3, v4, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_99

    .line 869
    .end local v0    # "userData":[B
    :cond_95
    invoke-static {v2, v3, v11, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_99
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_52 .. :try_end_99} :catch_b1

    .line 871
    .restart local v0    # "userData":[B
    :goto_99
    const/4 v15, 0x1

    goto :goto_a0

    .line 874
    .end local v0    # "userData":[B
    :cond_9b
    :try_start_9b
    invoke-static/range {p2 .. p3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_9f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9b .. :try_end_9f} :catch_a9
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_9b .. :try_end_9f} :catch_a1

    .line 885
    .restart local v0    # "userData":[B
    nop

    .line 904
    :goto_a0
    goto :goto_b9

    .line 880
    .end local v0    # "userData":[B
    :catch_a1
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 881
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_a4
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    const/4 v5, 0x0

    return-object v5

    .line 875
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_a9
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 876
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_a4 .. :try_end_af} :catch_b1

    .line 879
    const/4 v5, 0x0

    return-object v5

    .line 887
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_b1
    move-exception v0

    move-object v8, v0

    .line 891
    .local v8, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_b3
    invoke-static/range {p2 .. p3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_b7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b3 .. :try_end_b7} :catch_fb
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_b3 .. :try_end_b7} :catch_f3

    .line 892
    .local v0, "userData":[B
    const/4 v15, 0x3

    .line 903
    nop

    .line 906
    .end local v8    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_b9
    aget-byte v5, v0, v11

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa0

    if-le v5, v6, :cond_c8

    .line 907
    const-string v5, "SmsMessage: message is too long"

    invoke-static {v7, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v5, 0x0

    return-object v5

    .line 912
    :cond_c8
    if-ne v15, v10, :cond_ce

    .line 913
    invoke-virtual {v14, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_d3

    .line 915
    :cond_ce
    const/16 v5, 0x8

    invoke-virtual {v14, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 922
    :goto_d3
    invoke-static/range {p4 .. p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parseSCTimestamp(J)[B

    move-result-object v5

    .line 923
    .local v5, "scts":[B
    if-eqz v5, :cond_de

    .line 924
    array-length v6, v5

    invoke-virtual {v14, v5, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e8

    .line 926
    :cond_de
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_df
    const/4 v7, 0x7

    if-ge v6, v7, :cond_e8

    .line 927
    invoke-virtual {v14, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 926
    add-int/lit8 v6, v6, 0x1

    goto :goto_df

    .line 931
    .end local v6    # "i":I
    :cond_e8
    :goto_e8
    array-length v6, v0

    invoke-virtual {v14, v0, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 932
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v9, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedMessage:[B

    .line 934
    return-object v9

    .line 898
    .end local v0    # "userData":[B
    .end local v5    # "scts":[B
    .restart local v8    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_f3
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 899
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    const/4 v5, 0x0

    return-object v5

    .line 893
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_fb
    move-exception v0

    const/4 v5, 0x0

    move-object v10, v0

    move-object v0, v10

    .line 894
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    return-object v5

    .line 831
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v9    # "ret":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    .end local v12    # "mtiByte":B
    .end local v14    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "encoding":I
    .restart local p6    # "encoding":I
    :cond_103
    move-object/from16 v13, p0

    const/4 v5, 0x0

    .line 832
    :goto_106
    return-object v5
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 9
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "originalPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 531
    invoke-static {p2, p3}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeader(II)[B

    move-result-object v0

    .line 532
    .local v0, "smsHeaderData":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkSmsMessage: get submit pdu originalPort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkSmsMessage"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-nez v0, :cond_20

    if-eqz p3, :cond_20

    .line 534
    const/4 v1, 0x0

    return-object v1

    .line 536
    :cond_20
    if-nez p3, :cond_27

    .line 537
    invoke-static {p0, p1, p4, p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    .line 540
    :cond_27
    invoke-static {p0, p1, p4, v0, p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 21
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "statusReportRequested"    # Z

    .line 557
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getCurrentSysLanguage()I

    move-result v0

    .line 558
    .local v0, "language":I
    const/4 v1, -0x1

    .line 559
    .local v1, "singleId":I
    const/4 v2, -0x1

    .line 560
    .local v2, "lockingId":I
    const/4 v3, 0x0

    .line 561
    .local v3, "encoding":I
    new-instance v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v4}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 563
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v13, p2

    invoke-static {v13, v0, v4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeStringWithSpecialLang(Ljava/lang/CharSequence;ILcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 564
    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v5, :cond_21

    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v5, :cond_21

    .line 565
    const/16 v3, 0xd

    .line 566
    move v2, v0

    move v1, v0

    goto :goto_35

    .line 567
    :cond_21
    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v5, :cond_29

    .line 568
    const/16 v3, 0xc

    .line 569
    move v2, v0

    goto :goto_35

    .line 570
    :cond_29
    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v5, :cond_31

    .line 571
    const/16 v3, 0xb

    .line 572
    move v1, v0

    goto :goto_35

    .line 574
    :cond_31
    const/4 v3, 0x1

    .line 575
    const/4 v0, -0x1

    goto :goto_35

    .line 578
    :cond_34
    const/4 v3, 0x3

    .line 581
    :goto_35
    move/from16 v14, p3

    invoke-static {v14, v1, v2}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(III)[B

    move-result-object v15

    .line 584
    .local v15, "smsHeaderData":[B
    const/4 v12, -0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object v9, v15

    move v10, v3

    move v11, v0

    invoke-static/range {v5 .. v12}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v5

    return-object v5
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 25
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I
    .param p8, "validityPeriod"    # I

    .line 1245
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p8

    if-eqz v2, :cond_178

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto/16 :goto_179

    .line 1249
    :cond_d
    const/4 v5, 0x1

    const-string v6, "MtkSmsMessage"

    const/4 v7, 0x0

    if-nez p5, :cond_7e

    .line 1251
    invoke-static {v2, v7}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 1252
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v8, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1253
    .end local p5    # "encoding":I
    .local v8, "encoding":I
    iget v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 1254
    .end local p6    # "languageTable":I
    .local v9, "languageTable":I
    iget v10, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 1256
    .end local p7    # "languageShiftTable":I
    .local v10, "languageShiftTable":I
    if-ne v8, v5, :cond_7b

    if-nez v9, :cond_23

    if-eqz v10, :cond_7b

    .line 1257
    :cond_23
    if-eqz p4, :cond_6c

    .line 1258
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    .line 1259
    .local v11, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v12, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v12, v9, :cond_35

    iget v12, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v12, v10, :cond_32

    goto :goto_35

    :cond_32
    move-object/from16 v12, p4

    goto :goto_6b

    .line 1261
    :cond_35
    :goto_35
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating language table in SMS header: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iput v9, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1265
    iput v10, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1266
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v12

    .line 1268
    .end local v11    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local p4    # "header":[B
    .local v12, "header":[B
    :goto_6b
    goto :goto_86

    .line 1269
    .end local v12    # "header":[B
    .restart local p4    # "header":[B
    :cond_6c
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->makeSmsHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/MtkSmsHeader;

    .line 1270
    .local v11, "smsHeader":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    iput v9, v11, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageTable:I

    .line 1271
    iput v10, v11, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageShiftTable:I

    .line 1272
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v12

    .end local p4    # "header":[B
    .restart local v12    # "header":[B
    goto :goto_86

    .line 1277
    .end local v0    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v11    # "smsHeader":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    .end local v12    # "header":[B
    .restart local p4    # "header":[B
    :cond_7b
    move-object/from16 v12, p4

    goto :goto_86

    .line 1249
    .end local v8    # "encoding":I
    .end local v9    # "languageTable":I
    .end local v10    # "languageShiftTable":I
    .restart local p5    # "encoding":I
    .restart local p6    # "languageTable":I
    .restart local p7    # "languageShiftTable":I
    :cond_7e
    move-object/from16 v12, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 1277
    .end local p4    # "header":[B
    .end local p5    # "encoding":I
    .end local p6    # "languageTable":I
    .end local p7    # "languageShiftTable":I
    .restart local v8    # "encoding":I
    .restart local v9    # "languageTable":I
    .restart local v10    # "languageShiftTable":I
    .restart local v12    # "header":[B
    :goto_86
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v11, v0

    .line 1279
    .local v11, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v0, 0x0

    .line 1280
    .local v0, "validityPeriodFormat":I
    const/4 v13, -0x1

    .line 1284
    .local v13, "relativeValidityPeriod":I
    invoke-static/range {p8 .. p8}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getRelativeValidityPeriod(I)I

    move-result v14

    move v13, v14

    if-ltz v14, :cond_98

    .line 1285
    const/4 v0, 0x2

    move v14, v0

    goto :goto_99

    .line 1284
    :cond_98
    move v14, v0

    .line 1288
    .end local v0    # "validityPeriodFormat":I
    .local v14, "validityPeriodFormat":I
    :goto_99
    shl-int/lit8 v0, v14, 0x3

    or-int/2addr v0, v5

    .line 1289
    if-eqz v12, :cond_a1

    const/16 v15, 0x40

    goto :goto_a2

    :cond_a1
    move v15, v7

    :goto_a2
    or-int/2addr v0, v15

    int-to-byte v15, v0

    .line 1291
    .local v15, "mtiByte":B
    move-object/from16 v7, p0

    move/from16 v5, p3

    invoke-static {v7, v1, v15, v5, v11}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 1294
    .local v4, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v4, :cond_b0

    .line 1295
    const/4 v6, 0x0

    return-object v6

    .line 1301
    :cond_b0
    const-string v1, "Implausible EncodeException "

    const-string v5, "Implausible UnsupportedEncodingException "

    const/4 v7, 0x1

    if-ne v8, v7, :cond_be

    .line 1302
    :try_start_b7
    invoke-static {v2, v12, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_bb
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_b7 .. :try_end_bb} :catch_bc

    .local v0, "userData":[B
    goto :goto_c3

    .line 1319
    .end local v0    # "userData":[B
    :catch_bc
    move-exception v0

    goto :goto_d4

    .line 1306
    :cond_be
    :try_start_be
    invoke-static {v2, v12}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_c2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_be .. :try_end_c2} :catch_cc
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_be .. :try_end_c2} :catch_c4

    .line 1317
    .restart local v0    # "userData":[B
    nop

    .line 1336
    :goto_c3
    goto :goto_db

    .line 1312
    .end local v0    # "userData":[B
    :catch_c4
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1313
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_c7
    invoke-static {v6, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1316
    const/4 v1, 0x0

    return-object v1

    .line 1307
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_cc
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1308
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v6, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_c7 .. :try_end_d2} :catch_bc

    .line 1311
    const/4 v1, 0x0

    return-object v1

    .line 1319
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :goto_d4
    move-object v7, v0

    .line 1323
    .local v7, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_d5
    invoke-static {v2, v12}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_d9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d5 .. :try_end_d9} :catch_170
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_d5 .. :try_end_d9} :catch_168

    .line 1324
    .local v0, "userData":[B
    const/4 v8, 0x3

    .line 1335
    nop

    .line 1338
    .end local v7    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_db
    const-string v1, "Message too long ("

    const/16 v5, 0xff

    const/4 v7, 0x1

    if-ne v8, v7, :cond_10c

    .line 1339
    const/4 v7, 0x0

    aget-byte v2, v0, v7

    and-int/2addr v2, v5

    const/16 v5, 0xa0

    if-le v2, v5, :cond_108

    .line 1342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v7

    const/16 v5, 0xff

    and-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " septets)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v1, 0x0

    return-object v1

    .line 1354
    :cond_108
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_139

    .line 1356
    :cond_10c
    const/4 v7, 0x0

    aget-byte v2, v0, v7

    const/16 v5, 0xff

    and-int/2addr v2, v5

    const/16 v5, 0x8c

    if-le v2, v5, :cond_134

    .line 1359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v7

    const/16 v5, 0xff

    and-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/4 v1, 0x0

    return-object v1

    .line 1365
    :cond_134
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1368
    :goto_139
    if-ltz v3, :cond_156

    const/16 v1, 0xff

    if-gt v3, v1, :cond_156

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write validity period into pdu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1374
    :cond_156
    const/4 v1, 0x2

    if-ne v14, v1, :cond_15c

    .line 1376
    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1379
    :cond_15c
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1380
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v11, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1381
    return-object v11

    .line 1330
    .end local v0    # "userData":[B
    .restart local v7    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_168
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1331
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v6, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1334
    const/4 v1, 0x0

    return-object v1

    .line 1325
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_170
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v2

    .line 1326
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v6, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1329
    return-object v1

    .line 1245
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v8    # "encoding":I
    .end local v9    # "languageTable":I
    .end local v10    # "languageShiftTable":I
    .end local v11    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v12    # "header":[B
    .end local v13    # "relativeValidityPeriod":I
    .end local v14    # "validityPeriodFormat":I
    .end local v15    # "mtiByte":B
    .restart local p4    # "header":[B
    .restart local p5    # "encoding":I
    .restart local p6    # "languageTable":I
    .restart local p7    # "languageShiftTable":I
    :cond_178
    const/4 v1, 0x0

    .line 1246
    :goto_179
    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 10
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "statusReportRequested"    # Z

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get SubmitPdu for auto regist data.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MtkSmsMessage"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    array-length v0, p2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const/4 v4, 0x0

    const/16 v5, 0x8c

    if-le v0, v5, :cond_3d

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data length is too long,SMS data.length = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-object v4

    .line 660
    :cond_3d
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 661
    .local v0, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-static {p0, p1, v3, p3, v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 664
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v1, :cond_49

    .line 665
    return-object v4

    .line 670
    :cond_49
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 673
    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 676
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 678
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 679
    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 9
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "smsHeaderData"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 604
    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8c

    if-le v0, v2, :cond_2a

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS data message may only contain "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MtkSmsMessage"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-object v1

    .line 610
    :cond_2a
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 611
    .local v0, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v2, 0x41

    invoke-static {p0, p1, v2, p4, v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    .line 615
    .local v2, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v2, :cond_38

    .line 616
    return-object v1

    .line 620
    :cond_38
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 625
    array-length v1, p2

    array-length v3, p3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 628
    array-length v1, p3

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 629
    array-length v1, p3

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 632
    array-length v1, p2

    invoke-virtual {v2, p2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 634
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 635
    return-object v0
.end method

.method public static getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 25
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "language"    # I
    .param p7, "validityPeriod"    # I

    .line 697
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    const-string v5, "Implausible EncodeException "

    const-string v6, "Implausible UnsupportedEncodingException "

    const-string v7, "MtkSmsMessage"

    const-string v0, "SmsMessage: get submit pdu with Lang"

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v8, 0x0

    if-eqz v2, :cond_102

    if-nez v1, :cond_1f

    move-object/from16 v15, p0

    move/from16 v13, p3

    move-object v5, v8

    goto/16 :goto_107

    .line 703
    :cond_1f
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v9, v0

    .line 705
    .local v9, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v0, 0x0

    .line 706
    .local v0, "validityPeriodFormat":I
    const/4 v10, -0x1

    .line 710
    .local v10, "relativeValidityPeriod":I
    invoke-static/range {p7 .. p7}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getRelativeValidityPeriod(I)I

    move-result v11

    move v10, v11

    if-ltz v11, :cond_31

    .line 711
    const/4 v0, 0x2

    move v11, v0

    goto :goto_32

    .line 710
    :cond_31
    move v11, v0

    .line 714
    .end local v0    # "validityPeriodFormat":I
    .local v11, "validityPeriodFormat":I
    :goto_32
    shl-int/lit8 v0, v11, 0x3

    const/4 v12, 0x1

    or-int/2addr v0, v12

    .line 715
    if-eqz v3, :cond_3b

    const/16 v14, 0x40

    goto :goto_3c

    :cond_3b
    const/4 v14, 0x0

    :goto_3c
    or-int/2addr v0, v14

    int-to-byte v14, v0

    .line 717
    .local v14, "mtiByte":B
    move-object/from16 v15, p0

    move/from16 v13, p3

    invoke-static {v15, v1, v14, v13, v9}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v12

    .line 720
    .local v12, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v12, :cond_49

    .line 721
    return-object v8

    .line 726
    :cond_49
    if-nez p5, :cond_4e

    .line 728
    const/4 v0, 0x1

    move v8, v0

    .end local p5    # "encoding":I
    .local v0, "encoding":I
    goto :goto_50

    .line 726
    .end local v0    # "encoding":I
    .restart local p5    # "encoding":I
    :cond_4e
    move/from16 v8, p5

    .line 731
    .end local p5    # "encoding":I
    .local v8, "encoding":I
    :goto_50
    :try_start_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get SubmitPdu with Lang "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v1, 0x1

    if-ne v8, v1, :cond_75

    .line 734
    const/4 v1, 0x0

    invoke-static {v2, v3, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .local v0, "userData":[B
    goto :goto_a3

    .line 735
    .end local v0    # "userData":[B
    :cond_75
    if-lez v4, :cond_9e

    const/4 v0, 0x3

    if-eq v8, v0, :cond_9e

    .line 736
    const/16 v0, 0xc

    if-ne v8, v0, :cond_84

    .line 739
    const/4 v1, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_9c

    .line 741
    .end local v0    # "userData":[B
    :cond_84
    const/4 v1, 0x0

    const/16 v0, 0xb

    if-ne v8, v0, :cond_8e

    .line 744
    invoke-static {v2, v3, v4, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_9c

    .line 746
    .end local v0    # "userData":[B
    :cond_8e
    const/16 v0, 0xd

    if-ne v8, v0, :cond_97

    .line 747
    invoke-static {v2, v3, v4, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_9c

    .line 751
    .end local v0    # "userData":[B
    :cond_97
    const/4 v1, 0x0

    invoke-static {v2, v3, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_9c
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_50 .. :try_end_9c} :catch_b4

    .line 753
    .restart local v0    # "userData":[B
    :goto_9c
    const/4 v8, 0x1

    goto :goto_a3

    .line 756
    .end local v0    # "userData":[B
    :cond_9e
    :try_start_9e
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_a2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9e .. :try_end_a2} :catch_ac
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_9e .. :try_end_a2} :catch_a4

    .line 767
    .restart local v0    # "userData":[B
    nop

    .line 786
    :goto_a3
    goto :goto_bc

    .line 762
    .end local v0    # "userData":[B
    :catch_a4
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 763
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_a7
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    const/4 v1, 0x0

    return-object v1

    .line 757
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_ac
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 758
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_a7 .. :try_end_b2} :catch_b4

    .line 761
    const/4 v1, 0x0

    return-object v1

    .line 769
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_b4
    move-exception v0

    move-object v1, v0

    .line 773
    .local v1, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_b6
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_ba
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b6 .. :try_end_ba} :catch_f8
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_b6 .. :try_end_ba} :catch_f0

    .line 774
    .local v0, "userData":[B
    const/4 v8, 0x3

    .line 785
    nop

    .line 788
    .end local v1    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_bc
    const/4 v1, 0x1

    if-ne v8, v1, :cond_ce

    .line 789
    const/4 v1, 0x0

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa0

    if-le v5, v6, :cond_ca

    .line 791
    const/4 v5, 0x0

    return-object v5

    .line 801
    :cond_ca
    invoke-virtual {v12, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_de

    .line 803
    :cond_ce
    const/4 v1, 0x0

    const/4 v5, 0x0

    aget-byte v6, v0, v1

    and-int/lit16 v1, v6, 0xff

    const/16 v6, 0x8c

    if-le v1, v6, :cond_d9

    .line 805
    return-object v5

    .line 812
    :cond_d9
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 817
    :goto_de
    const/4 v1, 0x2

    if-ne v11, v1, :cond_e4

    .line 819
    invoke-virtual {v12, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 822
    :cond_e4
    array-length v1, v0

    const/4 v5, 0x0

    invoke-virtual {v12, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 823
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 824
    return-object v9

    .line 780
    .end local v0    # "userData":[B
    .restart local v1    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_f0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 781
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    const/4 v5, 0x0

    return-object v5

    .line 775
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_f8
    move-exception v0

    const/4 v5, 0x0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 776
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    return-object v5

    .line 699
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v8    # "encoding":I
    .end local v9    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v10    # "relativeValidityPeriod":I
    .end local v11    # "validityPeriodFormat":I
    .end local v12    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "mtiByte":B
    .restart local p5    # "encoding":I
    :cond_102
    move-object/from16 v15, p0

    move/from16 v13, p3

    move-object v5, v8

    .line 700
    :goto_107
    return-object v5
.end method

.method private static intToGsmBCDByte(I)B
    .registers 5
    .param p0, "value"    # I

    .line 954
    const-string v0, "MtkSmsMessage"

    if-gez p0, :cond_1a

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[time invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v0, 0x0

    return v0

    .line 958
    :cond_1a
    rem-int/lit8 p0, p0, 0x64

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[time value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    div-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0xf

    rem-int/lit8 v2, p0, 0xa

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 963
    .local v1, "b":B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[time bcd value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return v1
.end method

.method public static newFromCDS([B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .registers 4
    .param p0, "pdu"    # [B

    .line 170
    :try_start_0
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 171
    .local v0, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    .line 172
    return-object v0

    .line 173
    .end local v0    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    :catch_9
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MtkSmsMessage"

    const-string v2, "CDS SMS PDU parsing failed: "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    const/4 v1, 0x0

    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .registers 4
    .param p0, "lines"    # [Ljava/lang/String;

    .line 158
    :try_start_0
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 159
    .local v0, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_10

    .line 160
    return-object v0

    .line 161
    .end local v0    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    :catch_10
    move-exception v0

    .line 162
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MtkSmsMessage"

    const-string v2, "SMS PDU parsing failed: "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSCTimestamp(J)[B
    .registers 7
    .param p0, "millis"    # J

    .line 938
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 941
    const/4 v1, 0x7

    new-array v1, v1, [B

    .line 942
    .local v1, "scts":[B
    iget v2, v0, Landroid/text/format/Time;->year:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 943
    iget v2, v0, Landroid/text/format/Time;->month:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    aput-byte v2, v1, v4

    .line 944
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    .line 945
    iget v2, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    .line 946
    iget v2, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    .line 947
    iget v2, v0, Landroid/text/format/Time;->second:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x5

    aput-byte v2, v1, v4

    .line 948
    invoke-static {v3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    .line 950
    return-object v1
.end method


# virtual methods
.method public getDestinationAddress()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDestinationAddress:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_6
    return-object v0
.end method

.method public getEncodingType()I
    .registers 2

    .line 1393
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mEncodingType:I

    return v0
.end method

.method protected parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 4
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 240
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 243
    return-void
.end method

.method protected parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 4
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 253
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 256
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_f

    .line 257
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDestinationAddress:Ljava/lang/String;

    .line 259
    :cond_f
    return-void
.end method

.method protected parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .registers 19
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "hasUserDataHeader"    # Z

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 271
    .local v3, "hasMessageClass":Z
    const/4 v4, 0x0

    .line 273
    .local v4, "userDataCompressed":Z
    const/4 v5, 0x0

    .line 276
    .local v5, "encodingType":I
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    const-string v8, " Dont store = "

    const v9, 0x111013c

    const/16 v10, 0xd0

    const/16 v11, 0xe0

    const-string v12, "MtkSmsMessage"

    const/16 v13, 0xf0

    const/4 v14, 0x1

    if-nez v6, :cond_84

    .line 277
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_26

    move v6, v14

    goto :goto_27

    :cond_26
    const/4 v6, 0x0

    :goto_27
    move v4, v6

    .line 278
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_30

    move v6, v14

    goto :goto_31

    :cond_30
    const/4 v6, 0x0

    :goto_31
    move v3, v6

    .line 280
    if-eqz v4, :cond_4e

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_162

    .line 284
    :cond_4e
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_298

    goto :goto_82

    .line 290
    :pswitch_58
    const/4 v5, 0x3

    .line 291
    goto :goto_82

    .line 296
    :pswitch_5a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 297
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-eqz v15, :cond_66

    .line 299
    const/4 v5, 0x2

    .line 300
    goto :goto_82

    .line 304
    .end local v6    # "r":Landroid/content/res/Resources;
    :cond_66
    :pswitch_66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v5, 0x2

    goto :goto_82

    .line 286
    :pswitch_80
    const/4 v5, 0x1

    .line 287
    nop

    .line 307
    :goto_82
    goto/16 :goto_162

    .line 310
    :cond_84
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v13

    if-ne v6, v13, :cond_97

    .line 311
    const/4 v3, 0x1

    .line 312
    const/4 v4, 0x0

    .line 314
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_94

    .line 316
    const/4 v5, 0x1

    goto/16 :goto_162

    .line 319
    :cond_94
    const/4 v5, 0x2

    goto/16 :goto_162

    .line 321
    :cond_97
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v13

    const/16 v15, 0xc0

    if-eq v6, v15, :cond_eb

    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v13

    if-eq v6, v10, :cond_eb

    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v13

    if-ne v6, v11, :cond_a9

    goto :goto_eb

    .line 362
    :cond_a9
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v15

    if-ne v6, v7, :cond_d1

    .line 365
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v15, 0x84

    if-ne v6, v15, :cond_b7

    .line 367
    const/4 v5, 0x4

    goto/16 :goto_162

    .line 369
    :cond_b7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_162

    .line 373
    :cond_d1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_162

    .line 330
    :cond_eb
    :goto_eb
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v13

    if-ne v6, v11, :cond_f2

    .line 331
    const/4 v5, 0x3

    goto :goto_f3

    .line 333
    :cond_f2
    const/4 v5, 0x1

    .line 336
    :goto_f3
    const/4 v4, 0x0

    .line 337
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v9, 0x8

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_fd

    move v6, v14

    goto :goto_fe

    :cond_fd
    const/4 v6, 0x0

    .line 341
    .local v6, "active":Z
    :goto_fe
    iget v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_146

    .line 342
    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIsMwi:Z

    .line 343
    iput-boolean v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiSense:Z

    .line 344
    iget v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v9, v13

    if-ne v9, v15, :cond_10f

    move v9, v14

    goto :goto_110

    :cond_10f
    const/4 v9, 0x0

    :goto_110
    iput-boolean v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    .line 347
    if-ne v6, v14, :cond_118

    .line 348
    const/4 v9, -0x1

    iput v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    goto :goto_11b

    .line 350
    :cond_118
    const/4 v9, 0x0

    iput v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    .line 353
    :goto_11b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " vmail count = "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_161

    .line 358
    :cond_146
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIsMwi:Z

    .line 359
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MWI in DCS for fax/email/other: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v6    # "active":Z
    :goto_161
    nop

    .line 378
    :goto_162
    if-ne v5, v14, :cond_166

    move v6, v14

    goto :goto_167

    :cond_166
    const/4 v6, 0x0

    :goto_167
    invoke-virtual {v1, v2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v6

    .line 380
    .local v6, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v9

    iput-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserData:[B

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 385
    iput v5, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mEncodingType:I

    .line 396
    if-eqz v2, :cond_228

    iget-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_228

    .line 397
    iget-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_18d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_228

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 398
    .local v15, "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v11, v15, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v11, v11, 0xff

    .line 405
    .local v11, "msgInd":I
    if-eqz v11, :cond_1b9

    if-ne v11, v7, :cond_1a2

    goto :goto_1b9

    .line 451
    :cond_1a2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0xf0

    goto :goto_220

    .line 406
    :cond_1b9
    :goto_1b9
    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIsMwi:Z

    .line 407
    if-ne v11, v7, :cond_1c5

    .line 409
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    const/16 v7, 0xe0

    const/16 v13, 0xf0

    goto :goto_1e9

    .line 410
    :cond_1c5
    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    if-nez v10, :cond_1e5

    .line 418
    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v13, 0xf0

    and-int/2addr v10, v13

    const/16 v7, 0xd0

    if-eq v10, v7, :cond_1da

    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v10, v13

    const/16 v7, 0xe0

    if-ne v10, v7, :cond_1e2

    goto :goto_1dc

    :cond_1da
    const/16 v7, 0xe0

    :goto_1dc
    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v10, v10, 0x3

    if-eqz v10, :cond_1e9

    .line 424
    :cond_1e2
    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    goto :goto_1e9

    .line 410
    :cond_1e5
    const/16 v7, 0xe0

    const/16 v13, 0xf0

    .line 428
    :cond_1e9
    :goto_1e9
    iget v10, v15, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v10, v10, 0xff

    iput v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    .line 436
    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    if-lez v10, :cond_1f7

    .line 437
    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiSense:Z

    const/4 v10, 0x0

    goto :goto_1fa

    .line 439
    :cond_1f7
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiSense:Z

    .line 441
    :goto_1fa
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " Vmail count = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v11    # "msgInd":I
    .end local v15    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :goto_220
    const/16 v7, 0x80

    const/16 v10, 0xd0

    const/16 v11, 0xe0

    goto/16 :goto_18d

    .line 457
    :cond_228
    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_2a4

    goto :goto_26d

    .line 485
    :pswitch_22d
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_26d

    .line 481
    :pswitch_234
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 482
    goto :goto_26d

    .line 465
    :pswitch_23b
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 466
    .local v8, "r":Landroid/content/res/Resources;
    const v9, 0x111013c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_24f

    .line 468
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_26d

    .line 470
    :cond_24f
    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 472
    goto :goto_26d

    .line 475
    .end local v8    # "r":Landroid/content/res/Resources;
    :pswitch_252
    nop

    .line 476
    if-eqz v2, :cond_25a

    iget-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v9, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto :goto_25b

    :cond_25a
    const/4 v9, 0x0

    .line 477
    :goto_25b
    if-eqz v2, :cond_262

    iget-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v15, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto :goto_263

    :cond_262
    const/4 v15, 0x0

    .line 475
    :goto_263
    invoke-virtual {v1, v6, v9, v15}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 478
    goto :goto_26d

    .line 459
    :pswitch_26a
    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 460
    nop

    .line 489
    :goto_26d
    iget-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v7, :cond_274

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parseMessageBody()V

    .line 493
    :cond_274
    if-nez v3, :cond_27b

    .line 494
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_297

    .line 496
    :cond_27b
    iget v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_2b2

    goto :goto_297

    .line 507
    :pswitch_283
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_297

    .line 504
    :pswitch_288
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 505
    goto :goto_297

    .line 501
    :pswitch_28d
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 502
    goto :goto_297

    .line 498
    :pswitch_292
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 499
    nop

    .line 511
    :goto_297
    return-void

    :pswitch_data_298
    .packed-switch 0x0
        :pswitch_80
        :pswitch_5a
        :pswitch_58
        :pswitch_66
    .end packed-switch

    :pswitch_data_2a4
    .packed-switch 0x0
        :pswitch_26a
        :pswitch_252
        :pswitch_23b
        :pswitch_234
        :pswitch_22d
    .end packed-switch

    :pswitch_data_2b2
    .packed-switch 0x0
        :pswitch_292
        :pswitch_28d
        :pswitch_288
        :pswitch_283
    .end packed-switch
.end method

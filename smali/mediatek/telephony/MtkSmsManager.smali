.class public final Lmediatek/telephony/MtkSmsManager;
.super Ljava/lang/Object;
.source "MtkSmsManager.java"


# static fields
.field private static final DEFAULT_SUBSCRIPTION_ID:I = -0x3ea

.field private static DIALOG_TYPE_KEY:Ljava/lang/String; = null

.field public static final ERROR_CODE_GENERIC_ERROR:B = 0x1t

.field public static final ERROR_CODE_NO_ERROR:B = 0x0t

.field public static final ERROR_CODE_NO_SUPPORT_SC_ADDR:B = 0x2t

.field public static final EXTRA_PARAMS_ENCODING_TYPE:Ljava/lang/String; = "encoding_type"

.field public static final EXTRA_PARAMS_VALIDITY_PERIOD:Ljava/lang/String; = "validity_period"

.field public static final GET_SC_ADDRESS_KEY_ADDRESS:Ljava/lang/String; = "scAddress"

.field public static final GET_SC_ADDRESS_KEY_RESULT:Ljava/lang/String; = "errorCode"

.field public static final RESULT_ERROR_INVALID_ADDRESS:I = 0x8

.field public static final RESULT_ERROR_SIM_MEM_FULL:I = 0x7

.field public static final RESULT_ERROR_SUCCESS:I = 0x0

.field private static final SMS_PICK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MtkSmsManager"

.field public static final VALIDITY_PERIOD_MAX_DURATION:I = 0xff

.field public static final VALIDITY_PERIOD_NO_DURATION:I = -0x1

.field public static final VALIDITY_PERIOD_ONE_DAY:I = 0xa7

.field public static final VALIDITY_PERIOD_ONE_HOUR:I = 0xb

.field public static final VALIDITY_PERIOD_SIX_HOURS:I = 0x47

.field public static final VALIDITY_PERIOD_TWELVE_HOURS:I = 0x8f

.field private static final sInstance:Lmediatek/telephony/MtkSmsManager;

.field private static final sLockObject:Ljava/lang/Object;

.field private static final sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmediatek/telephony/MtkSmsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    new-instance v0, Lmediatek/telephony/MtkSmsManager;

    const/16 v1, -0x3ea

    invoke-direct {v0, v1}, Lmediatek/telephony/MtkSmsManager;-><init>(I)V

    sput-object v0, Lmediatek/telephony/MtkSmsManager;->sInstance:Lmediatek/telephony/MtkSmsManager;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmediatek/telephony/MtkSmsManager;->sLockObject:Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmediatek/telephony/MtkSmsManager;->sSubInstances:Ljava/util/Map;

    .line 97
    const-string v0, "dialog_type"

    sput-object v0, Lmediatek/telephony/MtkSmsManager;->DIALOG_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2
    .param p1, "subId"    # I

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p1, p0, Lmediatek/telephony/MtkSmsManager;->mSubId:I

    .line 214
    return-void
.end method

.method public static checkSimPickActivityNeeded(Z)Z
    .registers 2
    .param p0, "needed"    # Z

    .line 1706
    const/4 v0, 0x0

    return v0
.end method

.method private static createFromEfRecordByMode(II[BI)Lmediatek/telephony/MtkSmsMessage;
    .registers 6
    .param p0, "subId"    # I
    .param p1, "index"    # I
    .param p2, "data"    # [B
    .param p3, "mode"    # I

    .line 1217
    const/4 v0, 0x0

    .line 1219
    .local v0, "sms":Lmediatek/telephony/MtkSmsMessage;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_5

    goto :goto_b

    .line 1222
    :cond_5
    const-string v1, "3gpp"

    invoke-static {p1, p2, v1}, Lmediatek/telephony/MtkSmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v0

    .line 1225
    :goto_b
    if-eqz v0, :cond_10

    .line 1226
    invoke-virtual {v0, p0}, Lmediatek/telephony/MtkSmsMessage;->setSubId(I)V

    .line 1229
    :cond_10
    return-object v0
.end method

.method private createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lmediatek/telephony/MtkSmsMessage;",
            ">;"
        }
    .end annotation

    .line 339
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmediatek/telephony/MtkSmsMessage;>;"
    const-string v1, "MtkSmsManager"

    const-string v2, "createMessageListFromRawRecords"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-eqz p1, :cond_72

    .line 344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 345
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_5d

    .line 346
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SmsRawData;

    .line 348
    .local v4, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v4, :cond_5a

    .line 350
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 351
    .local v5, "context":Landroid/content/Context;
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    iget v7, p0, Lmediatek/telephony/MtkSmsManager;->mSubId:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v6

    .line 352
    .local v6, "activePhone":I
    const/4 v7, 0x2

    if-ne v7, v6, :cond_35

    .line 353
    const-string v7, "3gpp2"

    goto :goto_37

    :cond_35
    const-string v7, "3gpp"

    .line 354
    .local v7, "phoneType":Ljava/lang/String;
    :goto_37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phoneType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v9

    invoke-static {v8, v9, v7}, Lmediatek/telephony/MtkSmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v8

    .line 358
    .local v8, "sms":Lmediatek/telephony/MtkSmsMessage;
    if-eqz v8, :cond_5a

    .line 359
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v4    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "activePhone":I
    .end local v7    # "phoneType":Ljava/lang/String;
    .end local v8    # "sms":Lmediatek/telephony/MtkSmsMessage;
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 364
    .end local v3    # "i":I
    :cond_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actual sms count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v2    # "count":I
    goto :goto_77

    .line 368
    :cond_72
    const-string v2, "fail to parse SIM sms, records is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_77
    return-object v0
.end method

.method private static createMessageListFromRawRecordsByMode(ILjava/util/List;I)Ljava/util/ArrayList;
    .registers 10
    .param p0, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lmediatek/telephony/MtkSmsMessage;",
            ">;"
        }
    .end annotation

    .line 1179
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    const-string v0, "MtkSmsManager"

    const-string v1, "createMessageListFromRawRecordsByMode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v1, 0x0

    .line 1182
    .local v1, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmediatek/telephony/MtkSmsMessage;>;"
    if-eqz p1, :cond_4a

    .line 1183
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1184
    .local v2, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 1186
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_31

    .line 1187
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SmsRawData;

    .line 1189
    .local v4, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v4, :cond_2e

    .line 1190
    add-int/lit8 v5, v3, 0x1

    .line 1191
    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {p0, v5, v6, p2}, Lmediatek/telephony/MtkSmsManager;->createFromEfRecordByMode(II[BI)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v5

    .line 1192
    .local v5, "singleSms":Lmediatek/telephony/MtkSmsMessage;
    if-eqz v5, :cond_2e

    .line 1193
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    .end local v4    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v5    # "singleSms":Lmediatek/telephony/MtkSmsMessage;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1197
    .end local v3    # "i":I
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actual sms count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    .end local v2    # "count":I
    goto :goto_4f

    .line 1199
    :cond_4a
    const-string v2, "fail to parse SIM sms, records is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :goto_4f
    return-object v1
.end method

.method public static getDefault()Lmediatek/telephony/MtkSmsManager;
    .registers 1

    .line 190
    sget-object v0, Lmediatek/telephony/MtkSmsManager;->sInstance:Lmediatek/telephony/MtkSmsManager;

    return-object v0
.end method

.method private static getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;
    .registers 1

    .line 1298
    const-string v0, "imtksms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v0

    return-object v0
.end method

.method private static getIMtkSmsServiceOrThrow()Lcom/mediatek/internal/telephony/IMtkSms;
    .registers 3

    .line 1290
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v0

    .line 1291
    .local v0, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v0, :cond_7

    .line 1294
    return-object v0

    .line 1292
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "SmsEx is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getISmsService()Lcom/android/internal/telephony/ISms;
    .registers 1

    .line 1314
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .registers 3

    .line 1306
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1307
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_7

    .line 1310
    return-object v0

    .line 1308
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sms is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSmsManagerForSubscriptionId(I)Lmediatek/telephony/MtkSmsManager;
    .registers 5
    .param p0, "subId"    # I

    .line 202
    sget-object v0, Lmediatek/telephony/MtkSmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    sget-object v1, Lmediatek/telephony/MtkSmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediatek/telephony/MtkSmsManager;

    .line 204
    .local v2, "smsManager":Lmediatek/telephony/MtkSmsManager;
    if-nez v2, :cond_1e

    .line 205
    new-instance v3, Lmediatek/telephony/MtkSmsManager;

    invoke-direct {v3, p0}, Lmediatek/telephony/MtkSmsManager;-><init>(I)V

    move-object v2, v3

    .line 206
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1e
    monitor-exit v0

    return-object v2

    .line 209
    .end local v2    # "smsManager":Lmediatek/telephony/MtkSmsManager;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .registers 6
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    .local v0, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    .local v1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    invoke-static {p0, v1, v0}, Lmediatek/telephony/MtkSmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 8
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .line 1124
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4e

    .line 1128
    :cond_a
    invoke-static {p0}, Lmediatek/telephony/MtkSmsManager;->isValidSmsDestinationAddress(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Invalid destinationAddress"

    if-nez v1, :cond_31

    .line 1129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 1130
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 1131
    .local v3, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_27

    .line 1133
    :try_start_21
    invoke-virtual {v3, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_24
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_21 .. :try_end_24} :catch_25

    .line 1134
    :goto_24
    goto :goto_27

    :catch_25
    move-exception v4

    goto :goto_24

    .line 1129
    .end local v3    # "sentIntent":Landroid/app/PendingIntent;
    :cond_27
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1138
    .end local v1    # "i":I
    :cond_2a
    const-string v0, "MtkSmsManager"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v0, 0x0

    return v0

    .line 1142
    :cond_31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1145
    if-eqz p1, :cond_40

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_40

    .line 1149
    return v0

    .line 1146
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1125
    :cond_4e
    :goto_4e
    return v0
.end method

.method private static isValidSmsDestinationAddress(Ljava/lang/String;)Z
    .registers 4
    .param p0, "da"    # Ljava/lang/String;

    .line 1160
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1161
    .local v0, "encodeAddress":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1162
    return v1

    .line 1164
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method private sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;J)V
    .registers 23
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessageForCarrierApp"    # Z
    .param p7, "attributionTag"    # Ljava/lang/String;
    .param p8, "messageId"    # J

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 271
    :try_start_6
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 272
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p7

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p8

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_24

    .line 281
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    goto :goto_2c

    .line 276
    :catch_24
    move-exception v0

    .line 279
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MtkSmsManager"

    const-string v2, "sendTextMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2c
    return-void

    .line 267
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public activateCellBroadcastSms(Z)Z
    .registers 6
    .param p1, "activate"    # Z

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activateCellBroadcastSms activate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1351
    const-string v1, "MtkSmsManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v0, 0x0

    .line 1356
    .local v0, "result":Z
    :try_start_23
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 1357
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_33

    .line 1358
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->activateCellBroadcastSmsForSubscriber(IZ)Z

    move-result v1

    move v0, v1

    goto :goto_39

    .line 1361
    :cond_33
    const-string v3, "fail to get sms service, maybe phone is initializing"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_38} :catch_3a

    .line 1362
    const/4 v0, 0x0

    .line 1367
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :goto_39
    goto :goto_41

    .line 1364
    :catch_3a
    move-exception v2

    .line 1365
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "fail to activate CB"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const/4 v0, 0x0

    .line 1369
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_41
    return v0
.end method

.method public copySmsToIcc([B[BI)I
    .registers 8
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .line 968
    const-string v0, "MtkSmsManager"

    const-string v1, "copySmsToIcc"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {p0, p3, p2, p1}, Lmediatek/telephony/MtkSmsManager;->insertRawMessageToIccCard(I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v0

    .line 971
    .local v0, "smsStatus":Lmediatek/telephony/MtkSimSmsInsertStatus;
    const/4 v1, -0x1

    if-nez v0, :cond_f

    .line 972
    return v1

    .line 974
    :cond_f
    invoke-virtual {v0}, Lmediatek/telephony/MtkSimSmsInsertStatus;->getIndex()[I

    move-result-object v2

    .line 976
    .local v2, "index":[I
    if-eqz v2, :cond_1c

    array-length v3, v2

    if-lez v3, :cond_1c

    .line 977
    const/4 v1, 0x0

    aget v1, v2, v1

    return v1

    .line 980
    :cond_1c
    return v1
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .registers 19
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .line 446
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "MtkSmsManager"

    const-string v0, "copyTextMessageToIccCard"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v2, 0x1

    .line 450
    .local v2, "result":I
    :try_start_8
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v0

    .line 451
    .local v0, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v0, :cond_23

    .line 452
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v4

    .line 453
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    .line 452
    move-object v3, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    invoke-interface/range {v3 .. v11}, Lcom/mediatek/internal/telephony/IMtkSms;->copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_22} :catch_24

    move v2, v1

    .line 458
    .end local v0    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_23
    goto :goto_2a

    .line 456
    :catch_24
    move-exception v0

    .line 457
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2a
    return v2
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
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

    .line 1648
    if-eqz p1, :cond_7

    .line 1651
    invoke-static {p1}, Lmediatek/telephony/MtkSmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 1649
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encodingType"    # I
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

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "divideMessage, encoding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSmsManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static {p1, p2}, Lmediatek/telephony/MtkSmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 701
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divideMessage: size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-object v0
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediatek/telephony/MtkSmsMessage;",
            ">;"
        }
    .end annotation

    .line 310
    const-string v0, "MtkSmsManager"

    const-string v1, "getAllMessagesFromIcc"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v1, 0x0

    .line 314
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_8
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 315
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_1c

    .line 316
    nop

    .line 317
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    .line 318
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_1d

    move-object v1, v0

    .line 323
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1c
    goto :goto_23

    .line 320
    :catch_1d
    move-exception v2

    .line 322
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "getAllMessagesFromIcc, RemoteException!"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_23
    invoke-direct {p0, v1}, Lmediatek/telephony/MtkSmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllMessagesFromIccEfByMode(I)Ljava/util/ArrayList;
    .registers 13
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lmediatek/telephony/MtkSmsMessage;",
            ">;"
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllMessagesFromIcc, mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSmsManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x0

    .line 391
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_17
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 392
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_2a

    .line 393
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    .line 394
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 393
    invoke-interface {v2, v3, v4, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_29} :catch_2b

    move-object v0, v3

    .line 398
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_2a
    goto :goto_31

    .line 396
    :catch_2b
    move-exception v2

    .line 397
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_31
    const/4 v2, 0x0

    .line 401
    .local v2, "sz":I
    if-eqz v0, :cond_38

    .line 402
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 404
    :cond_38
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    if-ge v3, v2, :cond_9b

    .line 405
    const/4 v4, 0x0

    .line 406
    .local v4, "data":[B
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsRawData;

    .line 407
    .local v5, "record":Lcom/android/internal/telephony/SmsRawData;
    if-nez v5, :cond_45

    .line 408
    goto :goto_98

    .line 410
    :cond_45
    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v4

    .line 412
    add-int/lit8 v6, v3, 0x1

    .line 413
    .local v6, "index":I
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x3

    if-ne v7, v8, :cond_98

    .line 414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "index["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] is STATUS_ON_ICC_READ"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget v7, p0, Lmediatek/telephony/MtkSmsManager;->mSubId:I

    invoke-static {v7}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v7

    .line 416
    .local v7, "manager":Landroid/telephony/SmsManager;
    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8, v4}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    move-result v8

    .line 418
    .local v8, "ret":Z
    if-eqz v8, :cond_93

    .line 419
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update index["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] to STATUS_ON_ICC_READ"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 421
    :cond_93
    const-string v9, "fail to update message status"

    invoke-static {v1, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v4    # "data":[B
    .end local v5    # "record":Lcom/android/internal/telephony/SmsRawData;
    .end local v6    # "index":I
    .end local v7    # "manager":Landroid/telephony/SmsManager;
    .end local v8    # "ret":Z
    :cond_98
    :goto_98
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 426
    .end local v3    # "i":I
    :cond_9b
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {v1, v0, p1}, Lmediatek/telephony/MtkSmsManager;->createMessageListFromRawRecordsByMode(ILjava/util/List;I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getCellBroadcastLang()Ljava/lang/String;
    .registers 5

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCellBroadcastLang, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSmsManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const-string v0, ""

    .line 1456
    .local v0, "langs":Ljava/lang/String;
    :try_start_1c
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 1457
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_2c

    .line 1458
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/IMtkSms;->getCellBroadcastLangsForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_31

    .line 1460
    :cond_2c
    const-string v3, "fail to get sms service"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_31} :catch_32

    .line 1464
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :goto_31
    goto :goto_38

    .line 1462
    :catch_32
    move-exception v2

    .line 1463
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_38
    return-object v0
.end method

.method public getCellBroadcastRanges()Ljava/lang/String;
    .registers 5

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCellBroadcastRanges, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSmsManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const-string v0, ""

    .line 1410
    .local v0, "configs":Ljava/lang/String;
    :try_start_1c
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 1411
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_2c

    .line 1412
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/IMtkSms;->getCellBroadcastRangesForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_31

    .line 1414
    :cond_2c
    const-string v3, "fail to get sms service"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_31} :catch_32

    .line 1418
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :goto_31
    goto :goto_38

    .line 1416
    :catch_32
    move-exception v2

    .line 1417
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_38
    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .registers 6

    .line 1624
    const-string v0, "unknown"

    .line 1626
    .local v0, "format":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1627
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_27

    .line 1628
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1629
    const-string v2, "MtkSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImsSmsFormat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_27} :catch_28

    .line 1633
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_27
    goto :goto_29

    .line 1631
    :catch_28
    move-exception v1

    .line 1634
    :goto_29
    return-object v0
.end method

.method public getScAddress()Ljava/lang/String;
    .registers 5

    .line 1528
    const-string v0, "MtkSmsManager"

    const-string v1, "getScAddress"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    const/4 v1, 0x0

    .line 1531
    .local v1, "address":Ljava/lang/String;
    :try_start_8
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 1532
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_17

    .line 1533
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/IMtkSms;->getScAddressForSubscriber(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move-object v1, v0

    .line 1537
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_17
    goto :goto_1e

    .line 1535
    :catch_18
    move-exception v2

    .line 1536
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1e
    return-object v1
.end method

.method public getScAddressWithErroCode()Landroid/os/Bundle;
    .registers 5

    .line 1552
    const-string v0, "MtkSmsManager"

    const-string v1, "getScAddressWithErroCode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/4 v1, 0x0

    .line 1555
    .local v1, "response":Landroid/os/Bundle;
    :try_start_8
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 1556
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_17

    .line 1557
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/IMtkSms;->getScAddressWithErrorCodeForSubscriber(I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move-object v1, v0

    .line 1561
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_17
    goto :goto_1e

    .line 1559
    :catch_18
    move-exception v2

    .line 1560
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1e
    return-object v1
.end method

.method public getSmsParameters()Lmediatek/telephony/MtkSmsParameters;
    .registers 6

    .line 909
    const-string v0, "MtkSmsManager"

    const-string v1, "getSmsParameters"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v1, 0x0

    :try_start_8
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 913
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_1b

    .line 914
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    .line 915
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 914
    invoke-interface {v2, v3, v4}, Lcom/mediatek/internal/telephony/IMtkSms;->getSmsParametersForSubscriber(ILjava/lang/String;)Lmediatek/telephony/MtkSmsParameters;

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1c

    return-object v0

    .line 917
    :cond_1b
    return-object v1

    .line 919
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :catch_1c
    move-exception v2

    .line 920
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v2    # "ex":Landroid/os/RemoteException;
    const-string v2, "fail to get MtkSmsParameters"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-object v1
.end method

.method public getSmsSimMemoryStatus()Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    .registers 5

    .line 1071
    const-string v0, "MtkSmsManager"

    const-string v1, "getSmsSimMemoryStatus"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :try_start_7
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    .line 1075
    .local v1, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v1, :cond_1a

    .line 1076
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v2

    .line 1077
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1076
    invoke-interface {v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkSms;->getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1b

    return-object v0

    .line 1081
    .end local v1    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_1a
    goto :goto_21

    .line 1079
    :catch_1b
    move-exception v1

    .line 1080
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriptionId()I
    .registers 8

    .line 1248
    const-string v0, "MtkSmsManager"

    iget v1, p0, Lmediatek/telephony/MtkSmsManager;->mSubId:I

    const/16 v2, -0x3ea

    if-ne v1, v2, :cond_d

    .line 1249
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    goto :goto_e

    :cond_d
    nop

    .line 1250
    .local v1, "subId":I
    :goto_e
    const/4 v2, 0x0

    .line 1251
    .local v2, "isSmsSimPickActivityNeeded":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1253
    .local v3, "context":Landroid/content/Context;
    :try_start_17
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v4

    .line 1254
    .local v4, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v4, :cond_22

    .line 1255
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/ISms;->isSmsSimPickActivityNeeded(I)Z

    move-result v5
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_23

    move v2, v5

    .line 1259
    .end local v4    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_22
    goto :goto_29

    .line 1257
    :catch_23
    move-exception v4

    .line 1258
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "Exception in getSubscriptionId"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_29
    const/4 v2, 0x0

    .line 1265
    if-eqz v2, :cond_52

    .line 1266
    const-string v4, "getSubscriptionId isSmsSimPickActivityNeeded is true"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1269
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.sim.SimDialogActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1272
    sget-object v5, Lmediatek/telephony/MtkSmsManager;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1274
    :try_start_48
    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 1279
    goto :goto_52

    .line 1275
    :catch_4c
    move-exception v5

    .line 1278
    .local v5, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v6, "Unable to launch Settings application."

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "anfe":Landroid/content/ActivityNotFoundException;
    :cond_52
    :goto_52
    return v1
.end method

.method public insertRawMessageToIccCard(I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .registers 13
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B

    .line 751
    const-string v0, "MtkSmsManager"

    const-string v1, "insertRawMessageToIccCard"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v1, 0x0

    .line 755
    .local v1, "ret":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :try_start_8
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 756
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_1f

    .line 757
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v4

    .line 758
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    .line 757
    move-object v3, v2

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/internal/telephony/IMtkSms;->insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v3
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1e} :catch_20

    move-object v1, v3

    .line 762
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_1f
    goto :goto_26

    .line 760
    :catch_20
    move-exception v2

    .line 761
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_26
    if-eqz v1, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert Raw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3e

    :cond_3c
    const-string v2, "insert Raw null"

    :goto_3e
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return-object v1
.end method

.method public insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .registers 19
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Lmediatek/telephony/MtkSimSmsInsertStatus;"
        }
    .end annotation

    .line 720
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "MtkSmsManager"

    const-string v0, "insertTextMessageToIccCard"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v2, 0x0

    .line 724
    .local v2, "ret":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :try_start_8
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v0

    .line 725
    .local v0, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v0, :cond_23

    .line 726
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v4

    .line 727
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    .line 726
    move-object v3, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    invoke-interface/range {v3 .. v11}, Lcom/mediatek/internal/telephony/IMtkSms;->insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v3
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_22} :catch_24

    move-object v2, v3

    .line 732
    .end local v0    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_23
    goto :goto_2a

    .line 730
    :catch_24
    move-exception v0

    .line 731
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2a
    if-eqz v2, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert Text "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    :cond_40
    const-string v0, "insert Text null"

    :goto_42
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-object v2
.end method

.method public isImsSmsSupported()Z
    .registers 6

    .line 1600
    const/4 v0, 0x0

    .line 1602
    .local v0, "boSupported":Z
    :try_start_1
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1603
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_26

    .line 1604
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(I)Z

    move-result v2

    move v0, v2

    .line 1605
    const-string v2, "MtkSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isImsSmsSupported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_26} :catch_27

    .line 1609
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_26
    goto :goto_28

    .line 1607
    :catch_27
    move-exception v1

    .line 1610
    :goto_28
    return v0
.end method

.method public queryCellBroadcastSmsActivation()Z
    .registers 5

    .line 1323
    const-string v0, "MtkSmsManager"

    const-string v1, "queryCellBroadcastSmsActivation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const/4 v1, 0x0

    .line 1328
    .local v1, "result":Z
    :try_start_20
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 1329
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_31

    .line 1330
    nop

    .line 1331
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    .line 1330
    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/IMtkSms;->queryCellBroadcastSmsActivationForSubscriber(I)Z

    move-result v0

    move v1, v0

    .end local v1    # "result":Z
    .local v0, "result":Z
    goto :goto_38

    .line 1333
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_31
    const-string v3, "fail to get sms service"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_36} :catch_39

    .line 1334
    const/4 v0, 0x0

    move v1, v0

    .line 1338
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :goto_38
    goto :goto_3f

    .line 1336
    :catch_39
    move-exception v2

    .line 1337
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException!"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_3f
    return v1
.end method

.method public removeCellBroadcastMsg(II)Z
    .registers 7
    .param p1, "channelId"    # I
    .param p2, "serialId"    # I

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveCellBroadcastMsg, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSmsManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const/4 v0, 0x0

    .line 1385
    .local v0, "result":Z
    :try_start_1b
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 1386
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_2b

    .line 1387
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->removeCellBroadcastMsgForSubscriber(III)Z

    move-result v1

    move v0, v1

    goto :goto_31

    .line 1390
    :cond_2b
    const-string v3, "fail to get sms service"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_30} :catch_32

    .line 1391
    const/4 v0, 0x0

    .line 1395
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :goto_31
    goto :goto_38

    .line 1393
    :catch_32
    move-exception v2

    .line 1394
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoveCellBroadcastMsg, RemoteException!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_38
    return v0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 23
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "originalPort"    # S
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 497
    move-object/from16 v11, p5

    const-string v12, "MtkSmsManager"

    const-string v0, "sendDataMessage"

    invoke-static {v12, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 502
    const-string v0, "send_data"

    move-object/from16 v13, p1

    move-object/from16 v14, p6

    invoke-static {v13, v0, v14}, Lmediatek/telephony/MtkSmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 503
    return-void

    .line 506
    :cond_1c
    if-eqz v11, :cond_4c

    array-length v0, v11

    if-eqz v0, :cond_4c

    .line 520
    :try_start_21
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsServiceOrThrow()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v0

    .line 521
    .local v0, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v0, :cond_44

    .line 522
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v2

    .line 523
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    const v1, 0xffff

    and-int v6, p3, v1

    and-int v7, p4, v1

    .line 522
    move-object v1, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/mediatek/internal/telephony/IMtkSms;->sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_44} :catch_45

    .line 529
    .end local v0    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_44
    goto :goto_4b

    .line 527
    :catch_45
    move-exception v0

    .line 528
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "RemoteException!"

    invoke-static {v12, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_4b
    return-void

    .line 507
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_54
    move-object/from16 v13, p1

    move-object/from16 v14, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 1687
    move-object/from16 v11, p4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1691
    if-eqz v11, :cond_2d

    array-length v0, v11

    if-eqz v0, :cond_2d

    .line 1696
    :try_start_d
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1697
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v0, 0xffff

    and-int v7, p3, v0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2a} :catch_2b

    .line 1702
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    goto :goto_2c

    .line 1700
    :catch_2b
    move-exception v0

    .line 1703
    :goto_2c
    return-void

    .line 1692
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1688
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMultipartTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 24
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 635
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMultipartTextMessageWithEncodingType, encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "MtkSmsManager"

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f2

    .line 640
    move-object/from16 v10, p1

    invoke-static {v10, v11, v13}, Lmediatek/telephony/MtkSmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 641
    const-string v0, "invalid parameters for multipart message"

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void

    .line 653
    :cond_32
    if-eqz v11, :cond_66

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_66

    .line 655
    :try_start_3b
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsServiceOrThrow()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v0

    .line 656
    .local v0, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v0, :cond_64

    .line 657
    invoke-virtual/range {p0 .. p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v2

    .line 658
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x1

    .line 657
    move-object v1, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, v16

    invoke-interface/range {v1 .. v10}, Lcom/mediatek/internal/telephony/IMtkSms;->sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_5d} :catch_5e

    goto :goto_64

    .line 662
    .end local v0    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :catch_5e
    move-exception v0

    .line 663
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "RemoteException"

    invoke-static {v15, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    goto/16 :goto_f1

    .line 666
    :cond_66
    const/4 v0, 0x0

    .line 667
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    .line 668
    .local v1, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    if-eqz v13, :cond_78

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_78

    .line 669
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/PendingIntent;

    .line 671
    :cond_78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get sentIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    if-eqz v14, :cond_9d

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9d

    .line 673
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/app/PendingIntent;

    move-object v8, v1

    goto :goto_9e

    .line 675
    :cond_9d
    move-object v8, v1

    .end local v1    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_9e
    const-string v1, "send single message"

    invoke-static {v15, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    if-eqz v11, :cond_bd

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parts.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_bd
    if-eqz v11, :cond_cd

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_c6

    goto :goto_cd

    :cond_c6
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_cf

    :cond_cd
    :goto_cd
    const-string v1, ""

    :goto_cf
    move-object v4, v1

    .line 680
    .local v4, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pass encoding type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v6, v0

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lmediatek/telephony/MtkSmsManager;->sendTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 684
    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .end local v4    # "text":Ljava/lang/String;
    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    :goto_f1
    return-void

    .line 637
    :cond_f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMultipartTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 23
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 851
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    const-string v14, "MtkSmsManager"

    const-string v0, "sendMultipartTextMessageWithExtraParams"

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 856
    move-object/from16 v15, p1

    invoke-static {v15, v11, v12}, Lmediatek/telephony/MtkSmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 857
    return-void

    .line 860
    :cond_1c
    if-nez p4, :cond_24

    .line 861
    const-string v0, "bundle is null"

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void

    .line 873
    :cond_24
    if-eqz v11, :cond_54

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_54

    .line 875
    :try_start_2d
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsServiceOrThrow()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v0

    .line 876
    .local v0, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v0, :cond_53

    .line 877
    invoke-virtual/range {p0 .. p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v2

    .line 878
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    .line 877
    move-object v1, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v1 .. v10}, Lcom/mediatek/internal/telephony/IMtkSms;->sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4c} :catch_4d

    goto :goto_53

    .line 882
    .end local v0    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :catch_4d
    move-exception v0

    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException"

    invoke-static {v14, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_53
    :goto_53
    goto :goto_98

    .line 886
    :cond_54
    const/4 v0, 0x0

    .line 887
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    .line 888
    .local v1, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    if-eqz v12, :cond_66

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_66

    .line 889
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/PendingIntent;

    .line 891
    :cond_66
    if-eqz v13, :cond_77

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_77

    .line 892
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/app/PendingIntent;

    move-object v8, v1

    goto :goto_78

    .line 895
    :cond_77
    move-object v8, v1

    .end local v1    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_78
    if-eqz v11, :cond_88

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_81

    goto :goto_88

    :cond_81
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_8a

    :cond_88
    :goto_88
    const-string v1, ""

    :goto_8a
    move-object v4, v1

    .line 896
    .local v4, "text":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object v6, v0

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lmediatek/telephony/MtkSmsManager;->sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 899
    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .end local v4    # "text":Ljava/lang/String;
    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    :goto_98
    return-void

    .line 853
    :cond_99
    move-object/from16 v15, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 16
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 258
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v9}, Lmediatek/telephony/MtkSmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;J)V

    .line 261
    return-void
.end method

.method public sendTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 23
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTextMessageWithEncodingType, encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "MtkSmsManager"

    invoke-static {v12, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 569
    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    invoke-static {v13, v14, v15}, Lmediatek/telephony/MtkSmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 570
    const-string v0, "the parameters are invalid"

    invoke-static {v12, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 584
    :cond_30
    :try_start_30
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsServiceOrThrow()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v0

    .line 585
    .local v0, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v0, :cond_4f

    .line 586
    invoke-virtual/range {p0 .. p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    .line 587
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    .line 586
    move-object v2, v0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v2 .. v11}, Lcom/mediatek/internal/telephony/IMtkSms;->sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_4f} :catch_50

    .line 592
    .end local v0    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_4f
    goto :goto_56

    .line 590
    :catch_50
    move-exception v0

    .line 591
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v12, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_56
    return-void

    .line 566
    :cond_57
    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 22
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 788
    const-string v1, "MtkSmsManager"

    const-string v0, "sendTextMessageWithExtraParams"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 793
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    invoke-static {v12, v13, v14}, Lmediatek/telephony/MtkSmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 794
    return-void

    .line 797
    :cond_1a
    if-nez p4, :cond_22

    .line 798
    const-string v0, "bundle is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void

    .line 812
    :cond_22
    :try_start_22
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsServiceOrThrow()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v0

    .line 813
    .local v0, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v0, :cond_41

    .line 814
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    .line 815
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    .line 814
    move-object v2, v0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v2 .. v11}, Lcom/mediatek/internal/telephony/IMtkSms;->sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_41} :catch_42

    .line 820
    .end local v0    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_41
    goto :goto_48

    .line 818
    :catch_42
    move-exception v0

    .line 819
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_48
    return-void

    .line 790
    :cond_49
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 16
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 295
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v9}, Lmediatek/telephony/MtkSmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;J)V

    .line 298
    return-void
.end method

.method public setCellBroadcastLang(Ljava/lang/String;)Z
    .registers 6
    .param p1, "lang"    # Ljava/lang/String;

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCellBroadcastLang, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSmsManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/4 v0, 0x0

    .line 1433
    .local v0, "result":Z
    :try_start_1b
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 1434
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_2b

    .line 1435
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->setCellBroadcastLangsForSubscriber(ILjava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_30

    .line 1437
    :cond_2b
    const-string v3, "fail to get sms service"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_30} :catch_31

    .line 1441
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :goto_30
    goto :goto_37

    .line 1439
    :catch_31
    move-exception v2

    .line 1440
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_37
    return v0
.end method

.method public setEtwsConfig(I)Z
    .registers 6
    .param p1, "mode"    # I

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEtwsConfig, mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSmsManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const/4 v0, 0x0

    .line 1481
    .local v0, "ret":Z
    :try_start_17
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 1482
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_26

    .line 1483
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->setEtwsConfigForSubscriber(II)Z

    move-result v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_25} :catch_27

    move v0, v1

    .line 1487
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_26
    goto :goto_2d

    .line 1485
    :catch_27
    move-exception v2

    .line 1486
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2d
    return v0
.end method

.method public setScAddress(Ljava/lang/String;)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .line 1574
    const-string v0, "MtkSmsManager"

    const-string v1, "setScAddress"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    const/4 v1, 0x0

    .line 1578
    .local v1, "ret":Z
    :try_start_8
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 1579
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_17

    .line 1580
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->setScAddressForSubscriber(ILjava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move v1, v0

    .line 1584
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_17
    goto :goto_1e

    .line 1582
    :catch_18
    move-exception v2

    .line 1583
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1e
    return v1
.end method

.method public setSmsMemoryStatus(Z)V
    .registers 5
    .param p1, "status"    # Z

    .line 1048
    const-string v0, "MtkSmsManager"

    const-string v1, "setSmsMemoryStatus"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :try_start_7
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsServiceOrThrow()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    .line 1052
    .local v1, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v1, :cond_14

    .line 1053
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->setSmsMemoryStatusForSubscriber(IZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    .line 1057
    .end local v1    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_14
    goto :goto_1b

    .line 1055
    :catch_15
    move-exception v1

    .line 1056
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public setSmsParameters(Lmediatek/telephony/MtkSmsParameters;)Z
    .registers 7
    .param p1, "params"    # Lmediatek/telephony/MtkSmsParameters;

    .line 938
    const-string v0, "MtkSmsManager"

    const-string v1, "setSmsParameters"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v1, 0x0

    :try_start_8
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 942
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_1b

    .line 943
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    .line 944
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 943
    invoke-interface {v2, v3, v4, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->setSmsParametersForSubscriber(ILjava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1c

    return v0

    .line 946
    :cond_1b
    return v1

    .line 948
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :catch_1c
    move-exception v2

    .line 949
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    .end local v2    # "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public updateSmsOnSimReadStatus(IZ)Z
    .registers 11
    .param p1, "index"    # I
    .param p2, "read"    # Z

    .line 994
    const-string v0, "MtkSmsManager"

    const-string v1, "updateSmsOnSimReadStatus"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v1, 0x0

    .line 998
    .local v1, "record":Lcom/android/internal/telephony/SmsRawData;
    :try_start_8
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getIMtkSmsService()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    .line 999
    .local v2, "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    if-eqz v2, :cond_1b

    .line 1000
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsManager;->getSubscriptionId()I

    move-result v3

    .line 1001
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1000
    invoke-interface {v2, v3, v4, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;

    move-result-object v3
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1c

    move-object v1, v3

    .line 1005
    .end local v2    # "iccISms":Lcom/mediatek/internal/telephony/IMtkSms;
    :cond_1b
    goto :goto_22

    .line 1003
    :catch_1c
    move-exception v2

    .line 1004
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_22
    const/4 v2, 0x0

    if-eqz v1, :cond_8f

    .line 1008
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v3

    .line 1009
    .local v3, "rawData":[B
    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    .line 1010
    .local v4, "status":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms status is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v5, :cond_5c

    if-eq v4, v6, :cond_5c

    .line 1013
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "non-delivery sms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return v2

    .line 1016
    :cond_5c
    if-ne v4, v5, :cond_60

    if-eqz p2, :cond_64

    :cond_60
    if-ne v4, v6, :cond_6a

    if-ne p2, v6, :cond_6a

    .line 1018
    :cond_64
    const-string v2, "no need to update status"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return v6

    .line 1021
    :cond_6a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update sms status as "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    if-ne p2, v6, :cond_82

    move v5, v6

    goto :goto_83

    .line 1023
    :cond_82
    nop

    :goto_83
    move v0, v5

    .line 1024
    .local v0, "newStatus":I
    iget v2, p0, Lmediatek/telephony/MtkSmsManager;->mSubId:I

    invoke-static {v2}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v2

    .line 1025
    .local v2, "manager":Landroid/telephony/SmsManager;
    invoke-virtual {v2, p1, v6, v3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    move-result v5

    .line 1027
    .local v5, "success":Z
    return v5

    .line 1032
    .end local v0    # "newStatus":I
    .end local v2    # "manager":Landroid/telephony/SmsManager;
    .end local v3    # "rawData":[B
    .end local v4    # "status":I
    .end local v5    # "success":Z
    :cond_8f
    const-string v3, "record is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return v2
.end method

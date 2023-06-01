.class public Lcom/mediatek/internal/telephony/MtkSuppServUtTest;
.super Ljava/lang/Object;
.source "MtkSuppServUtTest.java"


# static fields
.field private static final ACTION_ACTIVATE:I = 0x1

.field private static final ACTION_DEACTIVATE:I = 0x0

.field private static final ACTION_INTERROGATE:I = 0x2

.field static final ACTION_SUPPLEMENTARY_SERVICE_ROAMING_TEST:Ljava/lang/String; = "android.intent.action.ACTION_SUPPLEMENTARY_SERVICE_ROAMING_TEST"

.field static final ACTION_SUPPLEMENTARY_SERVICE_UT_TEST:Ljava/lang/String; = "android.intent.action.ACTION_SUPPLEMENTARY_SERVICE_UT_TEST"

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phoneId"

.field private static final EXTRA_SERVICE_CODE:Ljava/lang/String; = "serviceCode"

.field private static final EXTRA_SERVICE_INFO_A:Ljava/lang/String; = "serviceInfoA"

.field private static final EXTRA_SERVICE_INFO_B:Ljava/lang/String; = "serviceInfoB"

.field private static final EXTRA_SERVICE_INFO_C:Ljava/lang/String; = "serviceInfoC"

.field private static final EXTRA_SERVICE_INFO_D:Ljava/lang/String; = "serviceInfoD"

.field static final LOG_TAG:Ljava/lang/String; = "MtkSuppServUtTest"

.field private static final NUM_PRESENTATION_ALLOWED:I = 0x0

.field private static final NUM_PRESENTATION_RESTRICTED:I = 0x1

.field private static final SC_BAIC:Ljava/lang/String; = "35"

.field private static final SC_BAICr:Ljava/lang/String; = "351"

.field private static final SC_CFB:Ljava/lang/String; = "67"

.field private static final SC_CFNR:Ljava/lang/String; = "62"

.field private static final SC_CFNRy:Ljava/lang/String; = "61"

.field private static final SC_CFNotRegister:Ljava/lang/String; = "68"

.field private static final SC_CFU:Ljava/lang/String; = "21"

.field private static final SC_CFUR:Ljava/lang/String; = "22"

.field private static final SC_CLIP:Ljava/lang/String; = "30"

.field private static final SC_CLIR:Ljava/lang/String; = "31"

.field private static final SC_COLP:Ljava/lang/String; = "76"

.field private static final SC_COLR:Ljava/lang/String; = "77"

.field private static final SC_WAIT:Ljava/lang/String; = "43"

.field static final SUPPLEMENTARY_SERVICE_PERMISSION:Ljava/lang/String; = "com.mediatek.permission.SUPPLEMENTARY_SERVICE_UT_TEST"


# instance fields
.field private activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

.field private activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

.field private mContext:Landroid/content/Context;

.field private phoneId:I

.field private serviceCode:Ljava/lang/String;

.field private serviceInfoA:Ljava/lang/String;

.field private serviceInfoB:Ljava/lang/String;

.field private serviceInfoC:Ljava/lang/String;

.field private serviceInfoD:Ljava/lang/String;

.field private ssAction:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v0, "action"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    .line 115
    const-string v0, "serviceCode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    .line 116
    const-string v0, "serviceInfoA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoA:Ljava/lang/String;

    .line 117
    const-string v0, "serviceInfoB"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoB:Ljava/lang/String;

    .line 118
    const-string v0, "serviceInfoC"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoC:Ljava/lang/String;

    .line 119
    const-string v0, "serviceInfoD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoD:Ljava/lang/String;

    .line 120
    const-string v0, "phoneId"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->getValidPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->phoneId:I

    .line 122
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->mContext:Landroid/content/Context;

    .line 123
    move-object v0, p3

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 124
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 125
    return-void
.end method

.method private static actionToCommandAction(I)I
    .registers 3
    .param p0, "action"    # I

    .line 317
    packed-switch p0, :pswitch_data_12

    .line 322
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid action command"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :pswitch_b
    const/4 v0, 0x2

    return v0

    .line 319
    :pswitch_d
    const/4 v0, 0x3

    return v0

    .line 318
    :pswitch_f
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private checkIMSStatus(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 306
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    const-string v1, "MtkSuppServUtTest"

    if-eqz v0, :cond_2b

    .line 307
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_16

    .line 308
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 309
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIMSStatus: ready, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 312
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIMSStatus: IMS is not registered or not Ut enabled, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method private static convertToLongTime(Ljava/lang/String;)[J
    .registers 9
    .param p0, "timeSlotString"    # Ljava/lang/String;

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "timeSlot":[J
    if-eqz p0, :cond_38

    .line 386
    const-string v1, ","

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "timeArray":[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v2, :cond_38

    .line 388
    new-array v0, v2, [J

    .line 389
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_38

    .line 390
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 391
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 393
    :try_start_22
    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 394
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aput-wide v6, v0, v3
    :try_end_2e
    .catch Ljava/text/ParseException; {:try_start_22 .. :try_end_2e} :catch_32

    .line 398
    .end local v5    # "date":Ljava/util/Date;
    nop

    .line 389
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 395
    .restart local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_32
    move-exception v2

    .line 396
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 397
    const/4 v5, 0x0

    return-object v5

    .line 402
    .end local v1    # "timeArray":[Ljava/lang/String;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "i":I
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_38
    return-object v0
.end method

.method private static getValidPhoneId(I)I
    .registers 2
    .param p0, "phoneId"    # I

    .line 270
    if-ltz p0, :cond_d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_d

    .line 271
    return p0

    .line 273
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private static isActivate(I)Z
    .registers 2
    .param p0, "action"    # I

    .line 290
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static isDeactivate(I)Z
    .registers 2
    .param p0, "action"    # I

    .line 294
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static isInterrogate(I)Z
    .registers 2
    .param p0, "action"    # I

    .line 298
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .registers 2
    .param p0, "sc"    # Ljava/lang/String;

    .line 284
    if-eqz p0, :cond_14

    .line 285
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 286
    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 284
    :goto_15
    return v0
.end method

.method private static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .registers 2
    .param p0, "sc"    # Ljava/lang/String;

    .line 277
    if-eqz p0, :cond_2c

    .line 278
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 279
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 280
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "68"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2a
    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 277
    :goto_2d
    return v0
.end method

.method private static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "sc"    # Ljava/lang/String;

    .line 347
    const-string v0, "invalid call barring sc"

    if-eqz p0, :cond_20

    .line 351
    const-string v1, "35"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 352
    const-string v0, "AI"

    return-object v0

    .line 353
    :cond_f
    const-string v1, "351"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 354
    const-string v0, "IR"

    return-object v0

    .line 356
    :cond_1a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_20
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .registers 3
    .param p0, "sc"    # Ljava/lang/String;

    .line 327
    const-string v0, "invalid call forward sc"

    if-eqz p0, :cond_3c

    .line 331
    const-string v1, "21"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 332
    const/4 v0, 0x0

    return v0

    .line 333
    :cond_e
    const-string v1, "67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 334
    const/4 v0, 0x1

    return v0

    .line 335
    :cond_18
    const-string v1, "62"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 336
    const/4 v0, 0x3

    return v0

    .line 337
    :cond_22
    const-string v1, "61"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 338
    const/4 v0, 0x2

    return v0

    .line 339
    :cond_2c
    const-string v1, "68"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 340
    const/4 v0, 0x6

    return v0

    .line 342
    :cond_36
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_3c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .registers 5
    .param p0, "si"    # Ljava/lang/String;

    .line 361
    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2e

    .line 364
    :cond_9
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 366
    .local v0, "serviceCode":I
    packed-switch v0, :pswitch_data_30

    .line 370
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported service class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :pswitch_29
    const/16 v1, 0x200

    return v1

    .line 367
    :pswitch_2c
    const/4 v1, 0x1

    return v1

    .line 362
    .end local v0    # "serviceCode":I
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .registers 2
    .param p0, "si"    # Ljava/lang/String;

    .line 376
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 379
    :cond_9
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 377
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method run()V
    .registers 20

    .line 128
    move-object/from16 v1, p0

    const-string v0, "76"

    const-string v2, "77"

    const-string v3, "30"

    const-string v4, "31"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive, ssAction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", serviceCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", serviceInfoA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoA:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", serviceInfoB = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", serviceInfoC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoC:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", serviceInfoD = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->phoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MtkSuppServUtTest"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_5e
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v5
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_64} :catch_304

    const-string v7, "onReceive: Not supported SS action"

    if-eqz v5, :cond_e2

    .line 135
    :try_start_68
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->actionToCommandAction(I)I

    move-result v9

    .line 136
    .local v9, "cfAction":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "reason":I
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoA:Ljava/lang/String;

    .line 138
    .local v11, "dialingNumber":Ljava/lang/String;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoB:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->siToServiceClass(Ljava/lang/String;)I

    move-result v2

    .line 139
    .local v2, "serviceClass":I
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoC:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->siToTime(Ljava/lang/String;)I

    move-result v12

    .line 140
    .local v12, "time":I
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoD:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->convertToLongTime(Ljava/lang/String;)[J

    move-result-object v3

    .line 141
    .local v3, "timeSlot":[J
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 143
    .local v4, "msg":Landroid/os/Message;
    iget v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 144
    if-nez v0, :cond_a1

    .line 145
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5, v0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardInTimeSlot(ILandroid/os/Message;)V

    goto :goto_e0

    .line 147
    :cond_a1
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5, v0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_e0

    .line 149
    :cond_a7
    iget v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v5

    if-nez v5, :cond_bc

    iget v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v5

    if-eqz v5, :cond_b8

    goto :goto_bc

    .line 161
    :cond_b8
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 150
    :cond_bc
    :goto_bc
    if-nez v0, :cond_ce

    if-eqz v3, :cond_ce

    .line 152
    const-string v5, "onReceive: setCallForwardInTimeSlot"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move v10, v0

    move-object v13, v3

    move-object v14, v4

    invoke-virtual/range {v8 .. v14}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V

    goto :goto_e0

    .line 156
    :cond_ce
    const-string v5, "onReceive: setCallForwardingOption"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move v14, v9

    move v15, v0

    move-object/from16 v16, v11

    move/from16 v17, v12

    move-object/from16 v18, v4

    invoke-virtual/range {v13 .. v18}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 163
    .end local v0    # "reason":I
    .end local v2    # "serviceClass":I
    .end local v3    # "timeSlot":[J
    .end local v4    # "msg":Landroid/os/Message;
    .end local v9    # "cfAction":I
    .end local v11    # "dialingNumber":Ljava/lang/String;
    .end local v12    # "time":I
    :goto_e0
    goto/16 :goto_303

    :cond_e2
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_129

    .line 164
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    .line 165
    .local v0, "lockState":Z
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "facility":Ljava/lang/String;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoB:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    .line 167
    .local v3, "serviceClass":I
    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v4
    :try_end_103
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_103} :catch_304

    const-string v5, "1234"

    if-eqz v4, :cond_10d

    .line 168
    :try_start_107
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v2, v5, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_127

    .line 169
    :cond_10d
    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v4

    if-nez v4, :cond_122

    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v4

    if-eqz v4, :cond_11e

    goto :goto_122

    .line 173
    :cond_11e
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_127

    .line 170
    :cond_122
    :goto_122
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v2, v0, v5, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 175
    .end local v0    # "lockState":Z
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "serviceClass":I
    :goto_127
    goto/16 :goto_303

    :cond_129
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    if-eqz v5, :cond_174

    const-string v9, "43"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_174

    .line 176
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    .line 177
    .local v0, "enable":Z
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceInfoA:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->siToServiceClass(Ljava/lang/String;)I

    move-result v2

    .line 178
    .local v2, "serviceClass":I
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 180
    .local v3, "msg":Landroid/os/Message;
    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v4

    if-eqz v4, :cond_158

    .line 181
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_172

    .line 182
    :cond_158
    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v4

    if-nez v4, :cond_16d

    iget v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v4

    if-eqz v4, :cond_169

    goto :goto_16d

    .line 185
    :cond_169
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_172

    .line 183
    :cond_16d
    :goto_16d
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 187
    .end local v0    # "enable":Z
    .end local v2    # "serviceClass":I
    .end local v3    # "msg":Landroid/os/Message;
    :goto_172
    goto/16 :goto_303

    :cond_174
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;
    :try_end_176
    .catch Ljava/lang/RuntimeException; {:try_start_107 .. :try_end_176} :catch_304

    const-string v9, "onReceive: Not supported service code"

    if-eqz v5, :cond_1ad

    :try_start_17a
    const-string v10, "22"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ad

    .line 188
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-nez v0, :cond_198

    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v0

    if-eqz v0, :cond_193

    goto :goto_198

    .line 193
    :cond_193
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_303

    .line 189
    :cond_198
    :goto_198
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SUPPLEMENTARY_SERVICE_ROAMING_TEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "rIntent":Landroid/content/Intent;
    const-string v2, "phoneId"

    iget v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->phoneId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    .end local v0    # "rIntent":Landroid/content/Intent;
    goto/16 :goto_303

    .line 195
    :cond_1ad
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    const/4 v10, 0x1

    if-eqz v5, :cond_1f0

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f0

    .line 196
    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->checkIMSStatus(Ljava/lang/String;)V

    .line 197
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 198
    goto :goto_1c5

    :cond_1c4
    const/4 v10, 0x2

    :goto_1c5
    move v0, v10

    .line 199
    .local v0, "clirMode":I
    iget v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v2

    if-eqz v2, :cond_1d4

    .line 200
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_1ee

    .line 201
    :cond_1d4
    iget v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v2

    if-nez v2, :cond_1e9

    iget v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v2

    if-eqz v2, :cond_1e5

    goto :goto_1e9

    .line 204
    :cond_1e5
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ee

    .line 202
    :cond_1e9
    :goto_1e9
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activePhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v0, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 206
    .end local v0    # "clirMode":I
    :goto_1ee
    goto/16 :goto_303

    :cond_1f0
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    if-eqz v4, :cond_24a

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24a

    .line 207
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->checkIMSStatus(Ljava/lang/String;)V

    .line 208
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    move v2, v0

    .line 209
    .local v2, "clipMode":Z
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v0
    :try_end_20a
    .catch Ljava/lang/RuntimeException; {:try_start_17a .. :try_end_20a} :catch_304

    if-eqz v0, :cond_220

    .line 211
    :try_start_20c
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_217
    .catch Lcom/android/ims/ImsException; {:try_start_20c .. :try_end_217} :catch_218
    .catch Ljava/lang/RuntimeException; {:try_start_20c .. :try_end_217} :catch_304

    .line 214
    goto :goto_248

    .line 212
    :catch_218
    move-exception v0

    .line 213
    .local v0, "e":Lcom/android/ims/ImsException;
    :try_start_219
    const-string v3, "Could not get UT handle for queryCLIP."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    nop

    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_248

    .line 215
    :cond_220
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-nez v0, :cond_235

    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v0

    if-eqz v0, :cond_231

    goto :goto_235

    .line 222
    :cond_231
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_234
    .catch Ljava/lang/RuntimeException; {:try_start_219 .. :try_end_234} :catch_304

    goto :goto_248

    .line 217
    :cond_235
    :goto_235
    :try_start_235
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v2, v8}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_240
    .catch Lcom/android/ims/ImsException; {:try_start_235 .. :try_end_240} :catch_241
    .catch Ljava/lang/RuntimeException; {:try_start_235 .. :try_end_240} :catch_304

    .line 220
    goto :goto_248

    .line 218
    :catch_241
    move-exception v0

    .line 219
    .restart local v0    # "e":Lcom/android/ims/ImsException;
    :try_start_242
    const-string v3, "Could not get UT handle for updateCLIP."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    nop

    .line 224
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v2    # "clipMode":Z
    :goto_248
    goto/16 :goto_303

    :cond_24a
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    if-eqz v3, :cond_2a7

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a7

    .line 225
    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->checkIMSStatus(Ljava/lang/String;)V

    .line 226
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-eqz v0, :cond_260

    .line 227
    goto :goto_261

    :cond_260
    const/4 v10, 0x0

    :goto_261
    move v2, v10

    .line 228
    .local v2, "colrMode":I
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v0
    :try_end_268
    .catch Ljava/lang/RuntimeException; {:try_start_242 .. :try_end_268} :catch_304

    if-eqz v0, :cond_27e

    .line 230
    :try_start_26a
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_275
    .catch Lcom/android/ims/ImsException; {:try_start_26a .. :try_end_275} :catch_276
    .catch Ljava/lang/RuntimeException; {:try_start_26a .. :try_end_275} :catch_304

    .line 233
    goto :goto_2a6

    .line 231
    :catch_276
    move-exception v0

    .line 232
    .restart local v0    # "e":Lcom/android/ims/ImsException;
    :try_start_277
    const-string v3, "processCode: Could not get UT handle for queryCOLR."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    nop

    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_2a6

    .line 234
    :cond_27e
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-nez v0, :cond_293

    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v0

    if-eqz v0, :cond_28f

    goto :goto_293

    .line 241
    :cond_28f
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_292
    .catch Ljava/lang/RuntimeException; {:try_start_277 .. :try_end_292} :catch_304

    goto :goto_2a6

    .line 236
    :cond_293
    :goto_293
    :try_start_293
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v2, v8}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_29e
    .catch Lcom/android/ims/ImsException; {:try_start_293 .. :try_end_29e} :catch_29f
    .catch Ljava/lang/RuntimeException; {:try_start_293 .. :try_end_29e} :catch_304

    .line 239
    goto :goto_2a6

    .line 237
    :catch_29f
    move-exception v0

    .line 238
    .restart local v0    # "e":Lcom/android/ims/ImsException;
    :try_start_2a0
    const-string v3, "processCode: Could not get UT handle for updateCOLR."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    nop

    .line 243
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v2    # "colrMode":I
    :goto_2a6
    goto :goto_303

    :cond_2a7
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->serviceCode:Ljava/lang/String;

    if-eqz v2, :cond_300

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_300

    .line 244
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->checkIMSStatus(Ljava/lang/String;)V

    .line 245
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    move v2, v0

    .line 246
    .local v2, "colpMode":Z
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isInterrogate(I)Z

    move-result v0
    :try_end_2c1
    .catch Ljava/lang/RuntimeException; {:try_start_2a0 .. :try_end_2c1} :catch_304

    if-eqz v0, :cond_2d7

    .line 248
    :try_start_2c3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_2ce
    .catch Lcom/android/ims/ImsException; {:try_start_2c3 .. :try_end_2ce} :catch_2cf
    .catch Ljava/lang/RuntimeException; {:try_start_2c3 .. :try_end_2ce} :catch_304

    .line 251
    goto :goto_2ff

    .line 249
    :catch_2cf
    move-exception v0

    .line 250
    .restart local v0    # "e":Lcom/android/ims/ImsException;
    :try_start_2d0
    const-string v3, "processCode: Could not get UT handle for queryCOLP."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    nop

    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_2ff

    .line 252
    :cond_2d7
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isActivate(I)Z

    move-result v0

    if-nez v0, :cond_2ec

    iget v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->ssAction:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->isDeactivate(I)Z

    move-result v0

    if-eqz v0, :cond_2e8

    goto :goto_2ec

    .line 259
    :cond_2e8
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2eb
    .catch Ljava/lang/RuntimeException; {:try_start_2d0 .. :try_end_2eb} :catch_304

    goto :goto_2ff

    .line 254
    :cond_2ec
    :goto_2ec
    :try_start_2ec
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->activeImsPhone:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    invoke-interface {v0, v2, v8}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_2f7
    .catch Lcom/android/ims/ImsException; {:try_start_2ec .. :try_end_2f7} :catch_2f8
    .catch Ljava/lang/RuntimeException; {:try_start_2ec .. :try_end_2f7} :catch_304

    .line 257
    goto :goto_2ff

    .line 255
    :catch_2f8
    move-exception v0

    .line 256
    .restart local v0    # "e":Lcom/android/ims/ImsException;
    :try_start_2f9
    const-string v3, "processCode: Could not get UT handle for updateCOLP."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    nop

    .line 261
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v2    # "colpMode":Z
    :goto_2ff
    goto :goto_303

    .line 262
    :cond_300
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_303
    .catch Ljava/lang/RuntimeException; {:try_start_2f9 .. :try_end_303} :catch_304

    .line 266
    :goto_303
    goto :goto_308

    .line 264
    :catch_304
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 267
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_308
    return-void
.end method

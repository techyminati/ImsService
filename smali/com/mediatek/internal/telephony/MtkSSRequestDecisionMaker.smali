.class public Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
.super Ljava/lang/Object;
.source "MtkSSRequestDecisionMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;
    }
.end annotation


# static fields
.field private static final CLEAR_DELAY_TIMEOUT:I = 0x2710

.field private static final EVENT_SS_CLEAR_TEMP_VOLTE_USER_FLAG:I = 0x3

.field private static final EVENT_SS_RESPONSE:I = 0x2

.field private static final EVENT_SS_SEND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "MtkSSDecisonMaker"

.field private static final SS_REQUEST_GET_CALL_BARRING:I = 0x3

.field private static final SS_REQUEST_GET_CALL_FORWARD:I = 0x1

.field private static final SS_REQUEST_GET_CALL_FORWARD_TIME_SLOT:I = 0xf

.field private static final SS_REQUEST_GET_CALL_WAITING:I = 0x5

.field private static final SS_REQUEST_GET_CLIP:I = 0x9

.field private static final SS_REQUEST_GET_CLIR:I = 0x7

.field private static final SS_REQUEST_GET_COLP:I = 0xd

.field private static final SS_REQUEST_GET_COLR:I = 0xb

.field private static final SS_REQUEST_SET_CALL_BARRING:I = 0x4

.field private static final SS_REQUEST_SET_CALL_FORWARD:I = 0x2

.field private static final SS_REQUEST_SET_CALL_FORWARD_TIME_SLOT:I = 0x10

.field private static final SS_REQUEST_SET_CALL_WAITING:I = 0x6

.field private static final SS_REQUEST_SET_CLIP:I = 0xa

.field private static final SS_REQUEST_SET_CLIR:I = 0x8

.field private static final SS_REQUEST_SET_COLP:I = 0xe

.field private static final SS_REQUEST_SET_COLR:I = 0xc


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mIsTempVolteUser:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private mSSHandlerThread:Landroid/os/HandlerThread;

.field private mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 139
    iget-object v0, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 140
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhoneId:I

    .line 141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->processSendRequest(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->processResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mIsTempVolteUser:Z

    return p1
.end method

.method private getActionFromCFAction(I)I
    .registers 3
    .param p1, "action"    # I

    .line 192
    packed-switch p1, :pswitch_data_e

    .line 201
    :pswitch_3
    const/4 v0, -0x1

    return v0

    .line 195
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 196
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 194
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 193
    :pswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_3
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private getCBTypeFromFacility(Ljava/lang/String;)I
    .registers 3
    .param p1, "facility"    # Ljava/lang/String;

    .line 220
    const-string v0, "AO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 221
    const/4 v0, 0x2

    return v0

    .line 222
    :cond_a
    const-string v0, "OI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 223
    const/4 v0, 0x3

    return v0

    .line 224
    :cond_14
    const-string v0, "OX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 225
    const/4 v0, 0x4

    return v0

    .line 226
    :cond_1e
    const-string v0, "AI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 227
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_28
    const-string v0, "IR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 229
    const/4 v0, 0x5

    return v0

    .line 230
    :cond_32
    const-string v0, "AB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 231
    const/4 v0, 0x7

    return v0

    .line 232
    :cond_3c
    const-string v0, "AG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 233
    const/16 v0, 0x8

    return v0

    .line 234
    :cond_47
    const-string v0, "AC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 235
    const/16 v0, 0x9

    return v0

    .line 238
    :cond_52
    const/4 v0, 0x0

    return v0
.end method

.method private getCFReasonFromCondition(I)I
    .registers 3
    .param p1, "condition"    # I

    .line 318
    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_10

    .line 329
    return v0

    .line 324
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 323
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 322
    :pswitch_9
    return v0

    .line 321
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 320
    :pswitch_c
    const/4 v0, 0x1

    return v0

    .line 319
    :pswitch_e
    const/4 v0, 0x0

    return v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .registers 4
    .param p1, "info"    # Landroid/telephony/ims/ImsCallForwardInfo;

    .line 290
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 291
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 292
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 293
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 294
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 295
    iget-object v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 296
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 297
    return-object v0
.end method

.method private getCommandException(Lcom/android/ims/ImsException;)Lcom/android/internal/telephony/CommandException;
    .registers 5
    .param p1, "imsException"    # Lcom/android/ims/ImsException;

    .line 1454
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v0

    const-string v1, "getCommandException GENERIC_FAILURE"

    const-string v2, "MtkSSDecisonMaker"

    packed-switch v0, :pswitch_data_38

    .line 1462
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 1456
    :pswitch_16
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEnableXcapHttpResponse409()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1457
    const-string v0, "getCommandException UT_XCAP_409_CONFLICT"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 1465
    :cond_2d
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    :pswitch_data_38
    .packed-switch 0xf009
        :pswitch_16
    .end packed-switch
.end method

.method private getConditionFromCFReason(I)I
    .registers 3
    .param p1, "reason"    # I

    .line 205
    packed-switch p1, :pswitch_data_12

    .line 216
    const/4 v0, -0x1

    return v0

    .line 211
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 210
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 209
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 208
    :pswitch_b
    const/4 v0, 0x2

    return v0

    .line 207
    :pswitch_d
    const/4 v0, 0x1

    return v0

    .line 206
    :pswitch_f
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private getMtkCallForwardInfo(Lcom/mediatek/ims/MtkImsCallForwardInfo;)Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .registers 4
    .param p1, "info"    # Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 261
    new-instance v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    .line 262
    .local v0, "cfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 263
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 264
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 265
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 266
    iget-object v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 267
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 268
    iget-object v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 269
    return-object v0
.end method

.method private getPhoneId()I
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhoneId:I

    .line 161
    return v0
.end method

.method private getUtInterface()Lcom/android/ims/ImsUtInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_15

    .line 168
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 169
    .local v0, "serviceId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v1, Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->getSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 170
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v1

    .line 166
    .end local v0    # "serviceId":I
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_15
    new-instance v0, Lcom/android/ims/ImsException;

    const/4 v1, 0x0

    const-string v2, "no ims manager"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .registers 5
    .param p1, "infos"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 242
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 243
    .local v0, "cbInfos":[I
    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget v2, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    aput v2, v0, v1

    .line 245
    return-object v0
.end method

.method private handleCwQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .registers 6
    .param p1, "infos"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 250
    .local v0, "cwInfos":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 252
    aget-object v2, p1, v1

    iget v2, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 253
    aput v3, v0, v1

    .line 254
    aput v3, v0, v3

    .line 257
    :cond_11
    return-object v0
.end method

.method private imsCFInfoExToCFInfoEx([Lcom/mediatek/ims/MtkImsCallForwardInfo;)[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .registers 7
    .param p1, "infos"    # [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "cfInfos":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const-string v1, "MtkSSDecisonMaker"

    if-eqz p1, :cond_1b

    array-length v2, p1

    if-eqz v2, :cond_1b

    .line 276
    array-length v2, p1

    new-array v0, v2, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 277
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p1

    .local v3, "s":I
    :goto_d
    if-ge v2, v3, :cond_1a

    .line 278
    aget-object v4, p1, v2

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getMtkCallForwardInfo(Lcom/mediatek/ims/MtkImsCallForwardInfo;)Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    move-result-object v4

    aput-object v4, v0, v2

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_1a
    goto :goto_23

    .line 281
    :cond_1b
    const-string v2, "No CFInfoEx exist ."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 285
    :goto_23
    const-string v2, "imsCFInfoExToCFInfoEx finish."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-object v0
.end method

.method private imsCFInfoToCFInfo([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .registers 7
    .param p1, "infos"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    const-string v1, "MtkSSDecisonMaker"

    if-eqz p1, :cond_1b

    array-length v2, p1

    if-eqz v2, :cond_1b

    .line 304
    array-length v2, p1

    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 305
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p1

    .local v3, "s":I
    :goto_d
    if-ge v2, v3, :cond_1a

    .line 306
    aget-object v4, p1, v2

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v4

    aput-object v4, v0, v2

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_1a
    goto :goto_23

    .line 309
    :cond_1b
    const-string v2, "No CFInfo exist ."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 313
    :goto_23
    const-string v2, "imsCFInfoToCFInfo finish."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-object v0
.end method

.method private processResponse(Ljava/lang/Object;)V
    .registers 28
    .param p1, "obj"    # Ljava/lang/Object;

    .line 783
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 784
    .local v1, "resp":Landroid/os/Message;
    move-object/from16 v2, p1

    check-cast v2, Landroid/os/AsyncResult;

    .line 785
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 786
    .local v3, "arResult":Ljava/lang/Object;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 787
    .local v4, "arException":Ljava/lang/Throwable;
    iget-object v5, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 788
    .local v5, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 789
    .local v7, "request":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processResponse, request = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MtkSSDecisonMaker"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v10, "processResponse CODE_UT_XCAP_404_NOT_FOUND"

    const/4 v11, 0x0

    const-string v13, "ImsSsInfo mStatus = "

    const-string v14, "isNotSupportUtToCS."

    const v12, 0xf007

    const v6, 0xf006

    const/4 v15, 0x2

    packed-switch v8, :pswitch_data_9fe

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .local v18, "arException":Ljava/lang/Throwable;
    .local v19, "request":Ljava/lang/Integer;
    goto/16 :goto_9cd

    .line 927
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .restart local v4    # "arException":Ljava/lang/Throwable;
    .restart local v7    # "request":Ljava/lang/Integer;
    :pswitch_47
    const/4 v8, 0x7

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Landroid/os/Message;

    .line 929
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_8e

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_8e

    .line 930
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 931
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_74

    .line 932
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 934
    const/4 v3, 0x0

    .line 935
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    goto :goto_8a

    .line 937
    :cond_74
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_8a

    .line 938
    if-eqz v1, :cond_89

    .line 939
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v9}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v1, v11, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 942
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 944
    :cond_89
    return-void

    .line 946
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_8a
    :goto_8a
    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1439
    :cond_8e
    :goto_8e
    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 896
    :pswitch_92
    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Landroid/os/Message;

    .line 898
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_d5

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_d5

    .line 899
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 900
    .restart local v8    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_bf

    .line 901
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 903
    const/4 v3, 0x0

    .line 904
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    goto :goto_d5

    .line 906
    :cond_bf
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_d5

    .line 907
    if-eqz v1, :cond_d4

    .line 908
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v9}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v1, v11, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 911
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 913
    :cond_d4
    return-void

    .line 917
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_d5
    :goto_d5
    if-eqz v3, :cond_8e

    .line 918
    const-string v6, "SS_REQUEST_GET_CALL_FORWARD_TIME_SLOT cfinfoEx check."

    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    instance-of v6, v3, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    if-eqz v6, :cond_8e

    .line 920
    move-object v6, v3

    check-cast v6, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    invoke-direct {v0, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->imsCFInfoExToCFInfoEx([Lcom/mediatek/ims/MtkImsCallForwardInfo;)[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    move-result-object v3

    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1412
    :pswitch_eb
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1413
    .local v8, "mode":I
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1415
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_132

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/android/ims/ImsException;

    if-eqz v10, :cond_132

    .line 1416
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/ims/ImsException;

    .line 1417
    .local v10, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    if-ne v11, v6, :cond_122

    .line 1418
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCOLP(ILandroid/os/Message;)V

    .line 1419
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1421
    return-void

    .line 1422
    :cond_122
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_132

    .line 1423
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCOLP(ILandroid/os/Message;)V

    .line 1424
    return-void

    .line 1428
    .end local v10    # "imsException":Lcom/android/ims/ImsException;
    :cond_132
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_149

    .line 1429
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1431
    const/4 v3, 0x0

    .line 1432
    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1428
    :cond_149
    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1375
    .end local v8    # "mode":I
    :pswitch_14d
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1376
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_18a

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_18a

    .line 1377
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 1378
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_17a

    .line 1379
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLP(Landroid/os/Message;)V

    .line 1380
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1382
    return-void

    .line 1383
    :cond_17a
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_18a

    .line 1384
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLP(Landroid/os/Message;)V

    .line 1385
    return-void

    .line 1389
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_18a
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_1a1

    .line 1390
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1392
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1394
    :cond_1a1
    const/4 v6, 0x1

    new-array v6, v6, [I

    .line 1395
    .local v6, "colpInfo":[I
    const/4 v8, 0x0

    aput v8, v6, v8

    .line 1396
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1d3

    .line 1397
    instance-of v8, v3, Landroid/telephony/ims/ImsSsInfo;

    if-eqz v8, :cond_1ce

    .line 1398
    move-object v8, v3

    check-cast v8, Landroid/telephony/ims/ImsSsInfo;

    .line 1399
    .local v8, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    if-eqz v8, :cond_1cd

    .line 1400
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget v10, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    const/4 v11, 0x0

    aput v10, v6, v11

    .line 1403
    .end local v8    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_1cd
    goto :goto_1d3

    .line 1404
    :cond_1ce
    const-string v8, "SS_REQUEST_GET_COLP: arResult is not ImsSsInfo!"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_1d3
    :goto_1d3
    move-object v3, v6

    .line 1409
    .end local v6    # "colpInfo":[I
    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1351
    :pswitch_1d8
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1352
    .local v8, "mode":I
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1354
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_21f

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/android/ims/ImsException;

    if-eqz v10, :cond_21f

    .line 1355
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/ims/ImsException;

    .line 1356
    .restart local v10    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    if-ne v11, v6, :cond_20f

    .line 1357
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCOLR(ILandroid/os/Message;)V

    .line 1358
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1360
    return-void

    .line 1361
    :cond_20f
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_21f

    .line 1362
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCOLR(ILandroid/os/Message;)V

    .line 1363
    return-void

    .line 1367
    .end local v10    # "imsException":Lcom/android/ims/ImsException;
    :cond_21f
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_236

    .line 1368
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1370
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1367
    :cond_236
    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1314
    .end local v8    # "mode":I
    :pswitch_23a
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1315
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_277

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_277

    .line 1316
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 1317
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_267

    .line 1318
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLR(Landroid/os/Message;)V

    .line 1319
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1321
    return-void

    .line 1322
    :cond_267
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_277

    .line 1323
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLR(Landroid/os/Message;)V

    .line 1324
    return-void

    .line 1328
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_277
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_28e

    .line 1329
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1331
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1333
    :cond_28e
    const/4 v6, 0x1

    new-array v6, v6, [I

    .line 1334
    .local v6, "colrInfo":[I
    const/4 v8, 0x0

    aput v8, v6, v8

    .line 1335
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2c0

    .line 1336
    instance-of v8, v3, Landroid/telephony/ims/ImsSsInfo;

    if-eqz v8, :cond_2bb

    .line 1337
    move-object v8, v3

    check-cast v8, Landroid/telephony/ims/ImsSsInfo;

    .line 1338
    .local v8, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    if-eqz v8, :cond_2ba

    .line 1339
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget v10, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    const/4 v11, 0x0

    aput v10, v6, v11

    .line 1342
    .end local v8    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_2ba
    goto :goto_2c0

    .line 1343
    :cond_2bb
    const-string v8, "SS_REQUEST_GET_COLR: arResult is not ImsSsInfo!"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_2c0
    :goto_2c0
    move-object v3, v6

    .line 1348
    .end local v6    # "colrInfo":[I
    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1291
    :pswitch_2c5
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1292
    .local v8, "mode":I
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1293
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_30c

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/android/ims/ImsException;

    if-eqz v10, :cond_30c

    .line 1294
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/ims/ImsException;

    .line 1295
    .restart local v10    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    if-ne v11, v6, :cond_2fc

    .line 1296
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCLIP(ILandroid/os/Message;)V

    .line 1297
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1299
    return-void

    .line 1300
    :cond_2fc
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_30c

    .line 1301
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setCLIP(ILandroid/os/Message;)V

    .line 1302
    return-void

    .line 1306
    .end local v10    # "imsException":Lcom/android/ims/ImsException;
    :cond_30c
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_323

    .line 1307
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1309
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1306
    :cond_323
    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1254
    .end local v8    # "mode":I
    :pswitch_327
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1255
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_35c

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_35c

    .line 1256
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 1257
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_350

    .line 1258
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 1259
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1261
    return-void

    .line 1262
    :cond_350
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_35c

    .line 1263
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 1264
    return-void

    .line 1268
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_35c
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_373

    .line 1269
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1271
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1273
    :cond_373
    const/4 v6, 0x1

    new-array v6, v6, [I

    .line 1274
    .local v6, "clipInfo":[I
    const/4 v8, 0x0

    aput v8, v6, v8

    .line 1275
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3a5

    .line 1276
    instance-of v8, v3, Landroid/telephony/ims/ImsSsInfo;

    if-eqz v8, :cond_3a0

    .line 1277
    move-object v8, v3

    check-cast v8, Landroid/telephony/ims/ImsSsInfo;

    .line 1278
    .local v8, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    if-eqz v8, :cond_39f

    .line 1279
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget v10, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    const/4 v11, 0x0

    aput v10, v6, v11

    .line 1282
    .end local v8    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_39f
    goto :goto_3a5

    .line 1283
    :cond_3a0
    const-string v8, "SS_REQUEST_GET_CLIP: arResult is not ImsSsInfo!"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_3a5
    :goto_3a5
    move-object v3, v6

    .line 1288
    .end local v6    # "clipInfo":[I
    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1230
    :pswitch_3aa
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1231
    .local v8, "mode":I
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1233
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_3e9

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/android/ims/ImsException;

    if-eqz v10, :cond_3e9

    .line 1234
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/ims/ImsException;

    .line 1235
    .restart local v10    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    if-ne v11, v6, :cond_3dd

    .line 1236
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v8, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1237
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1239
    return-void

    .line 1240
    :cond_3dd
    invoke-virtual {v10}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_3e9

    .line 1241
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v8, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1242
    return-void

    .line 1246
    .end local v10    # "imsException":Lcom/android/ims/ImsException;
    :cond_3e9
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_400

    .line 1247
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1249
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1246
    :cond_400
    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1187
    .end local v8    # "mode":I
    :pswitch_404
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 1189
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_439

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_439

    .line 1190
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 1191
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    if-ne v10, v6, :cond_42d

    .line 1192
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1193
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1195
    return-void

    .line 1196
    :cond_42d
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_439

    .line 1197
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1198
    return-void

    .line 1202
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_439
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v6

    if-eqz v6, :cond_450

    .line 1203
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v4, v6

    .line 1205
    const/4 v3, 0x0

    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1207
    :cond_450
    new-array v6, v15, [I

    .line 1208
    .local v6, "clirInfo":[I
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_498

    .line 1209
    move-object v8, v3

    check-cast v8, Landroid/telephony/ims/ImsSsInfo;

    .line 1210
    .local v8, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    if-eqz v8, :cond_461

    .line 1213
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/telephony/ims/ImsSsInfo;->getCompatArray(I)[I

    move-result-object v6

    .line 1217
    :cond_461
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSavedClirSetting()[I

    move-result-object v10

    .line 1218
    .local v10, "clirSetting":[I
    const/4 v11, 0x0

    aget v12, v10, v11

    if-nez v12, :cond_477

    .line 1219
    const-string v12, "Set clirInfo[0] to default"

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    aget v12, v10, v11

    aput v12, v6, v11

    .line 1222
    :cond_477
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SS_REQUEST_GET_CLIR: CLIR param n="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v6, v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " m="

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    .end local v8    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v10    # "clirSetting":[I
    :cond_498
    move-object v3, v6

    .line 1227
    .end local v6    # "clirInfo":[I
    move-object/from16 v19, v7

    goto/16 :goto_9cd

    .line 1162
    :pswitch_49d
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 1163
    .local v8, "enable":Z
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1164
    .local v10, "serviceClass":I
    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    check-cast v1, Landroid/os/Message;

    .line 1165
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_4cd

    .line 1166
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1167
    .local v6, "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 1168
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 1169
    invoke-virtual {v6, v8, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 1170
    return-void

    .line 1171
    .end local v6    # "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    :cond_4cd
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_8e

    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v11, v11, Lcom/android/ims/ImsException;

    if-eqz v11, :cond_8e

    .line 1172
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v11, Lcom/android/ims/ImsException;

    .line 1173
    .local v11, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v11}, Lcom/android/ims/ImsException;->getCode()I

    move-result v13

    if-ne v13, v6, :cond_4ee

    .line 1174
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v8, v10, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1175
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1177
    return-void

    .line 1178
    :cond_4ee
    invoke-virtual {v11}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v12, :cond_4fa

    .line 1179
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v8, v10, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1180
    return-void

    .line 1182
    .end local v11    # "imsException":Lcom/android/ims/ImsException;
    :cond_4fa
    goto/16 :goto_8e

    .line 1042
    .end local v8    # "enable":Z
    .end local v10    # "serviceClass":I
    :pswitch_4fc
    const/4 v8, 0x0

    .line 1043
    .local v8, "queryVolteUser":Z
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v11, v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v11, :cond_50c

    .line 1044
    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1045
    .local v10, "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v11

    if-nez v11, :cond_50c

    .line 1046
    const/4 v8, 0x1

    .line 1050
    .end local v10    # "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    :cond_50c
    if-eqz v8, :cond_63c

    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v10

    if-nez v10, :cond_63c

    .line 1051
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1052
    .restart local v10    # "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1054
    .local v11, "reqCode":Ljava/lang/Integer;
    const/4 v13, 0x0

    .line 1055
    .local v13, "enable":Z
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v6, 0x5

    if-ne v12, v6, :cond_53f

    .line 1056
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1057
    .local v12, "serviceClass":I
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/os/Message;

    goto :goto_55c

    .line 1059
    .end local v12    # "serviceClass":I
    :cond_53f
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1060
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1061
    .restart local v12    # "serviceClass":I
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Landroid/os/Message;

    .line 1064
    :goto_55c
    const/4 v6, 0x0

    .line 1065
    .local v6, "imsException":Lcom/android/ims/ImsException;
    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v15, :cond_56c

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v15, v15, Lcom/android/ims/ImsException;

    if-eqz v15, :cond_56c

    .line 1066
    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v15

    check-cast v6, Lcom/android/ims/ImsException;

    .line 1069
    :cond_56c
    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_590

    .line 1070
    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 1071
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 1072
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v14, 0x5

    if-ne v9, v14, :cond_587

    .line 1073
    invoke-virtual {v10, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    goto/16 :goto_63b

    .line 1075
    :cond_587
    invoke-virtual {v10, v13, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    goto/16 :goto_63b

    .line 1077
    :cond_590
    if-eqz v6, :cond_5ea

    .line 1078
    invoke-virtual {v6}, Lcom/android/ims/ImsException;->getCode()I

    move-result v15

    move-object/from16 v18, v4

    const v4, 0xf006

    .end local v4    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    if-ne v15, v4, :cond_5e7

    .line 1080
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 1081
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v15

    const-string v4, "persist.vendor.radio.terminal-based.cw"

    move-object/from16 v19, v7

    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v19    # "request":Ljava/lang/Integer;
    const-string v7, "disabled_tbcw"

    invoke-virtual {v10, v15, v4, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setSSPropertyThroughHidl(ILjava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1086
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v4

    if-eqz v4, :cond_5d4

    .line 1087
    invoke-static {v9, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1090
    .end local v18    # "arException":Ljava/lang/Throwable;
    .restart local v4    # "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1091
    if-eqz v1, :cond_5d3

    .line 1092
    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1093
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1095
    :cond_5d3
    return-void

    .line 1097
    .end local v4    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_5d4
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_5e1

    .line 1098
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_63b

    .line 1100
    :cond_5e1
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v13, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_63b

    .line 1078
    .end local v19    # "request":Ljava/lang/Integer;
    .restart local v7    # "request":Ljava/lang/Integer;
    :cond_5e7
    move-object/from16 v19, v7

    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v19    # "request":Ljava/lang/Integer;
    goto :goto_5ee

    .line 1077
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .restart local v4    # "arException":Ljava/lang/Throwable;
    .restart local v7    # "request":Ljava/lang/Integer;
    :cond_5ea
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .line 1103
    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    :goto_5ee
    if-eqz v6, :cond_62a

    .line 1104
    invoke-virtual {v6}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const v7, 0xf007

    if-ne v4, v7, :cond_62a

    .line 1105
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v4

    if-eqz v4, :cond_617

    .line 1106
    invoke-static {v9, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1109
    .end local v18    # "arException":Ljava/lang/Throwable;
    .restart local v4    # "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1110
    if-eqz v1, :cond_616

    .line 1111
    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1112
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1114
    :cond_616
    return-void

    .line 1116
    .end local v4    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_617
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_624

    .line 1117
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_63b

    .line 1119
    :cond_624
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v13, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_63b

    .line 1123
    :cond_62a
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 1124
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_638

    .line 1125
    invoke-virtual {v10, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    goto :goto_63b

    .line 1127
    :cond_638
    invoke-virtual {v10, v13, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 1130
    :goto_63b
    return-void

    .line 1050
    .end local v6    # "imsException":Lcom/android/ims/ImsException;
    .end local v10    # "mtkGsmCdmaPhone":Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .end local v11    # "reqCode":Ljava/lang/Integer;
    .end local v12    # "serviceClass":I
    .end local v13    # "enable":Z
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .restart local v4    # "arException":Ljava/lang/Throwable;
    .restart local v7    # "request":Ljava/lang/Integer;
    :cond_63c
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .line 1133
    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    const-string v4, "processResponse: SS_REQUEST_GET_CALL_WAITING"

    invoke-static {v9, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1135
    .local v4, "serviceClass":I
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Landroid/os/Message;

    .line 1137
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_68c

    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/ims/ImsException;

    if-eqz v6, :cond_68c

    .line 1138
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/ims/ImsException;

    .line 1139
    .restart local v6    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v6}, Lcom/android/ims/ImsException;->getCode()I

    move-result v7

    const v10, 0xf006

    if-ne v7, v10, :cond_67d

    .line 1140
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1141
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1143
    return-void

    .line 1144
    :cond_67d
    invoke-virtual {v6}, Lcom/android/ims/ImsException;->getCode()I

    move-result v7

    const v10, 0xf007

    if-ne v7, v10, :cond_68c

    .line 1146
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1147
    return-void

    .line 1151
    .end local v6    # "imsException":Lcom/android/ims/ImsException;
    :cond_68c
    if-eqz v3, :cond_69f

    .line 1152
    const-string v6, "SS_REQUEST_GET_CALL_WAITING ssinfo check."

    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    instance-of v6, v3, [Landroid/telephony/ims/ImsSsInfo;

    if-eqz v6, :cond_69f

    .line 1154
    iget-object v6, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v0, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->handleCwQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v3

    .line 1159
    .end local v4    # "serviceClass":I
    :cond_69f
    move-object/from16 v4, v18

    goto/16 :goto_9cd

    .line 1006
    .end local v8    # "queryVolteUser":Z
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .local v4, "arException":Ljava/lang/Throwable;
    .restart local v7    # "request":Ljava/lang/Integer;
    :pswitch_6a3
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1007
    .local v4, "facility":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1008
    .local v6, "lockState":Z
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1009
    .local v7, "password":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1010
    .local v8, "serviceClass":I
    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    check-cast v1, Landroid/os/Message;

    .line 1012
    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v11, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v11, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportOCB(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6e7

    .line 1013
    new-instance v11, Lcom/android/internal/telephony/CommandException;

    sget-object v12, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1015
    .end local v18    # "arException":Ljava/lang/Throwable;
    .local v11, "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    move-object/from16 v18, v11

    .line 1018
    .end local v11    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_6e7
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_921

    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v11, v11, Lcom/android/ims/ImsException;

    if-eqz v11, :cond_921

    .line 1019
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v11, Lcom/android/ims/ImsException;

    .line 1020
    .local v11, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v11}, Lcom/android/ims/ImsException;->getCode()I

    move-result v12

    const v13, 0xf006

    if-ne v12, v13, :cond_718

    .line 1021
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v9

    move-object/from16 v21, v4

    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v1

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 1023
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1025
    return-void

    .line 1026
    :cond_718
    invoke-virtual {v11}, Lcom/android/ims/ImsException;->getCode()I

    move-result v12

    const v13, 0xf007

    if-ne v12, v13, :cond_733

    .line 1027
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v9

    move-object/from16 v21, v4

    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v1

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 1028
    return-void

    .line 1029
    :cond_733
    invoke-virtual {v11}, Lcom/android/ims/ImsException;->getCode()I

    move-result v12

    const v13, 0xf008

    if-ne v12, v13, :cond_752

    .line 1032
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v12, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTransferXcap404()Z

    move-result v12

    if-eqz v12, :cond_752

    .line 1033
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v10, Lcom/android/internal/telephony/CommandException;

    sget-object v12, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v10, v12}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object/from16 v18, v10

    .line 1038
    .end local v11    # "imsException":Lcom/android/ims/ImsException;
    :cond_752
    move-object/from16 v4, v18

    goto/16 :goto_9cd

    .line 950
    .end local v6    # "lockState":Z
    .end local v8    # "serviceClass":I
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .local v4, "arException":Ljava/lang/Throwable;
    .local v7, "request":Ljava/lang/Integer;
    :pswitch_756
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljava/lang/String;

    .line 951
    .local v4, "facility":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Ljava/lang/String;

    .line 952
    .local v6, "password":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 953
    .local v7, "serviceClass":I
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Landroid/os/Message;

    .line 955
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_7f5

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_7f5

    .line 956
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 957
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    const v12, 0xf006

    if-eq v11, v12, :cond_7bc

    .line 958
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    const v12, 0xf007

    if-ne v11, v12, :cond_79e

    goto :goto_7bc

    .line 976
    :cond_79e
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v11

    const v12, 0xf008

    if-ne v11, v12, :cond_7f5

    .line 979
    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v11, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTransferXcap404()Z

    move-result v11

    if-eqz v11, :cond_7f5

    .line 980
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    new-instance v10, Lcom/android/internal/telephony/CommandException;

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .end local v18    # "arException":Ljava/lang/Throwable;
    .local v10, "arException":Ljava/lang/Throwable;
    goto :goto_7f7

    .line 960
    .end local v10    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_7bc
    :goto_7bc
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 961
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->checkUiccApplicationForCB()Lcom/android/internal/telephony/CommandException;

    move-result-object v10

    .line 962
    .local v10, "checkError":Lcom/android/internal/telephony/CommandException;
    if-nez v10, :cond_7f3

    .line 963
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v11, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 965
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v24

    .line 963
    move-object/from16 v20, v9

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v25, v1

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 967
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v9

    const v11, 0xf006

    if-ne v9, v11, :cond_7f2

    .line 969
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 972
    :cond_7f2
    return-void

    .line 974
    :cond_7f3
    nop

    .line 976
    .end local v18    # "arException":Ljava/lang/Throwable;
    .local v10, "arException":Ljava/lang/Throwable;
    goto :goto_7f7

    .line 987
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    .end local v10    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_7f5
    move-object/from16 v10, v18

    .end local v18    # "arException":Ljava/lang/Throwable;
    .restart local v10    # "arException":Ljava/lang/Throwable;
    :goto_7f7
    if-eqz v3, :cond_80a

    .line 988
    const-string v8, "SS_REQUEST_GET_CALL_BARRING ssinfo check."

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    instance-of v8, v3, [Landroid/telephony/ims/ImsSsInfo;

    if-eqz v8, :cond_80a

    .line 990
    iget-object v8, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v0, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v3

    .line 994
    :cond_80a
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v8, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v8, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportOCB(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_830

    .line 995
    new-instance v8, Lcom/android/internal/telephony/CommandException;

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v8, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 997
    .end local v10    # "arException":Ljava/lang/Throwable;
    .local v8, "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 998
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mIsTempVolteUser:Z

    .line 1000
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1001
    .local v10, "msg":Landroid/os/Message;
    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    const-wide/16 v12, 0x2710

    invoke-virtual {v11, v10, v12, v13}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1002
    .end local v10    # "msg":Landroid/os/Message;
    move-object v4, v8

    goto/16 :goto_9cd

    .line 994
    .end local v8    # "arException":Ljava/lang/Throwable;
    .local v10, "arException":Ljava/lang/Throwable;
    :cond_830
    move-object v4, v10

    goto/16 :goto_9cd

    .line 836
    .end local v6    # "password":Ljava/lang/String;
    .end local v10    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .local v4, "arException":Ljava/lang/Throwable;
    .local v7, "request":Ljava/lang/Integer;
    :pswitch_833
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 837
    .local v4, "action":I
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 838
    .local v6, "cfReason":I
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 839
    .local v7, "serviceClass":I
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    check-cast v8, Ljava/lang/String;

    .line 840
    .local v8, "number":Ljava/lang/String;
    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 841
    .local v17, "timeSeconds":I
    const/4 v10, 0x6

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Landroid/os/Message;

    .line 843
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_8b9

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/android/ims/ImsException;

    if-eqz v10, :cond_8b9

    .line 844
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v10

    check-cast v20, Lcom/android/ims/ImsException;

    .line 845
    .local v20, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v20 .. v20}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    const v11, 0xf006

    if-ne v10, v11, :cond_8a2

    .line 846
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v11, v4

    move v12, v6

    move v13, v7

    move-object v14, v8

    move/from16 v15, v17

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 848
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 850
    return-void

    .line 851
    :cond_8a2
    invoke-virtual/range {v20 .. v20}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    const v11, 0xf007

    if-ne v10, v11, :cond_8b9

    .line 852
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v11, v4

    move v12, v6

    move v13, v7

    move-object v14, v8

    move/from16 v15, v17

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 854
    return-void

    .line 858
    .end local v20    # "imsException":Lcom/android/ims/ImsException;
    :cond_8b9
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_921

    .line 860
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8f4

    .line 861
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v12, v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v12, :cond_8f4

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 862
    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isSupportSaveCFNumber()Z

    move-result v10

    if-eqz v10, :cond_8f4

    .line 863
    if-eq v4, v11, :cond_8e5

    const/4 v10, 0x3

    if-ne v4, v10, :cond_8da

    goto :goto_8e5

    .line 871
    :cond_8da
    const/4 v10, 0x4

    if-ne v4, v10, :cond_8f4

    .line 872
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->clearCFSharePreference(I)V

    goto :goto_8f4

    .line 865
    :cond_8e5
    :goto_8e5
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 866
    invoke-virtual {v10, v6, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->applyCFSharePreference(ILjava/lang/String;)Z

    move-result v10

    .line 868
    .local v10, "ret":Z
    if-nez v10, :cond_8f4

    .line 869
    const-string v11, "applySharePreference false."

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v10    # "ret":Z
    :cond_8f4
    :goto_8f4
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->queryCFUAgainAfterSet()Z

    move-result v10

    if-eqz v10, :cond_921

    if-nez v6, :cond_921

    .line 880
    const/4 v10, 0x0

    .line 881
    .local v10, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    if-nez v3, :cond_909

    .line 882
    const-string v11, "arResult is null."

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91d

    .line 884
    :cond_909
    instance-of v11, v3, [Landroid/telephony/ims/ImsCallForwardInfo;

    if-eqz v11, :cond_916

    .line 885
    move-object v11, v3

    check-cast v11, [Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->imsCFInfoToCFInfo([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v10

    .line 886
    move-object v3, v10

    goto :goto_91d

    .line 887
    :cond_916
    instance-of v11, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v11, :cond_91d

    .line 888
    .end local v10    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    move-object v10, v3

    check-cast v10, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 891
    :cond_91d
    :goto_91d
    move-object/from16 v4, v18

    goto/16 :goto_9cd

    .line 1439
    .end local v4    # "action":I
    .end local v6    # "cfReason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v17    # "timeSeconds":I
    :cond_921
    move-object/from16 v4, v18

    goto/16 :goto_9cd

    .line 793
    .end local v18    # "arException":Ljava/lang/Throwable;
    .end local v19    # "request":Ljava/lang/Integer;
    .local v4, "arException":Ljava/lang/Throwable;
    .local v7, "request":Ljava/lang/Integer;
    :pswitch_925
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .end local v4    # "arException":Ljava/lang/Throwable;
    .end local v7    # "request":Ljava/lang/Integer;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    .restart local v19    # "request":Ljava/lang/Integer;
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 794
    .local v4, "cfReason":I
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 795
    .local v6, "serviceClass":I
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 796
    .local v7, "number":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Landroid/os/Message;

    .line 798
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_9b6

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/ims/ImsException;

    if-eqz v8, :cond_9b6

    .line 799
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 800
    .local v8, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    const-string v11, "mCi.queryCallForwardStatus."

    const v12, 0xf006

    if-ne v10, v12, :cond_98e

    .line 801
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 803
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v10

    if-eqz v10, :cond_985

    .line 804
    invoke-static {v9, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v10, Lcom/android/internal/telephony/CommandException;

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 807
    .end local v18    # "arException":Ljava/lang/Throwable;
    .local v10, "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_9b8

    .line 809
    .end local v10    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_985
    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v4, v6, v7, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 811
    return-void

    .line 813
    :cond_98e
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v10

    const v12, 0xf007

    if-ne v10, v12, :cond_9b6

    .line 814
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v10

    if-eqz v10, :cond_9ad

    .line 815
    invoke-static {v9, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    new-instance v10, Lcom/android/internal/telephony/CommandException;

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 818
    .end local v18    # "arException":Ljava/lang/Throwable;
    .restart local v10    # "arException":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_9b8

    .line 820
    .end local v10    # "arException":Ljava/lang/Throwable;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_9ad
    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v4, v6, v7, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 822
    return-void

    .line 827
    .end local v8    # "imsException":Lcom/android/ims/ImsException;
    :cond_9b6
    move-object/from16 v10, v18

    .end local v18    # "arException":Ljava/lang/Throwable;
    .restart local v10    # "arException":Ljava/lang/Throwable;
    :goto_9b8
    if-eqz v3, :cond_9cc

    .line 828
    const-string v8, "SS_REQUEST_GET_CALL_FORWARD cfinfo check."

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    instance-of v8, v3, [Landroid/telephony/ims/ImsCallForwardInfo;

    if-eqz v8, :cond_9cc

    .line 830
    move-object v8, v3

    check-cast v8, [Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v0, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->imsCFInfoToCFInfo([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v3

    move-object v4, v10

    goto :goto_9cd

    .line 1439
    .end local v4    # "cfReason":I
    .end local v6    # "serviceClass":I
    .end local v7    # "number":Ljava/lang/String;
    :cond_9cc
    move-object v4, v10

    .end local v10    # "arException":Ljava/lang/Throwable;
    .local v4, "arException":Ljava/lang/Throwable;
    :goto_9cd
    if-eqz v4, :cond_9f5

    instance-of v6, v4, Lcom/android/ims/ImsException;

    if-eqz v6, :cond_9f5

    .line 1440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processResponse, imsException.getCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v4

    check-cast v7, Lcom/android/ims/ImsException;

    .line 1441
    invoke-virtual {v7}, Lcom/android/ims/ImsException;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1440
    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    move-object v6, v4

    check-cast v6, Lcom/android/ims/ImsException;

    invoke-direct {v0, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCommandException(Lcom/android/ims/ImsException;)Lcom/android/internal/telephony/CommandException;

    move-result-object v4

    .line 1446
    :cond_9f5
    if-eqz v1, :cond_9fd

    .line 1447
    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1448
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1450
    :cond_9fd
    return-void

    :pswitch_data_9fe
    .packed-switch 0x1
        :pswitch_925
        :pswitch_833
        :pswitch_756
        :pswitch_6a3
        :pswitch_4fc
        :pswitch_49d
        :pswitch_404
        :pswitch_3aa
        :pswitch_327
        :pswitch_2c5
        :pswitch_23a
        :pswitch_1d8
        :pswitch_14d
        :pswitch_eb
        :pswitch_92
        :pswitch_47
    .end packed-switch
.end method

.method private processSendRequest(Ljava/lang/Object;)V
    .registers 21
    .param p1, "obj"    # Ljava/lang/Object;

    .line 369
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 370
    .local v0, "resp":Landroid/os/Message;
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/ArrayList;

    .line 371
    .local v2, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 372
    .local v4, "request":Ljava/lang/Integer;
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 374
    .local v5, "utResp":Landroid/os/Message;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processSendRequest, request = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MtkSSDecisonMaker"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x1

    packed-switch v7, :pswitch_data_5b4

    goto/16 :goto_5b3

    .line 468
    :pswitch_3a
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 469
    .local v3, "action":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 470
    .local v6, "cfReason":I
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 471
    .local v14, "serviceClass":I
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/lang/String;

    .line 472
    .local v15, "number":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 473
    .local v16, "timeSeconds":I
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, [J

    .line 474
    .local v17, "timeSlot":[J
    const/4 v7, 0x7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/os/Message;

    .line 476
    .end local v0    # "resp":Landroid/os/Message;
    .local v13, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_b5

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_8d

    move/from16 v18, v3

    move-object v3, v13

    goto :goto_b8

    .line 482
    :cond_8d
    :try_start_8d
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 483
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/MtkImsUt;

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getActionFromCFAction(I)I

    move-result v8

    .line 484
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v9
    :try_end_9c
    .catch Lcom/android/ims/ImsException; {:try_start_8d .. :try_end_9c} :catch_ac

    .line 483
    move-object v10, v15

    move/from16 v11, v16

    move-object/from16 v12, v17

    move/from16 v18, v3

    move-object v3, v13

    .end local v13    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    .local v18, "action":I
    move-object v13, v5

    :try_start_a5
    invoke-virtual/range {v7 .. v13}, Lcom/mediatek/ims/MtkImsUt;->updateCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    :try_end_a8
    .catch Lcom/android/ims/ImsException; {:try_start_a5 .. :try_end_a8} :catch_aa

    .line 491
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_552

    .line 489
    :catch_aa
    move-exception v0

    goto :goto_b0

    .end local v18    # "action":I
    .local v3, "action":I
    .restart local v13    # "resp":Landroid/os/Message;
    :catch_ac
    move-exception v0

    move/from16 v18, v3

    move-object v3, v13

    .line 490
    .end local v13    # "resp":Landroid/os/Message;
    .local v0, "e":Lcom/android/ims/ImsException;
    .local v3, "resp":Landroid/os/Message;
    .restart local v18    # "action":I
    :goto_b0
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 492
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_552

    .line 476
    .end local v18    # "action":I
    .local v3, "action":I
    .restart local v13    # "resp":Landroid/os/Message;
    :cond_b5
    move/from16 v18, v3

    move-object v3, v13

    .line 477
    .end local v13    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    .restart local v18    # "action":I
    :goto_b8
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 478
    goto/16 :goto_552

    .line 448
    .end local v3    # "resp":Landroid/os/Message;
    .end local v6    # "cfReason":I
    .end local v14    # "serviceClass":I
    .end local v15    # "number":Ljava/lang/String;
    .end local v16    # "timeSeconds":I
    .end local v17    # "timeSlot":[J
    .end local v18    # "action":I
    .local v0, "resp":Landroid/os/Message;
    :pswitch_bd
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 449
    .local v3, "cfReason":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 450
    .local v6, "serviceClass":I
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 452
    .end local v0    # "resp":Landroid/os/Message;
    .local v7, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_fe

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_e8

    goto :goto_fe

    .line 458
    :cond_e8
    :try_start_e8
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 459
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/MtkImsUt;

    .line 460
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v9

    .line 459
    invoke-virtual {v8, v9, v5}, Lcom/mediatek/ims/MtkImsUt;->queryCallForwardInTimeSlot(ILandroid/os/Message;)V
    :try_end_f6
    .catch Lcom/android/ims/ImsException; {:try_start_e8 .. :try_end_f6} :catch_f8

    .line 464
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_376

    .line 462
    :catch_f8
    move-exception v0

    .line 463
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 465
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_376

    .line 453
    :cond_fe
    :goto_fe
    invoke-direct {v1, v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 454
    goto/16 :goto_376

    .line 756
    .end local v3    # "cfReason":I
    .end local v6    # "serviceClass":I
    .end local v7    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_103
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 757
    .local v7, "mode":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 759
    .end local v0    # "resp":Landroid/os/Message;
    .local v6, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_149

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_124

    goto :goto_149

    .line 765
    :cond_124
    :try_start_124
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 766
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v9

    if-nez v9, :cond_139

    .line 767
    if-eqz v7, :cond_135

    move v3, v14

    :cond_135
    invoke-interface {v0, v3, v5}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V

    goto :goto_141

    .line 769
    :cond_139
    const-string v3, "Silent queryCOLP"

    invoke-static {v8, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_141
    .catch Lcom/android/ims/ImsException; {:try_start_124 .. :try_end_141} :catch_143

    .line 774
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_141
    goto/16 :goto_3c0

    .line 772
    :catch_143
    move-exception v0

    .line 773
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 775
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_3c0

    .line 760
    :cond_149
    :goto_149
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 761
    goto/16 :goto_3c0

    .line 740
    .end local v6    # "resp":Landroid/os/Message;
    .end local v7    # "mode":I
    .local v0, "resp":Landroid/os/Message;
    :pswitch_14e
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 742
    .end local v0    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_174

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_165

    goto :goto_174

    .line 748
    :cond_165
    :try_start_165
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 749
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_16c
    .catch Lcom/android/ims/ImsException; {:try_start_165 .. :try_end_16c} :catch_16e

    .line 752
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_552

    .line 750
    :catch_16e
    move-exception v0

    .line 751
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 753
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_552

    .line 743
    :cond_174
    :goto_174
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 744
    goto/16 :goto_552

    .line 718
    .end local v3    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_179
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 719
    .local v3, "mode":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 721
    .end local v0    # "resp":Landroid/os/Message;
    .restart local v6    # "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_1bc

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_19a

    goto :goto_1bc

    .line 727
    :cond_19a
    :try_start_19a
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 728
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v7

    if-nez v7, :cond_1ac

    .line 729
    invoke-interface {v0, v3, v5}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V

    goto :goto_1b4

    .line 731
    :cond_1ac
    const-string v7, "Silent queryCOLR"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_1b4
    .catch Lcom/android/ims/ImsException; {:try_start_19a .. :try_end_1b4} :catch_1b6

    .line 736
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_1b4
    goto/16 :goto_3c0

    .line 734
    :catch_1b6
    move-exception v0

    .line 735
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 737
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_3c0

    .line 722
    :cond_1bc
    :goto_1bc
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 723
    goto/16 :goto_3c0

    .line 702
    .end local v3    # "mode":I
    .end local v6    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_1c1
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 704
    .end local v0    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_1e7

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_1d8

    goto :goto_1e7

    .line 710
    :cond_1d8
    :try_start_1d8
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 711
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_1df
    .catch Lcom/android/ims/ImsException; {:try_start_1d8 .. :try_end_1df} :catch_1e1

    .line 714
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_552

    .line 712
    :catch_1e1
    move-exception v0

    .line 713
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 715
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_552

    .line 705
    :cond_1e7
    :goto_1e7
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 706
    goto/16 :goto_552

    .line 675
    .end local v3    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_1ec
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 676
    .restart local v7    # "mode":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 678
    .end local v0    # "resp":Landroid/os/Message;
    .restart local v6    # "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_248

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_20d

    goto :goto_248

    .line 683
    :cond_20d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_243

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_21e

    goto :goto_243

    .line 689
    :cond_21e
    :try_start_21e
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 690
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v9

    if-nez v9, :cond_233

    .line 691
    if-eqz v7, :cond_22f

    move v3, v14

    :cond_22f
    invoke-interface {v0, v3, v5}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V

    goto :goto_23b

    .line 693
    :cond_233
    const-string v3, "Silent queryCLIP"

    invoke-static {v8, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_23b
    .catch Lcom/android/ims/ImsException; {:try_start_21e .. :try_end_23b} :catch_23d

    .line 698
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_23b
    goto/16 :goto_3c0

    .line 696
    :catch_23d
    move-exception v0

    .line 697
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 699
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_3c0

    .line 684
    :cond_243
    :goto_243
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 685
    goto/16 :goto_3c0

    .line 679
    :cond_248
    :goto_248
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 680
    goto/16 :goto_3c0

    .line 654
    .end local v6    # "resp":Landroid/os/Message;
    .end local v7    # "mode":I
    .local v0, "resp":Landroid/os/Message;
    :pswitch_24d
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 656
    .end local v0    # "resp":Landroid/os/Message;
    .restart local v3    # "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_289

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_264

    goto :goto_289

    .line 661
    :cond_264
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_284

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_275

    goto :goto_284

    .line 667
    :cond_275
    :try_start_275
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 668
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_27c
    .catch Lcom/android/ims/ImsException; {:try_start_275 .. :try_end_27c} :catch_27e

    .line 671
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_552

    .line 669
    :catch_27e
    move-exception v0

    .line 670
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 672
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_552

    .line 662
    :cond_284
    :goto_284
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 663
    goto/16 :goto_552

    .line 657
    :cond_289
    :goto_289
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 658
    goto/16 :goto_552

    .line 627
    .end local v3    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_28e
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 628
    .local v3, "mode":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 630
    .end local v0    # "resp":Landroid/os/Message;
    .restart local v6    # "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_2e7

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_2af

    goto :goto_2e7

    .line 635
    :cond_2af
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_2e2

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_2c0

    goto :goto_2e2

    .line 641
    :cond_2c0
    :try_start_2c0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 642
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v7

    if-nez v7, :cond_2d2

    .line 643
    invoke-interface {v0, v3, v5}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V

    goto :goto_2da

    .line 645
    :cond_2d2
    const-string v7, "Silent queryCLIR"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_2da
    .catch Lcom/android/ims/ImsException; {:try_start_2c0 .. :try_end_2da} :catch_2dc

    .line 650
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_2da
    goto/16 :goto_3c0

    .line 648
    :catch_2dc
    move-exception v0

    .line 649
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 651
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_3c0

    .line 636
    :cond_2e2
    :goto_2e2
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 637
    goto/16 :goto_3c0

    .line 631
    :cond_2e7
    :goto_2e7
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 632
    goto/16 :goto_3c0

    .line 611
    .end local v3    # "mode":I
    .end local v6    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_2ec
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 613
    .end local v0    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_312

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_303

    goto :goto_312

    .line 619
    :cond_303
    :try_start_303
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 620
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_30a
    .catch Lcom/android/ims/ImsException; {:try_start_303 .. :try_end_30a} :catch_30c

    .line 623
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_552

    .line 621
    :catch_30c
    move-exception v0

    .line 622
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 624
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_552

    .line 614
    :cond_312
    :goto_312
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 615
    goto/16 :goto_552

    .line 582
    .end local v3    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_317
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 583
    .local v3, "enable":Z
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 584
    .local v6, "serviceClass":I
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 586
    .end local v0    # "resp":Landroid/os/Message;
    .local v7, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_372

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_342

    goto :goto_372

    .line 591
    :cond_342
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_36e

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_353

    goto :goto_36e

    .line 597
    :cond_353
    :try_start_353
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 600
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v8, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v8

    if-eqz v8, :cond_365

    .line 601
    invoke-interface {v0, v3, v6, v5}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V

    goto :goto_368

    .line 603
    :cond_365
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_368
    .catch Lcom/android/ims/ImsException; {:try_start_353 .. :try_end_368} :catch_369

    .line 607
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_368
    goto :goto_376

    .line 605
    :catch_369
    move-exception v0

    .line 606
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 608
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_376

    .line 592
    :cond_36e
    :goto_36e
    invoke-direct {v1, v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 593
    goto :goto_376

    .line 587
    :cond_372
    :goto_372
    invoke-direct {v1, v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 588
    nop

    .line 780
    .end local v3    # "enable":Z
    .end local v6    # "serviceClass":I
    :goto_376
    move-object v0, v7

    goto/16 :goto_5b3

    .line 560
    .end local v7    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_379
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 561
    .local v3, "serviceClass":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 563
    .end local v0    # "resp":Landroid/os/Message;
    .local v6, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_3bc

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_39a

    goto :goto_3bc

    .line 568
    :cond_39a
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_3b8

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_3ab

    goto :goto_3b8

    .line 574
    :cond_3ab
    :try_start_3ab
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 575
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v0, v5}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_3b2
    .catch Lcom/android/ims/ImsException; {:try_start_3ab .. :try_end_3b2} :catch_3b3

    .line 578
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_3c0

    .line 576
    :catch_3b3
    move-exception v0

    .line 577
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 579
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_3c0

    .line 569
    :cond_3b8
    :goto_3b8
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 570
    goto :goto_3c0

    .line 564
    :cond_3bc
    :goto_3bc
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 565
    nop

    .line 780
    .end local v3    # "serviceClass":I
    :goto_3c0
    move-object v0, v6

    goto/16 :goto_5b3

    .line 532
    .end local v6    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_3c3
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 533
    .local v3, "facility":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 534
    .local v6, "lockState":Z
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/String;

    .line 535
    .local v13, "password":Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 536
    .restart local v14    # "serviceClass":I
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Landroid/os/Message;

    .line 538
    .end local v0    # "resp":Landroid/os/Message;
    .local v15, "resp":Landroid/os/Message;
    move v9, v6

    .line 540
    .local v9, "iLockState":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_426

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_3fd

    goto :goto_426

    .line 545
    :cond_3fd
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_422

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_40e

    goto :goto_422

    .line 551
    :cond_40e
    :try_start_40e
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v7

    .line 552
    .local v7, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x0

    move-object v10, v5

    move v12, v14

    invoke-interface/range {v7 .. v12}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V
    :try_end_41c
    .catch Lcom/android/ims/ImsException; {:try_start_40e .. :try_end_41c} :catch_41d

    .line 556
    .end local v7    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_42a

    .line 554
    :catch_41d
    move-exception v0

    .line 555
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v15}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 557
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_42a

    .line 546
    :cond_422
    :goto_422
    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 547
    goto :goto_42a

    .line 541
    :cond_426
    :goto_426
    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 542
    nop

    .line 780
    .end local v3    # "facility":Ljava/lang/String;
    .end local v6    # "lockState":Z
    .end local v9    # "iLockState":I
    .end local v13    # "password":Ljava/lang/String;
    .end local v14    # "serviceClass":I
    :goto_42a
    move-object v0, v15

    goto/16 :goto_5b3

    .line 495
    .end local v15    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_42d
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 496
    .restart local v3    # "facility":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 497
    .local v6, "password":Ljava/lang/String;
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 498
    .local v7, "serviceClass":I
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    .line 500
    .end local v0    # "resp":Landroid/os/Message;
    .local v8, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_4a3

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_45a

    goto :goto_4a3

    .line 505
    :cond_45a
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_49e

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_46b

    goto :goto_49e

    .line 510
    :cond_46b
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportOCB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48b

    .line 511
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mIsTempVolteUser:Z

    if-eqz v0, :cond_489

    .line 512
    if-eqz v8, :cond_488

    .line 513
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v8, v9, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 515
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 517
    :cond_488
    return-void

    .line 519
    :cond_489
    const-string v3, "AI"

    .line 524
    :cond_48b
    :try_start_48b
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 525
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9, v5, v7}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;I)V
    :try_end_496
    .catch Lcom/android/ims/ImsException; {:try_start_48b .. :try_end_496} :catch_498

    .line 528
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto/16 :goto_5b2

    .line 526
    :catch_498
    move-exception v0

    .line 527
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 529
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto/16 :goto_5b2

    .line 506
    :cond_49e
    :goto_49e
    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 507
    goto/16 :goto_5b2

    .line 501
    :cond_4a3
    :goto_4a3
    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 502
    goto/16 :goto_5b2

    .line 403
    .end local v3    # "facility":Ljava/lang/String;
    .end local v6    # "password":Ljava/lang/String;
    .end local v7    # "serviceClass":I
    .end local v8    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_4a8
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 404
    .local v3, "action":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 405
    .local v6, "cfReason":I
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 406
    .local v15, "serviceClass":I
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 407
    .local v7, "number":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 408
    .restart local v16    # "timeSeconds":I
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroid/os/Message;

    .line 410
    .end local v0    # "resp":Landroid/os/Message;
    .local v12, "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_54b

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_4f2

    move/from16 v17, v3

    move-object v3, v12

    goto/16 :goto_54e

    .line 416
    :cond_4f2
    if-eqz v7, :cond_4fa

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_527

    .line 417
    :cond_4fa
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v14, :cond_527

    .line 418
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v8, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v8, :cond_527

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 419
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isSupportSaveCFNumber()Z

    move-result v0

    if-eqz v0, :cond_527

    .line 420
    if-eq v3, v14, :cond_514

    if-ne v3, v13, :cond_527

    .line 422
    :cond_514
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 423
    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCFPreviousDialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "getNumber":Ljava/lang/String;
    if-eqz v0, :cond_527

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_527

    .line 426
    move-object v7, v0

    move-object v14, v7

    goto :goto_528

    .line 435
    .end local v0    # "getNumber":Ljava/lang/String;
    :cond_527
    move-object v14, v7

    .end local v7    # "number":Ljava/lang/String;
    .local v14, "number":Ljava/lang/String;
    :goto_528
    :try_start_528
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v7

    .line 436
    .local v7, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getActionFromCFAction(I)I

    move-result v8

    .line 437
    invoke-direct {v1, v6}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v9
    :try_end_534
    .catch Lcom/android/ims/ImsException; {:try_start_528 .. :try_end_534} :catch_543

    .line 436
    move-object v10, v14

    move v11, v15

    move-object v13, v12

    .end local v12    # "resp":Landroid/os/Message;
    .local v13, "resp":Landroid/os/Message;
    move/from16 v12, v16

    move/from16 v17, v3

    move-object v3, v13

    .end local v13    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    .local v17, "action":I
    move-object v13, v5

    :try_start_53d
    invoke-interface/range {v7 .. v13}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_540
    .catch Lcom/android/ims/ImsException; {:try_start_53d .. :try_end_540} :catch_541

    .line 444
    .end local v7    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_552

    .line 442
    :catch_541
    move-exception v0

    goto :goto_547

    .end local v17    # "action":I
    .local v3, "action":I
    .restart local v12    # "resp":Landroid/os/Message;
    :catch_543
    move-exception v0

    move/from16 v17, v3

    move-object v3, v12

    .line 443
    .end local v12    # "resp":Landroid/os/Message;
    .local v0, "e":Lcom/android/ims/ImsException;
    .local v3, "resp":Landroid/os/Message;
    .restart local v17    # "action":I
    :goto_547
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 445
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_552

    .line 410
    .end local v14    # "number":Ljava/lang/String;
    .end local v17    # "action":I
    .local v3, "action":I
    .local v7, "number":Ljava/lang/String;
    .restart local v12    # "resp":Landroid/os/Message;
    :cond_54b
    move/from16 v17, v3

    move-object v3, v12

    .line 411
    .end local v12    # "resp":Landroid/os/Message;
    .local v3, "resp":Landroid/os/Message;
    .restart local v17    # "action":I
    :goto_54e
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 412
    nop

    .line 780
    .end local v6    # "cfReason":I
    .end local v7    # "number":Ljava/lang/String;
    .end local v15    # "serviceClass":I
    .end local v16    # "timeSeconds":I
    .end local v17    # "action":I
    :goto_552
    move-object v0, v3

    goto :goto_5b3

    .line 378
    .end local v3    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :pswitch_554
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 379
    .local v3, "cfReason":I
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 380
    .local v6, "serviceClass":I
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 381
    .restart local v7    # "number":Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    .line 383
    .end local v0    # "resp":Landroid/os/Message;
    .restart local v8    # "resp":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_5ae

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_585

    goto :goto_5ae

    .line 388
    :cond_585
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_5aa

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_596

    goto :goto_5aa

    .line 394
    :cond_596
    :try_start_596
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 395
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v10, v0

    check-cast v10, Lcom/mediatek/ims/MtkImsUt;

    .line 396
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v11

    .line 395
    invoke-virtual {v10, v11, v9, v6, v5}, Lcom/mediatek/ims/MtkImsUt;->queryCFForServiceClass(ILjava/lang/String;ILandroid/os/Message;)V
    :try_end_5a4
    .catch Lcom/android/ims/ImsException; {:try_start_596 .. :try_end_5a4} :catch_5a5

    .line 399
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_5b2

    .line 397
    :catch_5a5
    move-exception v0

    .line 398
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    .line 400
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_5b2

    .line 389
    :cond_5aa
    :goto_5aa
    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 390
    goto :goto_5b2

    .line 384
    :cond_5ae
    :goto_5ae
    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->sendRadioNotAvailable(Landroid/os/Message;)V

    .line 385
    nop

    .line 780
    .end local v3    # "cfReason":I
    .end local v6    # "serviceClass":I
    .end local v7    # "number":Ljava/lang/String;
    :goto_5b2
    move-object v0, v8

    .end local v8    # "resp":Landroid/os/Message;
    .local v0, "resp":Landroid/os/Message;
    :goto_5b3
    return-void

    :pswitch_data_5b4
    .packed-switch 0x1
        :pswitch_554
        :pswitch_4a8
        :pswitch_42d
        :pswitch_3c3
        :pswitch_379
        :pswitch_317
        :pswitch_2ec
        :pswitch_28e
        :pswitch_24d
        :pswitch_1ec
        :pswitch_1c1
        :pswitch_179
        :pswitch_14e
        :pswitch_103
        :pswitch_bd
        :pswitch_3a
    .end packed-switch
.end method

.method private sendRadioNotAvailable(Landroid/os/Message;)V
    .registers 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 183
    const-string v0, "MtkSSDecisonMaker"

    const-string v1, "sendRadioNotAvailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz p1, :cond_17

    .line 185
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 187
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 189
    :cond_17
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 154
    const-string v0, "MtkSSDecisonMaker"

    const-string v1, "dispose."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 156
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 157
    return-void
.end method

.method public getCLIP(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .line 1574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1578
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .line 1559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1560
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1563
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .line 1604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1605
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1608
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .line 1589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1593
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .registers 7
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1502
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 8
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1478
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .registers 6
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1545
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1547
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1521
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1527
    return-void
.end method

.method send(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1620
    .local p1, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1621
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1622
    return-void
.end method

.method sendGenericErrorResponse(Landroid/os/Message;)V
    .registers 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 174
    const-string v0, "MtkSSDecisonMaker"

    const-string v1, "sendErrorResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz p1, :cond_17

    .line 176
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 178
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    :cond_17
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .registers 6
    .param p1, "clipMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1582
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1586
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .registers 6
    .param p1, "clirMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1571
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .registers 6
    .param p1, "colpMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1612
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1616
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .registers 6
    .param p1, "colrMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1601
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 10
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 1483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1484
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1492
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .registers 11
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "response"    # Landroid/os/Message;

    .line 1506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1516
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1551
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1552
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1556
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 9
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1532
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1539
    return-void
.end method

.method public starThread()V
    .registers 3

    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SSRequestHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    .line 146
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 147
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 148
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;-><init>(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mSSRequestHandler:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;

    .line 149
    return-void
.end method

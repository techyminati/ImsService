.class public Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;
.super Lcom/mediatek/internal/telephony/MtkRadioExIndicationBaseV2;
.source "MtkRadioExIndicationV2.java"


# static fields
.field private static final ENG:Z

.field private static final TAG:Ljava/lang/String; = "MtkRadioInd"


# instance fields
.field private mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 132
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 139
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRadioExIndicationBaseV2;-><init>(Lcom/android/internal/telephony/RIL;)V

    .line 140
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 141
    return-void
.end method

.method private getSubId(I)I
    .registers 5
    .param p1, "phoneId"    # I

    .line 270
    const/4 v0, -0x1

    .line 271
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 272
    .local v1, "subIds":[I
    if-eqz v1, :cond_d

    array-length v2, v1

    if-lez v2, :cond_d

    .line 273
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 275
    :cond_d
    return v0
.end method


# virtual methods
.method public bipProactiveCommand(ILjava/lang/String;)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 1019
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1021
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    .line 1022
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbf1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1025
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mBipProCmdRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 1026
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mBipProCmdRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1028
    :cond_23
    return-void
.end method

.method public callAdditionalInfoInd(IILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .param p2, "ciType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 193
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 194
    .local v0, "notification":[Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 196
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 200
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc36

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallAdditionalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_42

    .line 205
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallAdditionalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 206
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 208
    :cond_42
    return-void
.end method

.method public cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "cfuStatus"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;

    .line 145
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 148
    .local v0, "notification":[I
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;->status:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 149
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;->lineId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 151
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbfe

    invoke-virtual {v1, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 153
    aget v1, v0, v2

    if-ne v1, v2, :cond_21

    .line 154
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCfuReturnValue:Ljava/lang/Object;

    .line 158
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallForwardingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_3c

    aget v1, v0, v2

    if-ne v1, v2, :cond_3c

    .line 160
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallForwardingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 161
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 163
    :cond_3c
    return-void
.end method

.method public cipherIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "cipherNotify"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;

    .line 212
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 214
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 215
    .local v0, "notification":[Ljava/lang/String;
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;->simCipherStatus:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 216
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;->sessionStatus:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 217
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;->csStatus:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 218
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;->psStatus:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 220
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbd0

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_36

    .line 223
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 224
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 227
    :cond_36
    return-void
.end method

.method public confSRVCC(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1117
    .local p2, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc00

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1121
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1122
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1123
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1125
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mEconfSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1126
    return-void
.end method

.method public crssIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "crssNotification"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;

    .line 249
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 251
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;-><init>()V

    .line 252
    .local v0, "notification":Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->code:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->code:I

    .line 253
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->type:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->type:I

    .line 254
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->alphaid:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->alphaid:Ljava/lang/String;

    .line 255
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->number:Ljava/lang/String;

    .line 256
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->cli_validity:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->cli_validity:I

    .line 258
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbd1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 260
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallRelatedSuppSvcRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_38

    .line 261
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallRelatedSuppSvcRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 262
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 264
    :cond_38
    return-void
.end method

.method public currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    .line 404
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 406
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 408
    .local v0, "ss":Landroid/telephony/SignalStrength;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc19

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 409
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSignalStrengthWithWcdmaEcioInd SignalStrength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSignalStrengthWithWcdmaEcioRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 412
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSignalStrengthWithWcdmaEcioRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 413
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 415
    :cond_3e
    return-void
.end method

.method public dedicatedBearerActivationInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;

    .line 1160
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1163
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc0a

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1166
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->convertDedicatedDataCallResultV2(Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    move-result-object v0

    .line 1168
    .local v0, "ret":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1171
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerActivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_2e

    .line 1172
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerActivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1175
    :cond_2e
    return-void
.end method

.method public dedicatedBearerDeactivationInd(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "cid"    # I

    .line 1196
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1199
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc0c

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1203
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dedicatedBearerDeactivationInd, cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerDeactivatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_39

    .line 1207
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerDeactivatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 1208
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1207
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1210
    :cond_39
    return-void
.end method

.method public dedicatedBearerModificationInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;

    .line 1178
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1181
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc0b

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->convertDedicatedDataCallResultV2(Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    move-result-object v0

    .line 1186
    .local v0, "ret":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1189
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerModifiedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_2e

    .line 1190
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerModifiedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1193
    :cond_2e
    return-void
.end method

.method public dsbpStateChanged(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "dsbpState"    # I

    .line 1274
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1276
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc2a

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1278
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dsbpStateChanged state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsbpStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_3d

    .line 1280
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsbpStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 1281
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1280
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1283
    :cond_3d
    return-void
.end method

.method public eMBMSAtInfoIndication(ILjava/lang/String;)V
    .registers 8
    .param p1, "indicationType"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 804
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, "ret":Ljava/lang/Object;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 807
    .local v1, "response":Ljava/lang/String;
    move-object v0, v1

    .line 809
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbef

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 812
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsAtInfoNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 814
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "Notify mEmbmsAtInfoNotificationRegistrant"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 816
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsAtInfoNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_39

    .line 820
    :cond_32
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "No mEmbmsAtInfoNotificationRegistrant exist"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 823
    :goto_39
    return-void
.end method

.method public eMBMSSessionStatusIndication(II)V
    .registers 8
    .param p1, "indicationType"    # I
    .param p2, "status"    # I

    .line 640
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 641
    const/4 v0, 0x0

    .line 642
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 643
    .local v1, "response":[I
    const/4 v2, 0x0

    aput p2, v1, v2

    .line 645
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbee

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 648
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsSessionStatusNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 650
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "Notify mEmbmsSessionStatusNotificationRegistrant"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 652
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsSessionStatusNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_39

    .line 656
    :cond_32
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "No mEmbmsSessionStatusNotificationRegistrant exist"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 660
    :goto_39
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.intent.action.EMBMS_SESSION_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "isActived"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 664
    return-void
.end method

.method public eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "indicationType"    # I
    .param p2, "eccListWithCard"    # Ljava/lang/String;
    .param p3, "eccListNoCard"    # Ljava/lang/String;

    .line 267
    return-void
.end method

.method public esnMeidChangeInd(ILjava/lang/String;)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "esnMeid"    # Ljava/lang/String;

    .line 982
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 984
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    .line 985
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbcf

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 989
    :cond_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCDMACardEsnMeidRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_24

    .line 990
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCDMACardEsnMeidRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_31

    .line 993
    :cond_24
    if-eqz v0, :cond_2d

    .line 994
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "Cache esnMeidChangeInd"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 996
    :cond_2d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object p2, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mEspOrMeid:Ljava/lang/Object;

    .line 998
    :goto_31
    return-void
.end method

.method public gmssRatChangedIndication(ILjava/util/ArrayList;)V
    .registers 9
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 890
    .local p2, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 893
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 894
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 893
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 896
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 898
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbbb

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 900
    move-object v2, v0

    check-cast v2, [I

    .line 901
    .local v2, "rat":[I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mGmssRatChangedRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v3, :cond_40

    .line 902
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mGmssRatChangedRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 904
    :cond_40
    return-void
.end method

.method public iccidChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .line 1413
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1416
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1417
    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1416
    const/16 v2, 0xc3f

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1420
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->cacheIccid(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccidRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 1422
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccidRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1424
    :cond_2c
    return-void
.end method

.method public incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "inCallNotify"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;

    .line 168
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 170
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 171
    .local v0, "notification":[Ljava/lang/String;
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->callId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 172
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->number:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 173
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->type:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 174
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->callMode:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 175
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->seqNo:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 176
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->redirectNumber:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 179
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mIncomingCallIndicationRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_40

    .line 182
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mIncomingCallIndicationRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 183
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 186
    :cond_40
    return-void
.end method

.method public mdChangedApnInd(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "apnClassType"    # I

    .line 970
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 972
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbcd

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 974
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mAttachApnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_27

    .line 975
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mAttachApnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 976
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 975
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 978
    :cond_27
    return-void
.end method

.method public meSmsStorageFullInd(I)V
    .registers 4
    .param p1, "indicationType"    # I

    .line 539
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 541
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbc3

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 543
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMeSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_1d

    .line 544
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMeSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 546
    :cond_1d
    return-void
.end method

.method public mobileDataUsageInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1380
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1382
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1383
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1384
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1383
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1387
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc3d

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1389
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mMobileDataUsageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_3b

    .line 1390
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mMobileDataUsageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1393
    :cond_3b
    return-void
.end method

.method public networkInfoInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1073
    .local p2, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1076
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbd6

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 1080
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1082
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_40

    .line 1083
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1085
    :cond_40
    return-void
.end method

.method public networkRejectCauseInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 335
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 336
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 338
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 340
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xc25

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 342
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkRejectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_41

    .line 343
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkRejectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 346
    :cond_41
    return-void
.end method

.method public newEtwsInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "etws"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;

    .line 520
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 522
    new-instance v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkEtwsNotification;-><init>()V

    .line 523
    .local v0, "response":Lcom/mediatek/internal/telephony/MtkEtwsNotification;
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->messageId:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->messageId:I

    .line 524
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->serialNumber:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->serialNumber:I

    .line 525
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->warningType:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->warningType:I

    .line 526
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->plmnId:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->plmnId:Ljava/lang/String;

    .line 527
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->securityInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->securityInfo:Ljava/lang/String;

    .line 529
    sget-boolean v1, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 532
    :cond_29
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mEtwsNotificationRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_3c

    .line 533
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mEtwsNotificationRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 536
    :cond_3c
    return-void
.end method

.method public oemHookRaw(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1218
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1220
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 1222
    .local v0, "response":[B
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1223
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1222
    const/16 v3, 0x404

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1226
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mUnsolOemHookRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_27

    .line 1227
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mUnsolOemHookRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1230
    :cond_27
    return-void
.end method

.method public onCardDetectedInd(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 499
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 501
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    .line 502
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc35

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 505
    :cond_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCardDetectedIndRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_28

    .line 506
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCardDetectedIndRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_36

    .line 510
    :cond_28
    if-eqz v0, :cond_31

    .line 511
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "Cache card detected event"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 513
    :cond_31
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsCardDetected:Z

    .line 515
    :goto_36
    return-void
.end method

.method public onCellularQualityChangedInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1343
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1345
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc3c

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1348
    :cond_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1349
    .local v0, "data":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 1350
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1349
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1354
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, 0x0

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_60

    .line 1371
    const/4 v1, 0x0

    .local v1, "CellularQualityType":I
    goto :goto_3e

    .line 1368
    .end local v1    # "CellularQualityType":I
    :pswitch_34
    const/4 v1, 0x7

    .line 1369
    .restart local v1    # "CellularQualityType":I
    goto :goto_3e

    .line 1365
    .end local v1    # "CellularQualityType":I
    :pswitch_36
    const/4 v1, 0x6

    .line 1366
    .restart local v1    # "CellularQualityType":I
    goto :goto_3e

    .line 1362
    .end local v1    # "CellularQualityType":I
    :pswitch_38
    const/4 v1, 0x2

    .line 1363
    .restart local v1    # "CellularQualityType":I
    goto :goto_3e

    .line 1359
    .end local v1    # "CellularQualityType":I
    :pswitch_3a
    const/4 v1, 0x5

    .line 1360
    .restart local v1    # "CellularQualityType":I
    goto :goto_3e

    .line 1356
    .end local v1    # "CellularQualityType":I
    :pswitch_3c
    const/4 v1, 0x0

    .line 1357
    .restart local v1    # "CellularQualityType":I
    nop

    .line 1375
    :goto_3e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_UNSOL_IWLAN_CELLULAR_QUALITY_CHANGED_IND type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1377
    return-void

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3a
        :pswitch_38
        :pswitch_36
        :pswitch_34
    .end packed-switch
.end method

.method public onDsdaChangedInd(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "mode"    # I

    .line 1286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1288
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc3b

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1290
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDsdaChangedInd: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1295
    const/4 v0, 0x1

    if-le p2, v0, :cond_3f

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vendor.radio.dsda.state"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    :cond_3f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsdaStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_56

    .line 1301
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsdaStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 1302
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1301
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1304
    :cond_56
    return-void
.end method

.method public onImeiLock(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 477
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 479
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbbf

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 481
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImeiLockRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 482
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImeiLockRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 485
    :cond_23
    return-void
.end method

.method public onImsiRefreshDone(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 488
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 490
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbc0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 492
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImsiRefreshDoneRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 493
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImsiRefreshDoneRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 496
    :cond_23
    return-void
.end method

.method public onMccMncChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 430
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc18

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMccMncRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_23

    .line 434
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMccMncRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 436
    :cond_23
    return-void
.end method

.method public onMdDataRetryCountReset(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 1089
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1091
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    .line 1092
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbf3

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1095
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMdDataRetryCountResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 1096
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMdDataRetryCountResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1099
    :cond_23
    return-void
.end method

.method public onNwLimitInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1396
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1398
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1399
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1400
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1399
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1403
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc3e

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1405
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNwLimitRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_3b

    .line 1406
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNwLimitRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1409
    :cond_3b
    return-void
.end method

.method public onPlmnDataInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;)V
    .registers 14
    .param p1, "indicationType"    # I
    .param p2, "plmnMvnoInfo"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;

    .line 1428
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1430
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->gsmPlmn:Ljava/lang/String;

    iget-object v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->cdmaPlmn:Ljava/lang/String;

    iget-object v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->gsmSpn:Ljava/lang/String;

    iget-object v5, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->cdmaSpn:Ljava/lang/String;

    iget-object v6, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->gsmImsi:Ljava/lang/String;

    iget-object v7, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->cdmaImsi:Ljava/lang/String;

    iget-object v8, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->gid1:Ljava/lang/String;

    iget-object v9, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->pnn:Ljava/lang/String;

    iget-object v10, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->impi:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    .local v0, "response":Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc40

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1438
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->notifyPlmnMvnoData(Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;)V

    .line 1439
    return-void
.end method

.method public onPseudoCellInfoInd(ILjava/util/ArrayList;)V
    .registers 14
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 594
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 596
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbc9

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 598
    :cond_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 599
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 600
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 604
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "persist.vendor.radio.apc.mode%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "property":Ljava/lang/String;
    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "propStr":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 607
    .local v5, "index":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_75

    .line 608
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 609
    .local v6, "subStr":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 610
    .local v7, "settings":[Ljava/lang/String;
    aget-object v8, v7, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 611
    .local v8, "mode":I
    aget-object v9, v7, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 612
    .local v9, "report":I
    if-ne v9, v1, :cond_66

    goto :goto_67

    :cond_66
    move v1, v4

    .line 613
    .local v1, "enable":Z
    :goto_67
    const/4 v4, 0x2

    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 614
    .local v4, "interval":I
    new-instance v10, Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-direct {v10, v8, v1, v4, v0}, Lcom/mediatek/internal/telephony/PseudoCellInfo;-><init>(IZI[I)V

    move-object v1, v10

    .line 615
    .end local v4    # "interval":I
    .end local v6    # "subStr":Ljava/lang/String;
    .end local v7    # "settings":[Ljava/lang/String;
    .end local v8    # "mode":I
    .end local v9    # "report":I
    .local v1, "cellInfo":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    goto :goto_7a

    .line 616
    .end local v1    # "cellInfo":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :cond_75
    new-instance v1, Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-direct {v1, v4, v4, v4, v0}, Lcom/mediatek/internal/telephony/PseudoCellInfo;-><init>(IZI[I)V

    .line 619
    .restart local v1    # "cellInfo":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :goto_7a
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkRIL;->mPseudoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v4, :cond_8d

    .line 620
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkRIL;->mPseudoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v1, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 624
    :cond_8d
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.mediatek.phone.ACTION_APC_INFO_NOTIFY"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    const-string v7, "phoneId"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 626
    const-string v6, "info"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 627
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 629
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Broadcast for APC info:cellInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/PseudoCellInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public onRemoveRestrictEutran(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 1103
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1105
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    .line 1106
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbf4

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1109
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mRemoveRestrictEutranRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 1110
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mRemoveRestrictEutranRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1113
    :cond_23
    return-void
.end method

.method public onRsuEvent(IILjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "eventId"    # I
    .param p3, "eventString"    # Ljava/lang/String;

    .line 1442
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1443
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RSU-SIMLOCK] onRsuEvent eventId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1445
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_2e

    .line 1446
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc38

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1449
    :cond_2e
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1450
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1452
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_47

    .line 1453
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1456
    :cond_47
    return-void
.end method

.method public onRsuSimLockEvent(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "eventId"    # I

    .line 781
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 782
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RSU-SIMLOCK] onRsuSimLockEvent eventId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 783
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_26

    .line 784
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc38

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 787
    :cond_26
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 788
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 790
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_3f

    .line 791
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 794
    :cond_3f
    return-void
.end method

.method public onSimHotSwapInd(IILjava/lang/String;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 676
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_27

    .line 677
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimHotSwapInd event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 680
    :cond_27
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_a6

    .line 719
    :pswitch_2b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "onSimHotSwapInd Invalid event!"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_a5

    .line 712
    :pswitch_34
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimCommonSlotNoChanged:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 713
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimCommonSlotNoChanged:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_a5

    .line 706
    :pswitch_47
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimTrayPlugIn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 707
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimTrayPlugIn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_a5

    .line 700
    :pswitch_5a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimMissing:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 701
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimMissing:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_a5

    .line 694
    :pswitch_6d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimRecovery:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 695
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimRecovery:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_a5

    .line 688
    :pswitch_80
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugOut:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 689
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugOut:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_a5

    .line 682
    :pswitch_93
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugIn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 683
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugIn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 722
    :cond_a5
    :goto_a5
    return-void

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_93
        :pswitch_80
        :pswitch_6d
        :pswitch_5a
        :pswitch_47
        :pswitch_2b
        :pswitch_34
    .end packed-switch
.end method

.method public onSimPowerChangedInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 732
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 734
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    .line 735
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc34

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 738
    :cond_10
    const/4 v0, 0x0

    .line 739
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 740
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 741
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 740
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 743
    .end local v2    # "i":I
    :cond_2d
    move-object v0, v1

    .line 745
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerInfo:Ljava/lang/Object;

    .line 746
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_49

    .line 747
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerChanged:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 749
    :cond_49
    return-void
.end method

.method public onStkMenuReset(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 1059
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1061
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    .line 1062
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbff

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1065
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mStkSetupMenuResetRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 1066
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mStkSetupMenuResetRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1069
    :cond_23
    return-void
.end method

.method public onTxPowerIndication(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1238
    .local p2, "txPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1239
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1240
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1241
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1240
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1244
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_34

    .line 1245
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1248
    :cond_34
    return-void
.end method

.method public onTxPowerStatusIndication(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1256
    .local p2, "txPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1257
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1258
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1259
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1258
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1262
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerStatusRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_34

    .line 1263
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerStatusRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1266
    :cond_34
    return-void
.end method

.method public onVirtualSimOff(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 452
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 454
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbbe

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 456
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_27

    .line 457
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 458
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 457
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 460
    :cond_27
    return-void
.end method

.method public onVirtualSimOn(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 441
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 443
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbbd

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 445
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_27

    .line 446
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 447
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 446
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 449
    :cond_27
    return-void
.end method

.method public onVirtualSimStatusChanged(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 463
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 465
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc39

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 467
    :cond_10
    const/4 v0, 0x0

    if-nez p2, :cond_2a

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_2a

    .line 468
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    .line 469
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 468
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_43

    .line 470
    :cond_2a
    const/4 v1, 0x1

    if-ne p2, v1, :cond_43

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_43

    .line 471
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    .line 472
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 471
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 474
    :cond_43
    :goto_43
    return-void
.end method

.method public onVsimEventIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;)V
    .registers 10
    .param p1, "indicationType"    # I
    .param p2, "event"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;

    .line 1130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->dataLength:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc02

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1138
    iget v0, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->dataLength:I

    if-lez v0, :cond_2f

    iget v0, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->dataLength:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 1140
    .local v0, "length":I
    :goto_30
    new-instance v1, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->transactionId:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->eventId:I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 1142
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    shl-int/2addr v5, v6

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 1143
    .local v1, "indicationEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    if-lez v0, :cond_55

    .line 1144
    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->dataLength:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1145
    iget-object v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->data:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putBytes([B)I

    .line 1148
    :cond_55
    sget-boolean v3, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1149
    invoke-virtual {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1148
    invoke-virtual {v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1151
    :cond_62
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mVsimIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v2, :cond_75

    .line 1152
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mVsimIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1155
    :cond_75
    return-void
.end method

.method public pcoDataAfterAttached(ILvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;)V
    .registers 10
    .param p1, "indicationType"    # I
    .param p2, "pco"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;

    .line 1042
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1044
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/PcoDataAfterAttached;

    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->cid:I

    iget-object v3, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->apnName:Ljava/lang/String;

    iget-object v4, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->bearerProto:Ljava/lang/String;

    iget v5, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->pcoId:I

    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->contents:Ljava/util/ArrayList;

    .line 1048
    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/dataconnection/PcoDataAfterAttached;-><init>(ILjava/lang/String;Ljava/lang/String;I[B)V

    .line 1050
    .local v0, "response":Lcom/mediatek/internal/telephony/dataconnection/PcoDataAfterAttached;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbed

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1052
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mPcoDataAfterAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1054
    return-void
.end method

.method public phbReadyNotification(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "isPhbReady"    # I

    .line 1001
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1003
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1004
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1007
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phbReadyNotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbd4

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 1011
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mPhbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_36

    .line 1012
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mPhbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1015
    :cond_36
    return-void
.end method

.method public plmnChangedIndication(ILjava/util/ArrayList;)V
    .registers 9
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 832
    .local p2, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 833
    const/4 v0, 0x0

    .line 834
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 835
    .local v1, "response":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 836
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 835
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 838
    .end local v2    # "i":I
    :cond_1e
    move-object v0, v1

    .line 840
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 842
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 843
    :try_start_2b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnChangeNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v3

    if-lez v3, :cond_4a

    .line 845
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v4, "ECOPS,notify mPlmnChangeNotificationRegistrant"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 847
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnChangeNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_4e

    .line 850
    :cond_4a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mEcopsReturnValue:Ljava/lang/Object;

    .line 852
    :goto_4e
    monitor-exit v2

    .line 853
    return-void

    .line 852
    :catchall_50
    move-exception v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_2b .. :try_end_52} :catchall_50

    throw v3
.end method

.method public qualifiedNetworkTypesChangedInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1307
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1309
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1310
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1311
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1310
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1315
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc3a

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1319
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mQualifiedNetworkTypesRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_3b

    .line 1320
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mQualifiedNetworkTypesRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1323
    :cond_3b
    return-void
.end method

.method public registrationSuspendedIndication(ILjava/util/ArrayList;)V
    .registers 9
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 861
    .local p2, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 862
    const/4 v0, 0x0

    .line 863
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 864
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 865
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 864
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 867
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 869
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbb9

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 871
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 872
    :try_start_2f
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mRegistrationSuspendedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v3, :cond_4a

    .line 874
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v4, "EMSR, notify mRegistrationSuspendedRegistrant"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 876
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mRegistrationSuspendedRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_4e

    .line 879
    :cond_4a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mEmsrReturnValue:Ljava/lang/Object;

    .line 881
    :goto_4e
    monitor-exit v2

    .line 882
    return-void

    .line 881
    :catchall_50
    move-exception v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_50

    throw v3
.end method

.method public resetAttachApnInd(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 953
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 956
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbcc

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 958
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mResetAttachApnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 959
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mResetAttachApnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 962
    :cond_23
    return-void
.end method

.method public responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 283
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "[UNSL]< UNSOL_RESPONSE_CS_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 287
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 286
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 289
    :cond_2d
    return-void
.end method

.method public responseFemtocellInfo(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 384
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 388
    .local v1, "response":[Ljava/lang/String;
    move-object v0, v1

    .line 391
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbd5

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 394
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mFemtoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_31

    .line 395
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mFemtoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 397
    :cond_31
    return-void
.end method

.method public responseInvalidSimInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 369
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 370
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 371
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc8

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 373
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mInvalidSimInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 374
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mInvalidSimInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 376
    :cond_2f
    return-void
.end method

.method public responseLteNetworkInfo(II)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "info"    # I

    .line 418
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UNSL]< RIL_UNSOL_LTE_NETWORK_INFO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public responseModulationInfoInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 350
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 355
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 356
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 358
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 360
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbcb

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 362
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mModulationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_41

    .line 363
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mModulationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 365
    :cond_41
    return-void
.end method

.method public responseNetworkEventInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 316
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 317
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 319
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 321
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbca

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 323
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_41

    .line 324
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 327
    :cond_41
    return-void
.end method

.method public responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "[UNSL]< UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 299
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 300
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 302
    .end local v2    # "i":I
    :cond_29
    move-object v0, v1

    .line 303
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mPsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_41

    .line 304
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mPsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 307
    :cond_41
    return-void
.end method

.method public smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 753
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 755
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    .line 756
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc2b

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 760
    :cond_10
    const/4 v0, 0x0

    .line 761
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 762
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 763
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 762
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 765
    .end local v2    # "i":I
    :cond_2d
    move-object v0, v1

    .line 767
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfo:Ljava/lang/Object;

    .line 768
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_49

    .line 769
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 772
    :cond_49
    return-void
.end method

.method public smsInfoExtInd(ILjava/lang/String;)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 566
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc41

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsInfoExtRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_23

    .line 570
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsInfoExtRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 572
    :cond_23
    return-void
.end method

.method public smsReadyInd(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 549
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 551
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc4

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 553
    :cond_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_22

    .line 554
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_30

    .line 557
    :cond_22
    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "Cache sms ready event"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 558
    :cond_2b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsSmsReady:Z

    .line 560
    :goto_30
    return-void
.end method

.method public suppSvcNotifyEx(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "suppSvcNotification"    # Landroid/hardware/radio/V1_0/SuppSvcNotification;

    .line 231
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 233
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;-><init>()V

    .line 234
    .local v0, "notification":Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;
    iget-boolean v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->isMT:Z

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->notificationType:I

    .line 235
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->code:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->code:I

    .line 236
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->index:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->index:I

    .line 237
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->type:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->type:I

    .line 238
    iget-object v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->number:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbd2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSsnExRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_38

    .line 244
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSsnExRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 246
    :cond_38
    return-void
.end method

.method public triggerOtaSP(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 1032
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1033
    .local v0, "testTriggerOtasp":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "AT+CDV=*22899"

    aput-object v2, v0, v1

    .line 1034
    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 1035
    const/4 v1, 0x2

    const-string v2, "DESTRILD:C2K"

    aput-object v2, v0, v1

    .line 1036
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1037
    return-void
.end method

.method public worldModeChangedIndication(ILjava/util/ArrayList;)V
    .registers 11
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 912
    .local p2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 915
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 916
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 915
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 918
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 920
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbce

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 922
    const/4 v2, 0x1

    .line 923
    .local v2, "state":I
    const/4 v3, 0x0

    .line 924
    .local v3, "retvalue":Z
    nop

    .line 925
    move-object v4, v0

    check-cast v4, [I

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 927
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3c

    .line 928
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->resetSwitchingState(I)Z

    move-result v3

    .line 929
    const/4 v2, 0x1

    goto :goto_48

    .line 930
    :cond_3c
    if-nez v2, :cond_44

    .line 931
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateSwitchingState(Z)Z

    move-result v3

    goto :goto_48

    .line 933
    :cond_44
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateSwitchingState(Z)Z

    move-result v3

    .line 935
    :goto_48
    if-nez v3, :cond_4b

    .line 936
    return-void

    .line 939
    :cond_4b
    new-instance v4, Landroid/content/Intent;

    const-string v5, "mediatek.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 940
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "worldModeState"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 941
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 943
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndicationV2;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcast for WorldModeChanged: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 946
    .end local v4    # "intent":Landroid/content/Intent;
    return-void
.end method
